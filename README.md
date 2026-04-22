# Android CLI + GitHub Actions Demo

这是一个展示如何使用Android CLI和GitHub Actions构建Android应用的示例项目。

## 项目概述

这个项目演示了：
1. 使用Android CLI创建Android项目
2. 配置GitHub Actions进行自动化构建
3. 展示Android CLI的基本功能

## Android CLI简介

Android CLI是Google推出的新命令行工具，据称可以将Android应用构建速度提高3倍。主要功能包括：

- **SDK管理**: 使用 `android sdk install` 仅下载所需组件
- **快速创建项目**: 使用 `android create` 根据官方模板生成项目
- **设备管理**: 使用 `android emulator` 创建和管理虚拟设备
- **应用部署**: 使用 `android run` 部署应用到设备

## 项目结构

```
demo-app/
├── .github/workflows/
│   ├── android-build.yml      # 完整的Android构建工作流
│   └── android-cli-demo.yml   # Android CLI功能演示工作流
├── app/                       # Android应用模块
├── build.gradle.kts           # 项目级构建配置
└── settings.gradle.kts        # 项目设置
```

## GitHub Actions工作流

### 1. Android Build with CLI (`android-build.yml`)

这个工作流演示了完整的Android构建流程：

- 安装Android CLI
- 设置Android SDK
- 使用Gradle构建项目
- 运行单元测试
- 上传构建产物（APK文件）

### 2. Android CLI Demo (`android-cli-demo.yml`)

这个工作流专门展示Android CLI的功能：

- 安装和验证Android CLI
- 显示帮助信息
- 列出可用模板
- 创建测试项目
- 尝试构建测试项目

## 如何使用

### 本地开发

1. 安装Android CLI:
   ```bash
   curl -fsSL https://dl.google.com/android/cli/latest/linux_x86_64/android -o ~/.local/bin/android
   chmod +x ~/.local/bin/android
   export PATH="$HOME/.local/bin:$PATH"
   ```

2. 验证安装:
   ```bash
   android --version
   ```

3. 创建新项目:
   ```bash
   android create --name="MyApp" --minSdk=24 -o ./my-app
   ```

### GitHub Actions

工作流会在以下情况下自动触发：
- 推送到main/master分支
- 创建Pull Request到main/master分支
- 手动触发（通过GitHub UI）

## 参考链接

- [Android CLI官方文档](https://developer.android.google.cn/tools/agents)
- [Android CLI介绍文章](https://developer.android.google.cn/blog/posts/android-cli-build-android-apps-3x-faster-using-any-agent)
- [Android Skills GitHub仓库](https://github.com/android/android-skills)
- [GitHub Actions文档](https://docs.github.com/en/actions)

## 许可证

MIT License