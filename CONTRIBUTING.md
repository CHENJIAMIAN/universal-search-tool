# 贡献指南

> [English](CONTRIBUTING.en.md)

感谢您对 Universal Search Tool 的关注！我们欢迎各种形式的贡献。

## 🤝 如何贡献

### 报告问题
- 使用 [GitHub Issues](https://github.com/your-username/universal-search-tool/issues) 报告 bug
- 提供详细的重现步骤
- 包含环境信息（操作系统、Python 版本等）

### 提出功能请求
- 在 Issues 中描述新功能
- 说明使用场景和价值
- 讨论实现可能性

### 提交代码
1. Fork 本仓库
2. 创建特性分支：`git checkout -b feature/new-feature`
3. 进行更改
4. 遵循代码风格
5. 提交更改：`git commit -m 'Add new feature'`
6. 推送：`git push origin feature/new-feature`
7. 创建 Pull Request

## 🛠️ 开发环境设置

### 本地开发
```bash
git clone https://github.com/your-username/universal-search-tool.git
cd universal-search-tool
pip install -e .
```

### 运行测试
```bash
python -m pytest
```

### 代码格式化
```bash
black universal_search/
```

## 📋 代码规范

- 使用 Black 进行代码格式化
- 遵循 PEP 8
- 添加类型提示
- 编写文档字符串
- 保持安全性（不要硬编码 API keys）

## 🔒 安全考虑

本项目特别重视安全性：
- 不要在代码中硬编码任何 API keys
- 确保用户配置信息安全处理
- 测试时使用测试 API keys
- 遵循最小权限原则

## 📝 提交规范

使用清晰、描述性的提交信息：
```
类型: 简短描述

详细描述（可选）
```

类型包括：
- `feat`: 新功能
- `fix`: bug 修复
- `docs`: 文档更新
- `style`: 代码格式化
- `refactor`: 重构
- `test`: 测试
- `chore`: 构建过程或辅助工具的变动

## 🚀 发布流程

1. 更新版本号
2. 更新 CHANGELOG.md
3. 创建 Git tag
4. GitHub Actions 自动发布到 PyPI

## 📞 联系方式

- 使用 GitHub Issues
- 创建 Discussion
- 邮件（可选）

---

再次感谢您的贡献！🎉
