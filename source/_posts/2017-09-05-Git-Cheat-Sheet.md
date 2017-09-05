---
layout: hexo
title: Git Cheat Sheet
date: 2017-09-05 21:47:13
thumbnail:
categories: 技术
tags:
    - Git
    - GitHub
comments:
---

安装
---

> `GitHub Desktop` 提供了包含图形界面的桌面客户端，通过客户端可以完成大部分常用的仓库操作，同时可以自动更新Git的命令行版本，以适应新的场景。

Git 全平台版

    http://git-scm.com

GitHub Desktop for Windows

    http://windows.github.com

GitHub Desktop for Mac

    http://mac.github.com

配置
---

> 对所有本地仓库的用户信息进行配置

对你的commit操作设置关联的用户名

    git config --global user.name "[name]"

对你的commit操作设置关联的邮箱地址

    git config --global user.email "[email address]"

创建
---

> 创建一个新的仓库或者从一个现有的链接获取仓库

创建一个本地的仓库，并设置名字

    git init [project-name]

下载一个项目以及它所有的版本历ß史

    git clone [url]

更改
---

> 检查已有的编辑并执行commit操作

列出所有新建或者更改的文件，这些文件需要被commit

    git status

展示那些没有暂存文件的差异

    git diff

将文件进行快照处理用于版本控制

    git add [file]

展示暂存文件与最新版本之间的不同

    git diff --staged

将文件移除暂存区，但是保留其内容

    git reset [file]

将文件快照永久地记录在版本历史中

    git commit -m"[descriptive message]"

分支
---

> 命名一系列commit以及合并已完成的工作

列出当前仓库中所有的本地分支

    git branch

建立一个新分支

    git branch [branch-name]

切换到一个特定的分支上并更新工作目录

    git checkout [branch-name]

合并特定分支的历史到当前分支

    git merge [branch-name]

删除特定的分支

    git branch -d [branch-name]

重构
---

> 重定位并移除版本文件

从工作目录中删除文件并暂存此删除

    git rm [file]

从版本控制中移除文件，并在本地保存文件

    git rm --cached [file]

改变文件名并准备commitß

    git mv [file-original] [file-renamed]

停止
---

> 不包含临时文件和路径

文本文件 .gitignore 可以防止一些特定的文件进入到版本控制中

    *.log
    build/
    temp-*

列出所有项目中忽略的文件

    git ls-files --others --ignored --exclude-standard

暂存
---

> 暂存一些未完成的更改

临时存储所有修改的已跟踪文件

    git stash

重新存储所有最近被stash的文件

    git stash pop

列出所有被stash的更改

    git stash list

放弃所有最近stash的更改

    git stash drop

历史
---

> 浏览并检查项目文件的发展

列出当前分支的版本历史

    git log

列出文件的版本历史，包括重命名

    git log --follow [file]

展示两个不同分支之间的差异

    git diff [first-branch]...[second-branch]

输出元数据以及特定commit的内容变化

    git show [commit]

撤销
---

> 擦除错误并更改历史

撤销所有 [commit] 后的的commit，在本地保存更改

    git reset [commit]

放弃所有更改并回到某个特定的commit

    git reset --hard [commit]

同步
---

> 注册一个远程的链接，交换仓库的版本历史

下载远程仓库的所有历史

    git fetch [remote]

合并远程分支到当前本地分支

    git merge [remote]/[branch]

上传所有本地分支commit到GitHub上

    git push [remote] [branch]

下载书签历史并合并更改

    git pull
