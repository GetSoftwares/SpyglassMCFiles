# **SpyglassMC Files**

缓存的 SpyglassMC 的 Java 版方块状态、命令、注册表、原版资源包、原版数据包和版本列表，供其他项目使用。

## **准备工作**

Python 3.x

## **如何获取对应版本的文件**

由于所有版本的文件全部下载会导致存储库很大，所以存储库不包含缓存的文件。

当你需要某个版本的文件时：  
首先运行 get_versions.cmd 来获取版本列表，然后运行 get_spyglassmc_files.cmd \<你要下载的版本\> --download-now 来下载该版本的文件。

## **文件列表**

```
（根目录）
    bin：存放额外的程序，当前存放了 Bandizip 的命令行版本  
    cache：（使用时产生）解压缓存，用于加速构建数据包和数据包库  
    logs：（使用时产生）下载日志  
    reports：存放原版数据生成器产生的报告。尽管其并不是 SpyglassMC 的一部分，但为了方便开发和使用故将其保留  
    versions：按版本存放的 SpyglassMC 生成的文件，包括原版方块状态、命令、注册表、资源包和数据包
    
    build_mcversions_csv.cmd：build_mcversions_csv.py 的启动脚本  
    build_mcversions_csv.py：构建 mcversions.csv  
    clear_cache.cmd：清理解压缓存  
    download_files.cmd：下载 SpyglassMC 文件  
    get_spyglassmc_files.cmd：生成下载列表  
    get_versions.cmd：get_versions.py 的启动脚本  
    get_versions.py：生成 versions.txt  
    README.MD：本文档  
    versions.json：SpyglassMC 的 Minecraft Java 版版本列表  
    versions.txt：一行一个版本的版本列表
```