# **SpyglassMC Files**

缓存的 SpyglassMC 的 Java 版方块状态、命令、注册表、原版资源包、原版数据包和版本列表，供其他项目使用。

## **准备工作**

Python 3.x

## **如何获取对应版本的文件**

由于所有版本的文件全部下载会导致存储库很大，所以存储库不包含缓存的文件。

当你需要某个版本的文件时：  
首先运行 get_versions.cmd 来获取版本列表，然后运行 get_spyglassmc_files.cmd \<你要下载的版本\> --download-now 来下载该版本的文件。

## **其他工具**

bin\bz.cmd：根据当前系统架构自动选择对应架构的 bz.*.exe，用于直接从 .tar.gz 中提取文件。7-Zip 不支持直接提取这样的文件。（仅支持 Windows 平台）  
用于数据包开发时其它脚本和程序调用，不应直接使用它。

build_mcversions_csv.py：构建 mcversions.csv，其中包含了每个版本及其数据版本、数据包版本和资源包版本。

clear_cache.cmd：清除解压缓存
