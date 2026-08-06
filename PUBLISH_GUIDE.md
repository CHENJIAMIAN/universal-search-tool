# 🚀 PyPI 发布指南

> [English](PUBLISH_GUIDE.en.md)

## 📋 发布步骤

### 1. 准备 PyPI 账户

```bash
# 访问 PyPI 注册
am start -a android.intent.action.VIEW -d "https://pypi.org/account/register/"
```

### 2. 安装发布工具

```bash
pip install twine
```

### 3. 测试上传到 TestPyPI (推荐先测试)

```bash
# 上传到测试仓库
python -m twine upload --repository testpypi dist/*

# 测试安装
pip install --index-url https://test.pypi.org/simple/ universal-search-tool
```

### 4. 正式上传到 PyPI

```bash
# 上传到官方 PyPI
python -m twine upload dist/*
```

### 5. 验证发布

```bash
# 清理并重新安装
pip uninstall universal-search-tool -y
pip install universal-search-tool

# 测试安装
universal-search --version
universal-search --help
```

## 🎯 发布后，任何人都能这样安装：

### 基本安装
```bash
pip install universal-search-tool
```

### 指定版本安装
```bash
pip install universal-search-tool==1.0.0
```

### 开发版本（如果有）
```bash
pip install universal-search-tool --pre
```

## 📝 使用教程（发布给用户的）

### 安装
```bash
pip install universal-search-tool
```

### 配置
```bash
# 1. 注册获取 API Key: https://serpapi.com/
# 2. 配置环境变量
export SERPAPI_API_KEY="your_personal_api_key"
```

### 使用
```bash
# 搜索
universal-search "Python教程"

# 不同引擎
universal-search "AI工具" --engine bing --count 5

# 查看帮助
universal-search --help
```

## ✅ 发布检查清单

- [ ] PyPI 账户已注册
- [ ] 包名 `universal-search-tool` 未被占用
- [ ] 版本号正确 (当前: 1.0.0)
- [ ] 依赖关系正确 (google-search-results>=2.4.2)
- [ ] 入口点设置正确 (universal-search, usearch)
- [ ] README.md 和 LICENSE 已包含
- [ ] 本地测试通过
- [ ] TestPyPI 测试通过 (推荐)
- [ ] 官方 PyPI 上传成功

## 🔧 命令别名

安装后，用户可以使用以下任一命令：
- `universal-search` (主命令)
- `universal-search-cli` (完整命令)
- `usearch` (简化命令)

## 📊 预期效果

发布成功后，任何地方的 Python 用户都能：
```bash
# 全世界任何地方
pip install universal-search-tool
universal-search "任何搜索内容"
```

**这将让工具真正全球化！** 🌍
