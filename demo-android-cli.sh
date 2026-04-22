#!/bin/bash
# Android CLI功能演示脚本

echo "=== Android CLI功能演示 ==="
echo ""

# 1. 显示版本信息
echo "1. Android CLI版本:"
android --version
echo ""

# 2. 显示帮助信息
echo "2. 主要命令帮助:"
echo "=== android --help ==="
android --help | head -20
echo ""

# 3. 显示创建命令帮助
echo "3. 创建项目命令帮助:"
echo "=== android create --help ==="
android create --help
echo ""

# 4. 列出可用模板
echo "4. 可用项目模板:"
android create --list
echo ""

# 5. 创建一个简单的测试项目
echo "5. 创建测试项目..."
TEST_DIR="test-demo-$(date +%s)"
mkdir -p "$TEST_DIR"
cd "$TEST_DIR"

android create --name="CLIDemo" --minSdk=24 -o ./demo-app 2>&1 | tail -5
echo ""

# 6. 显示创建的项目结构
echo "6. 项目结构概览:"
if [ -d "demo-app" ]; then
    echo "项目创建成功!"
    echo "主要文件:"
    find demo-app -type f \( -name "*.kt" -o -name "*.java" -o -name "AndroidManifest.xml" -o -name "*.gradle*" \) | head -10
    echo ""
    echo "Gradle包装器:"
    ls -la demo-app/gradlew demo-app/*.gradle* 2>/dev/null || true
else
    echo "项目创建失败"
fi

echo ""
echo "=== 演示完成 ==="
echo "测试项目目录: $(pwd)/demo-app"