# Perfect-LDAP-Demo [English](README.md)

<p align="center">
    <a href="http://perfect.org/get-involved.html" target="_blank">
        <img src="http://perfect.org/assets/github/perfect_github_2_0_0.jpg" alt="Get Involed with Perfect!" width="854" />
    </a>
</p>

<p align="center">
    <a href="https://github.com/PerfectlySoft/Perfect" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_1_Star.jpg" alt="Star Perfect On Github" />
    </a>  
    <a href="https://gitter.im/PerfectlySoft/Perfect" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_2_Git.jpg" alt="Chat on Gitter" />
    </a>  
    <a href="https://twitter.com/perfectlysoft" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_3_twit.jpg" alt="Follow Perfect on Twitter" />
    </a>  
    <a href="http://perfect.ly" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_4_slack.jpg" alt="Join the Perfect Slack" />
    </a>
</p>

<p align="center">
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat" alt="Swift 3.0">
    </a>
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Platforms-OS%20X%20%7C%20Linux%20-lightgray.svg?style=flat" alt="Platforms OS X | Linux">
    </a>
    <a href="http://perfect.org/licensing.html" target="_blank">
        <img src="https://img.shields.io/badge/License-Apache-lightgrey.svg?style=flat" alt="License Apache">
    </a>
    <a href="http://twitter.com/PerfectlySoft" target="_blank">
        <img src="https://img.shields.io/badge/Twitter-@PerfectlySoft-blue.svg?style=flat" alt="PerfectlySoft Twitter">
    </a>
    <a href="https://gitter.im/PerfectlySoft/Perfect?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge" target="_blank">
        <img src="https://img.shields.io/badge/Gitter-Join%20Chat-brightgreen.svg" alt="Join the chat at https://gitter.im/PerfectlySoft/Perfect">
    </a>
    <a href="http://perfect.ly" target="_blank">
        <img src="http://perfect.ly/badge.svg" alt="Slack Status">
    </a>
</p>

本项目展示了如何使用 Perfect-LDAP 连接到一个 Windows 2000 主域控制器并搜索域用户。

## Linux 安装指南

请确定下列库函数已经安装到了您的 Ubuntu 16.04 系统上：

```
$ sudo apt-get -y install libsasl2-dev libldap2-dev
```

## 快速上手

首先下载本项目：

```
$ git clone https://github.com/PerfectExamples/Perfect-LDAP-Demo.git
```

## 配置登录信息

下载后，您自定义 main.swift 文件中的登录信息：

``` swift
// 等价于 ldapsearch -D 选项
let dn = "CN=judy,CN=Users,DC=perfect,DC=com"

// 等价于 ldapsearch -w 选项
let password = "0penLDAP"

// 等价于 ldapsearch -H 选项
let url = "ldap://192.168.56.15"

// 等价于 ldapsearch -b 选项
let base = "CN=Users,DC=perfect,DC=com"

// 等价于 ldapsearch -s sub 选项
let scope: LDAP.Scope = .SUBTREE
```

⚠️注意⚠️ 上述参数等价于命令：
```
$ ldapsearch -D "CN=judy,CN=Users,DC=perfect,DC=com" -w "0penLDAP" -H "ldap://192.168.56.15" -b "CN=Users,DC=perfect,DC=com" -s sub -x
```

## 编译

编辑完成上述参数后，您可以进入项目目录并执行编译：

```
$ cd Perfect-LDAP-Demo
$ swift build
```

编译完成后，您可以尝试运行 `./.build/debug/Perfect-LDAP-Demo` 查看检索结果。如果没有问题的话，应该能够以字典方式打印服务器上的所有用户信息。

### 问题报告、内容贡献和客户支持

我们目前正在过渡到使用JIRA来处理所有源代码资源合并申请、修复漏洞以及其它有关问题。因此，GitHub 的“issues”问题报告功能已经被禁用了。

如果您发现了问题，或者希望为改进本文提供意见和建议，[请在这里指出](http://jira.perfect.org:8080/servicedesk/customer/portal/1).

在您开始之前，请参阅[目前待解决的问题清单](http://jira.perfect.org:8080/projects/ISS/issues).

## 更多信息
关于本项目更多内容，请参考[perfect.org](http://perfect.org).
