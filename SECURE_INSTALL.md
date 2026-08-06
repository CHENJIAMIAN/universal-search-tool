# 🔐 Universal Search Tool - 安全版本

> [English](SECURE_INSTALL.en.md)

## ✅ 已修复安全性问题

**原来的问题**: ❌ 你的私密 API key 暴露在代码中
**现在的解决**: ✅ 每个用户必须使用自己的 API key

## 🛡️ 安全特性

- ✅ **API Key 隐私保护**: 不再内置任何 API key
- ✅ **用户独立配置**: 每个用户使用自己的私密 key
- ✅ **配额归属**: 100次免费配额完全归用户自己
- ✅ **本地存储**: API key 只存储在用户设备上

## 📦 安装方式

```bash
# 方法1: 从文件安装 (推荐)
pip install universal_search_tool-1.0.0-py3-none-any.whl

# 方法2: 开发模式安装
cd universal_search_tool
pip install -e .
```

## 🔑 配置步骤

### 1. 获取 API Key
```bash
# 打开网站注册获取
am start -a android.intent.action.VIEW -d "https://serpapi.com/"
```

### 2. 配置 API Key (二选一)

**方法A - 环境变量**:
```bash
export SERPAPI_API_KEY="your_personal_api_key_here"
```

**方法B - 配置文件**:
```bash
echo '{"api_key": "your_personal_api_key_here"}' > ~/.serpapi_config.json
```

### 3. 验证配置
```bash
universal-search --check-config
```

### 4. 开始搜索
```bash
universal-search "Python教程"
universal-search "AI工具" --engine bing --count 5
```

## 🎯 安全优势对比

| 方面 | 之前版本 | 安全版本 |
|------|----------|----------|
| API Key | ❌ 硬编码暴露 | ✅ 用户私密 |
| 配额归属 | ❌ 被他人消耗 | ✅ 自己所有 |
| 隐私保护 | ❌ 无保护 | ✅ 本地存储 |
| 分发安全 | ❌ 不安全 | ✅ 可安全分享 |

## 🔍 使用指南

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

## 📁 分享文件

现在你可以安全分享这些文件给其他人：
- `universal_search_tool-1.0.0-py3-none-any.whl` - **安全安装包**
- `universal_search_tool-1.0.0.tar.gz` - 源码包

用户需要自己获取 API key，你的隐私得到保护！

---

🎊 **现在这是一个真正安全、可分享的搜索工具了！**
