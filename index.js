'use strict';
let cheerio = require('cheerio');
let fs = require('fs');
let http = require('http');
let request = require('request');
let mysql = require('mysql');
let minimist = require('minimist')(process.argv.slice(2));

let url = minimist.url || '';

const connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: 'root',
	database: 'nodejs',
	charset : 'utf8'
});

function insert (data) {
	connection.connect();
	connection.query('INSERT INTO article SET ?', {
		title: data.title,
		keywords: data.keywords,
		description: data.description,
		content: data.content.toString().replace('\n', ''),
		updatetime: Date.now()
	}, (error, results, fields) => {
		if (error) throw error;
	});
	connection.end();
}

function parseHtml (html) {
	let $ = cheerio.load(html, {
		decodeEntities: false
	});

	$('.news-main img').each((i,v) => {
		let src = $(v).attr('src');
		downloadImg(src);
	})
	return {
		title: $('title').text(),
		keywords: $('meta[name="keywords"]').attr('content'),
		description: $('meta[name="description"]').attr('content'),
		content: $('.news-main').html()
	};
}

function downloadImg (src) {
	let filename = Date.now() + src.substr(-4, 4);
	console.log(`正在下载：${src}`);
	request.head(src, (err, res, body) => {
		request(src).pipe(fs.createWriteStream(`./images/${filename}`));
	});
	console.log('下载完毕!');
}

if (url && /(http|ftp|https):\/\/[\w\-_]+(\.[\w\-_]+)+([\w\-\.,@?^=%&:/~\+#]*[\w\-\@?^=%&/~\+#])?/.test(url)) {
	http.get(url, (res) => {
		let html = '';
		res.on('data', (data) => {
			html+=data
		})
		res.on('end', () => {
			var pageData = parseHtml(html);
			insert(pageData);
			fs.writeFile(`./data/${pageData.title}.json`, JSON.stringify(pageData), 'utf8', () => {
				console.log(`页面抓取完毕, 保存至 ${pageData.title}.json`);
			});
		})
	});
} else {
	console.log('你输入的页面地址不合法, 请使用 node index.js --url http://www.zuocai.tv/caipu/80524.html');
}