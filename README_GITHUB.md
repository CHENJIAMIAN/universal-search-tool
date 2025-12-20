# 🔍 Universal Search Tool

[![PyPI Version](https://badge.fury.io/py/universal-search-tool.svg)](https://pypi.org/project/universal-search-tool/)
[![Python Versions](https://img.shields.io/pypi/pyversions/universal-search-tool.svg)](https://pypi.org/project/universal-search-tool/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)

🚀 **安全、零配置的命令行搜索工具** - 支持多个搜索引擎，绕过搜索限制

## ✨ 特性

- 🔐 **安全配置**: 用户使用自己的私密 API key
- 🔍 **多引擎支持**: Google、Bing、DuckDuckGo
- ⚡ **高质量结果**: 绕过搜索限制，获得专业级结果
- 🌍 **跨平台**: Windows、macOS、Linux、Android(Termux)
- 📦 **易安装**: `pip install universal-search-tool`

## 🚀 快速开始

### 安装
```bash
pip install universal-search-tool
```

### 配置
```bash
# 1. 访问 https://serpapi.com/ 注册获取免费 API Key
# 2. 配置环境变量
export SERPAPI_API_KEY="your_api_key_here"
```

### 使用
```bash
# 基本搜索
universal-search "Python教程"

# 多引擎搜索
universal-search "AI工具" --engine bing --count 5
universal-search "隐私工具" --engine duckduckgo

# 查看帮助
universal-search --help
```

## 📖 更多文档

📋 [完整文档 (中文)](README.md) | 🛠️ [开发指南](PUBLISH_GUIDE.md) | 🔒 [安全说明](SECURE_INSTALL.md)

## 🤝 贡献

欢迎贡献！请查看 [贡献指南](CONTRIBUTING.md)（需要创建）

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 打开 Pull Request

## 📊 部署

本项目使用 GitHub Actions 自动部署到 PyPI。

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 了解详情。

## 🔗 相关链接

- [📦 PyPI](https://pypi.org/project/universal-search-tool/)
- [🔧 SerpApi](https://serpapi.com/)
- [📖 文档](https://github.com/your-username/universal-search-tool#readme)

---

⭐ 如果这个工具对你有帮助，请给个 Star！