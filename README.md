# node-spider
nodejs简单爬虫。抓取页面数据并且保存到mysql数据库、保存页面图片到本地文件夹。

本实例仅支持抓取做菜网：http://www.zuocai.tv 的文章页数据。（仅供学习参考）

# 安装
`npm install`

# 使用
`node index.js --url your url here`

## 示例
`node index.js --url http://www.zuocai.tv/caipu/74827.html`

# 功能点
- 抓取完毕后会将图片保存到 images文件夹中
- 将抓取数据转成json文件写入data文件夹中
- 将抓取数据写入mysql数据库
