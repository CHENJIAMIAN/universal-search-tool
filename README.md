[English](./README.en.md)

<!-- codex-github-rules:bilingual-summary -->
> **中文简介**：支持 Google、Bing 和 DuckDuckGo 的安全研究命令行搜索工具
>
> **English summary**: A security-focused command-line search tool supporting Google, Bing, and DuckDuckGo

---
# 🔍 Universal Search Tool - 零配置通用搜索工具

[![Python Version](https://img.shields.io/badge/python-3.7+-blue.svg)](https://python.org)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Build Status](https://img.shields.io/badge/status-stable-brightgreen.svg)]()

🚀 **安全、零配置、开箱即用的命令行搜索工具** - 支持多个搜索引擎，绕过搜索限制

## ✨ 特色功能

- ✅ **安全配置**: 用户使用自己的私密 API key，保护隐私
- ✅ **多引擎支持**: Google、Bing、DuckDuckGo 搜索
- ✅ **高质量结果**: 绕过搜索限制，获得专业级结果
- ✅ **简单易用**: 一行命令即可搜索任何内容
- ✅ **跨平台**: 支持 Windows、macOS、Linux、Android(Termux)

## 🔧 安装

### 方法1: 通过 pip 安装 (推荐)

```bash
pip install universal-search-tool
```

### 方法2: 开发模式安装

```bash
git clone https://github.com/your-username/universal-search-tool.git
cd universal-search-tool
pip install -e .
```

## 🚀 快速开始

安装完成后，直接使用：

```bash
# 基本搜索
universal-search "Python教程"

# 指定搜索引擎
universal-search "AI工具" --engine bing --count 5
universal-search "React框架" --engine duckduckgo --count 3

# 站点限制搜索
universal-search "开源项目 site:github.com"
universal-search "API文档 site:readthedocs.io"
```

## 📋 使用示例

```bash
# 通用搜索
universal-search "Django REST framework"

# Bing 搜索不同结果
universal-search "机器学习课程" --engine bing

# DuckDuckGo 注重隐私
universal-search "隐私工具" --engine duckduckgo

# 获取更多结果
universal-search "JavaScript库" --count 10

# 查看帮助
universal-search --help
universal-search --examples
```

## 🏗️ 命令行选项

```
universal-search [OPTIONS] [QUERY]

OPTIONS:
  -e, --engine {google,bing,duckduckgo}  搜索引擎 (默认: google)
  -c, --count INT                        结果数量 (默认: 5)
  --examples                             显示使用示例
  --version                              显示版本信息
  --help                                 显示帮助信息
```

## 🔌 作为 Python 库使用

也可以在 Python 代码中使用：

```python
from universal_search import UniversalSearch

# 创建搜索实例
search = UniversalSearch()

# 执行搜索
results = search.search("Python教程", engine="google", count=5)

# 打印结果
search.print_results("Python教程", engine="bing", count=3)

# 获取原始结果数据
for result in results:
    print(f"标题: {result['title']}")
    print(f"链接: {result['url']}")
    print(f"描述: {result['snippet']}")
```

## 🌟 高级用法

### 自定义 API Key

如果你有自己的 SerpApi API key：

```python
# 使用自定义 API key
search = UniversalSearch(api_key="your_api_key_here")
```

### 批量搜索

```python
queries = ["Python教程", "Django框架", "React学习"]
for query in queries:
    search.print_results(query, engine="google", count=3)
    print("---" * 20)
```

## 📊 搜索引擎对比

| 引擎 | 搜索质量 | 隐私保护 | 结果差异化 |
|------|----------|----------|------------|
| Google | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐ |
| Bing | ⭐⭐⭐⭐ | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| DuckDuckGo | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ |

## 🔧 技术栈

- **后端**: Python 3.7+
- **搜索引擎**: SerpApi API
- **依赖**: google-search-results
- **打包**: setuptools, wheel

## 📝 更新日志

### v1.0.0 (2024-12-20)
- ✨ 首次发布
- ✅ 支持 Google、Bing、DuckDuckGo 搜索
- ✅ 零配置，内置 API key
- ✅ 命令行和 Python 库双接口
- ✅ 跨平台支持

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

```bash
# 开发环境设置
git clone https://github.com/your-username/universal-search-tool.git
cd universal-search-tool
pip install -e .

# 运行测试
python -m pytest tests/
```

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情

## 🔗 相关链接

- [SerpApi](https://serpapi.com/) - 搜索 API 服务
- [GitHub Repository](https://github.com/your-username/universal-search-tool)
- [Bug Reports](https://github.com/your-username/universal-search-tool/issues)

---

🎊 **使用愉快！** 如果这个工具对你有帮助，请给个 ⭐ Star！
