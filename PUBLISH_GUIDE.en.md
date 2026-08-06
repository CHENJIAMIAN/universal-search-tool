# 🚀 PyPI Publishing Guide

> [中文](PUBLISH_GUIDE.md)

## 📋 Publishing steps

### 1. Prepare a PyPI account

```bash
# 访问 PyPI 注册
am start -a android.intent.action.VIEW -d "https://pypi.org/account/register/"
```

### 2. Install publishing tools

```bash
pip install twine
```

### 3. Upload to TestPyPI first (recommended)

```bash
# 上传到测试仓库
python -m twine upload --repository testpypi dist/*

# 测试安装
pip install --index-url https://test.pypi.org/simple/ universal-search-tool
```

### 4. Upload to PyPI

```bash
# 上传到官方 PyPI
python -m twine upload dist/*
```

### 5. Verify the release

```bash
# 清理并重新安装
pip uninstall universal-search-tool -y
pip install universal-search-tool

# 测试安装
universal-search --version
universal-search --help
```

## 🎯 After publishing, anyone can install it like this

### Basic installation
```bash
pip install universal-search-tool
```

### Install a specific version
```bash
pip install universal-search-tool==1.0.0
```

### Pre-release version (when available)
```bash
pip install universal-search-tool --pre
```

## 📝 User-facing usage guide

### Install
```bash
pip install universal-search-tool
```

### Configure
```bash
# 1. 注册获取 API Key: https://serpapi.com/
# 2. 配置环境变量
export SERPAPI_API_KEY="your_personal_api_key"
```

### Use
```bash
# 搜索
universal-search "Python教程"

# 不同引擎
universal-search "AI工具" --engine bing --count 5

# 查看帮助
universal-search --help
```

## ✅ Release checklist

- [ ] PyPI account registered
- [ ] The `universal-search-tool` package name is available
- [ ] Version number is correct (current: 1.0.0)
- [ ] Dependencies are correct (google-search-results>=2.4.2)
- [ ] Entry points are configured (universal-search, usearch)
- [ ] README.md and LICENSE are included
- [ ] Local tests pass
- [ ] TestPyPI validation passes (recommended)
- [ ] Upload to the official PyPI succeeds

## 🔧 Command aliases

After installation, users can use any of these commands:
- `universal-search` (primary command)
- `universal-search-cli` (full command)
- `usearch` (short command)

## 📊 Expected result

After a successful release, Python users anywhere can run:
```bash
# 全世界任何地方
pip install universal-search-tool
universal-search "任何搜索内容"
```

**This makes the tool truly global.** 🌍
