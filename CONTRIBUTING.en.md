# Contributing Guide

> [中文](CONTRIBUTING.md)

Thank you for your interest in Universal Search Tool. We welcome every form of contribution.

## 🤝 How to contribute

### Report an issue
- Use [GitHub Issues](https://github.com/your-username/universal-search-tool/issues) to report bugs.
- Provide detailed reproduction steps.
- Include environment information such as the operating system and Python version.

### Request a feature
- Describe the proposed feature in an Issue.
- Explain its use case and value.
- Discuss its implementation feasibility.

### Submit code
1. Fork this repository.
2. Create a feature branch: `git checkout -b feature/new-feature`.
3. Make your changes.
4. Follow the code style.
5. Commit the changes: `git commit -m 'Add new feature'`.
6. Push the branch: `git push origin feature/new-feature`.
7. Open a Pull Request.

## 🛠️ Development environment setup

### Local development
```bash
git clone https://github.com/your-username/universal-search-tool.git
cd universal-search-tool
pip install -e .
```

### Run tests
```bash
python -m pytest
```

### Format code
```bash
black universal_search/
```

## 📋 Code conventions

- Use Black to format code.
- Follow PEP 8.
- Add type hints.
- Write docstrings.
- Keep the project secure; never hard-code API keys.

## 🔒 Security considerations

Security is particularly important in this project:
- Do not hard-code API keys anywhere in the code.
- Handle user configuration securely.
- Use test API keys while testing.
- Follow the principle of least privilege.

## 📝 Commit conventions

Use clear, descriptive commit messages:
```
type: short description

detailed description (optional)
```

Available types:
- `feat`: new feature
- `fix`: bug fix
- `docs`: documentation update
- `style`: code formatting
- `refactor`: refactoring
- `test`: tests
- `chore`: build process or tooling changes

## 🚀 Release process

1. Update the version number.
2. Update CHANGELOG.md.
3. Create a Git tag.
4. GitHub Actions automatically publishes to PyPI.

## 📞 Contact

- Use GitHub Issues.
- Open a Discussion.
- Email (optional).

---

Thank you again for contributing! 🎉
