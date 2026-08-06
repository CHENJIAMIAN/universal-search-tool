# 🔐 Universal Search Tool - Secure Edition

> [中文](SECURE_INSTALL.md)

## ✅ Resolved security issue

**Previous issue**: ❌ Your private API key was exposed in the code.
**Current solution**: ✅ Every user must use their own API key.

## 🛡️ Security features

- ✅ **API key privacy**: No API key is embedded in the package.
- ✅ **Independent user configuration**: Each user supplies a private key.
- ✅ **Quota ownership**: The 100 free requests belong entirely to the user.
- ✅ **Local storage**: The API key is stored only on the user's device.

## 📦 Installation

```bash
# 方法1: 从文件安装 (推荐)
pip install universal_search_tool-1.0.0-py3-none-any.whl

# 方法2: 开发模式安装
cd universal_search_tool
pip install -e .
```

## 🔑 Configuration

### 1. Obtain an API key
```bash
# 打开网站注册获取
am start -a android.intent.action.VIEW -d "https://serpapi.com/"
```

### 2. Configure the API key (choose one)

**Option A - environment variable**:
```bash
export SERPAPI_API_KEY="your_personal_api_key_here"
```

**Option B - configuration file**:
```bash
echo '{"api_key": "your_personal_api_key_here"}' > ~/.serpapi_config.json
```

### 3. Verify the configuration
```bash
universal-search --check-config
```

### 4. Start searching
```bash
universal-search "Python教程"
universal-search "AI工具" --engine bing --count 5
```

## 🎯 Security comparison

| Area | Previous release | Secure edition |
|------|------------------|----------------|
| API key | ❌ Exposed in code | ✅ Private to the user |
| Quota ownership | ❌ Used by others | ✅ Owned by the user |
| Privacy | ❌ Not protected | ✅ Stored locally |
| Distribution safety | ❌ Unsafe | ✅ Safe to share |

## 🔍 Usage

```bash
# 查看设置指南
universal-search --setup-guide

# 检查配置状态
universal-search --check-config

# 查看帮助
universal-search --help

# 搜索示例
universal-search "Django rest framework"
universal-search "Vue.js教程" --engine duckduckgo --count 3
```

## 📁 Files you can share

You can now safely share these files with others:
- `universal_search_tool-1.0.0-py3-none-any.whl` - **secure installation package**
- `universal_search_tool-1.0.0.tar.gz` - source package

Users obtain their own API keys, so your privacy remains protected.

---

🎊 **This is now a genuinely secure and shareable search tool.**
