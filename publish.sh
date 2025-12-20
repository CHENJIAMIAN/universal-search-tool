#!/bin/bash
# 🚀 Universal Search Tool - PyPI 发布脚本

echo "🔥 Universal Search Tool PyPI 发布工具"
echo "================================"

cd /data/data/com.termux/files/home/universal_search_tool

# 检查是否在正确的目录
if [ ! -f "pyproject.toml" ]; then
    echo "❌ 错误：请确保在项目根目录运行此脚本"
    exit 1
fi

# 检查是否有构建的包
if [ ! -d "dist" ] || [ -z "$(ls -A dist/)" ]; then
    echo "📦 构建包..."
    python -m build
fi

echo ""
echo "📋 当前构建的包："
ls -la dist/

echo ""
echo "🚀 选择发布方式："
echo "1. 测试发布到 TestPyPI (推荐先测试)"
echo "2. 正式发布到 PyPI"
echo "3. 只查看包信息"
echo "4. 退出"

read -p "请选择 (1-4): " choice

case $choice in
    1)
        echo ""
        echo "🧪 上传到 TestPyPI (测试环境)..."
        python -m twine upload --repository testpypi dist/*
        echo ""
        echo "✅ 测试发布完成！"
        echo "📥 测试安装命令："
        echo "pip install --index-url https://test.pypi.org/simple/ universal-search-tool"
        ;;
    2)
        echo ""
        echo "⚠️  警告：这将正式发布到 PyPI！"
        echo "所有人都能通过 'pip install universal-search-tool' 安装"
        read -p "确认发布？(yes/no): " confirm

        if [ "$confirm" = "yes" ]; then
            echo "🌟 上传到官方 PyPI..."
            python -m twine upload dist/*
            echo ""
            echo "🎉 发布成功！全世界都可以安装了！"
            echo "📥 安装命令："
            echo "pip install universal-search-tool"
            echo ""
            echo "🔗 PyPI 页面："
            echo "https://pypi.org/project/universal-search-tool/"
        else
            echo "❌ 已取消发布"
        fi
        ;;
    3)
        echo ""
        echo "📦 包信息："
        for file in dist/*; do
            echo "📄 $(basename "$file")"
            echo "   📊 大小: $(du -h "$file" | cut -f1)"
            echo "   📅 修改时间: $(stat -c %y "$file")"
        done

        echo ""
        echo "🔍 在 PyPI 上搜索包名："
        echo "https://pypi.org/search/?q=universal-search-tool"
        ;;
    4)
        echo "👋 退出发布工具"
        exit 0
        ;;
    *)
        echo "❌ 无效选择"
        exit 1
        ;;
esac

echo ""
echo "✨ 发布工具运行完成！"