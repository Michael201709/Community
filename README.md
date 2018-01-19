# 移动互联网社区系统 #

**项目名称：移动互联网社区系统**
 
**班&emsp;&emsp;期：PHP S70期**

**组&emsp;&emsp;名：PHPer Team**

**组&emsp;&emsp;员：张明明**

&ensp;&#8194;&emsp;&#8195;&emsp;&emsp;**马成军(以下称:Michael)**  

## 作品展示 #
[https://pan.baidu.com/s/1kW4rg5h](https://pan.baidu.com/s/1kW4rg5h "作品展示")

### 以下为后台管理界面： ###
> 后台登录

![](https://i.imgur.com/NCH98wK.jpg)

> 后台主页

![](https://i.imgur.com/W3fVbQa.png)

> 管理界面

![](https://i.imgur.com/2vaeId1.png)

> 消息提示

![](https://i.imgur.com/nKKFBuD.png)

> 系统信息

![](https://i.imgur.com/DuqRX9u.png)

> 用户中心

![](https://i.imgur.com/ZvXBnwY.png)

> 文章管理

![](https://i.imgur.com/5BX8OlO.png)

> 友链管理

![](https://i.imgur.com/zoTtbio.png)

----------
### 以下为前端展示内容：###

> 前端注册

![](https://i.imgur.com/zdHvwmy.jpg)

> 前端登录

![](https://i.imgur.com/jwXnSrh.png)

> 首页列表

![](https://i.imgur.com/BNqwMak.png)

> 搜索

![](https://i.imgur.com/s3tIWVM.png)

> 搜索列表

![](https://i.imgur.com/ODTjhAV.png)

> 搜索分页

![](https://i.imgur.com/OnBP0Vt.png)

> 文章详情

![](https://i.imgur.com/0IAJ5Eu.png)

> 个人中心

![](https://i.imgur.com/sRV6cQa.png)

> 信息修改

![](https://i.imgur.com/ce3f3eH.png)

> 账号绑定

![](https://i.imgur.com/5po8SPI.png)

----------


## 需求说明书 ##

### <a href="http://www.michaelma.xin/" target="_blank">移动互联网社区系统</a> ###

文件状态 | 文件标识 | ThinkPHP 5.0.14 移动互联网社区系统
:----: | :------: | :----:
[ √ ] 草 稿 | 当前版本  | 1.0
[ _ ] 正式发布 | 作 者  | 张明明、Michael
[ _ ] 正在修改 | 完成日期  | 2018年1月10日21:04:58


## 开发流程 ##


## 设计说明书 ##

> ### 前台模块 ###

    此模块由PHPer攻城狮张明明负责设计和优化
    
#### 登录注册 ####

    登录模板借鉴：\010\DeathGhost\login.html
    注册模板借鉴：待定

使用到的技术：

- 引入Bootstrap、Layui、jQuery框架
- 支持奥森图标 Font Awesome
- 登录需要验证用户信息— —Model层应用；
- 需要验证手机号，填写手机号验证码
- 需要验证图形码，填写验证码
- [登录]需要额外支持QQ互联登录及绑定用户信息
- [注册]需要额外验证邮箱

预期达到的效果：

- AJAX不跳转页面，请求验证
- layer弹出层提示跳转
- 样式统一

> PS：用户添加有三种渠道：
    
    1. 后台管理员添加
    2. 前台直接注册
    3. QQ互联完善(绑定注册)

*用户中心及QQ互联的简介待攻城狮 @张明明 补全*


具体控制器及方法分布：
![](https://i.imgur.com/mOzphBq.png)


----------


> ### 后台模块 ###
    
    此模块由PHPer攻城狮马成军负责设计和优化
    
#### 后台登录 ####

    登录模板借鉴：\layuicms\page\login\login.html
    主页模板借鉴：\Admin_win10UI\demo.html
    用户管理借鉴：\X-admin\member-list.html[用户列表]
                    &member-add.html[添加用户]
                    &member-edit.html[编辑用户]
                    &member-password.html[修改密码]
                    &member-del.html[恢复用户]
    [修改状态][软删除][批量删除][恢复][批量恢复]
    系统信息借鉴：\X-admin\welcome.html
使用到的技术：

- 引入Bootstrap、Layui、jQuery框架
- 支持奥森图标 Font Awesome
- 登录需要验证管理员信息— —Model层应用；
- 需要验证手机号，填写手机号验证码[或手机号码验证登录(免密码)]
- 需要验证图形码，填写验证码

预期达到的效果：

- AJAX不跳转页面，请求验证
- layer弹出层提示跳转
- 样式统一

> PS：后台不开放注册功能，管理员添加的渠道
    
    1. 由拥有root权限的管理员从后台添加，并激活使用;
    2. 后期可 开放手机号码 验证体验，进入后台验证邮箱;
    3. 体验管理员账号 仅拥有查询、查看所有用户的只读权限，可编辑补全自身信息;
    4. 可提交root管理员审核开放其他权限转至普通管理员。
   
#### 用户管理 ####
    - 列表分页显示
    - 添加
    - 编辑
      - 更新基本信息
      - 修改状态
      - 修改密码
    - 删除
      - 软删除
      - 批量恢复
      - 批量删除 
    - 搜索分页
      - 日期范围搜索
      - bootstrap分页
      - layui分页
    
#### 管理中心 ####

              
#### 角色管理 ####

    超级管理员
    普通管理员
    体验管理员
    用户
        
#### 权限管理 ####
    
    超级管理员：
        只有一位
        拥有至高无上的root权限
        不可删除自身账号(与系统同在)
    
    普通管理员：
        上不封顶
        可管理所有用户，拥有绝对权限
        不可查看、删除其它管理员
        不可删除自身账号
    
    体验账号：
        至多10位
        仅拥有只读权限，查看所有用户
        可编辑、补全个人信息等
        仅可只能向超级管理员申请[普通管理员]权限
        
    用户：
        上不封顶
        仅拥有在前台的权限，无权登录后台
    
具体控制器及方法分布：
![](https://i.imgur.com/QNwT8ie.png)

## 数据库构建 ##

用户表：

    DROP TABLE IF EXISTS `com_user`;
    CREATE TABLE `com_user`  (
    `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID-用户',
    `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '头像',
    `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '登录账号名(可作为登录凭证)',
    `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '真实姓名-用户',
    `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '登录密码',
    `sex` tinyint(2) NOT NULL COMMENT '性别-0:女;1:男;2:保密',
    `age` tinyint(3) NULL DEFAULT NULL COMMENT '年龄-1~299岁',
    `mobile` int(11) NULL DEFAULT NULL COMMENT '手机号-联系方式(可作为登录凭证)',
    `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '邮箱-邮箱地址(可作为登录凭证)',
    `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '地址-联系地址(三、四级联动)',
    `status` tinyint(1) NOT NULL COMMENT '状态-0:禁用;1-启用',
    `sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '个性签名',
    `create_time` int(11) NOT NULL COMMENT '注册创建时间',
    `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
    `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
    `is_delete` int(11) NULL DEFAULT NULL COMMENT '允许删除',
    PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

管理员表
    
    DROP TABLE IF EXISTS `com_admin`;
    CREATE TABLE `com_admin`  (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID-管理员',
      `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '头像',
      `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '登录账号名(可作为登录凭证)',
      `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '真实姓名-管理员',
      `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '登录密码',
      `sex` tinyint(2) NOT NULL COMMENT '性别-0:女;1:男;2:保密',
      `age` tinyint(3) NULL DEFAULT NULL COMMENT '年龄-1~299岁',
      `mobile` int(20) NULL DEFAULT NULL COMMENT '手机号-联系方式(可作为登录凭证)',
      `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '邮箱-邮箱地址(可作为登录凭证)',
      `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '地址-联系地址(三、四级联动)',
      `status` tinyint(1) NOT NULL COMMENT '状态-0:禁用;1-启用',
      `sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '个性签名',
      `create_time` int(11) NOT NULL COMMENT '注册创建时间',
      `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
      `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
      `is_delete` int(11) NULL DEFAULT NULL COMMENT '允许删除',
      PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;
    
角色表

    DROP TABLE IF EXISTS `com_role`;
    CREATE TABLE `com_role`  (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
      `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '角色名称',
      `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '角色说明介绍',
      `status` tinyint(1) NULL DEFAULT NULL COMMENT '角色状态',
      `create_time` int(11) NULL DEFAULT NULL COMMENT '角色创建时间',
      `update_time` int(11) NULL DEFAULT NULL COMMENT '角色更新时间',
      `delete_time` int(11) NULL DEFAULT NULL COMMENT '角色删除时间',
      `is_delete` int(11) NULL DEFAULT NULL COMMENT '允许删除',
      PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

权限表

    DROP TABLE IF EXISTS `com_rule`;
    CREATE TABLE `com_rule`  (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
      `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '权限名称',
      `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '权限说明介绍',
      `status` tinyint(1) NULL DEFAULT NULL COMMENT '权限状态',
      `create_time` int(11) NULL DEFAULT NULL COMMENT '权限创建时间',
      `update_time` int(11) NULL DEFAULT NULL COMMENT '权限更新时间',
      `delete_time` int(11) NULL DEFAULT NULL COMMENT '权限删除时间',
      `is_delete` int(11) NULL DEFAULT NULL COMMENT '允许删除',
      PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;
    
管理员_角色表

    DROP TABLE IF EXISTS `com_admin_role`;
    CREATE TABLE `com_admin_role`  (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员_角色表ID',
      `admin_id` int(11) NULL DEFAULT NULL COMMENT '管理员ID',
      `role_id` int(11) NULL DEFAULT NULL COMMENT '角色ID',
      PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;
    
角色_权限表

    DROP TABLE IF EXISTS `com_role_rule`;
    CREATE TABLE `com_role_rule`  (
      `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色_权限表ID',
      `admin_id` int(11) NULL DEFAULT NULL COMMENT '角色ID',
      `role_id` int(11) NULL DEFAULT NULL COMMENT '权限ID',
      PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;
    


ThinkPHP 5.0
===============

[![Total Downloads](https://poser.pugx.org/topthink/think/downloads)](https://packagist.org/packages/topthink/think)
[![Latest Stable Version](https://poser.pugx.org/topthink/think/v/stable)](https://packagist.org/packages/topthink/think)
[![Latest Unstable Version](https://poser.pugx.org/topthink/think/v/unstable)](https://packagist.org/packages/topthink/think)
[![License](https://poser.pugx.org/topthink/think/license)](https://packagist.org/packages/topthink/think)

ThinkPHP5在保持快速开发和大道至简的核心理念不变的同时，PHP版本要求提升到5.4，对已有的CBD模式做了更深的强化，优化核心，减少依赖，基于全新的架构思想和命名空间实现，是ThinkPHP突破原有框架思路的颠覆之作，其主要特性包括：

 + 基于命名空间和众多PHP新特性
 + 核心功能组件化
 + 强化路由功能
 + 更灵活的控制器
 + 重构的模型和数据库类
 + 配置文件可分离
 + 重写的自动验证和完成
 + 简化扩展机制
 + API支持完善
 + 改进的Log类
 + 命令行访问支持
 + REST支持
 + 引导文件支持
 + 方便的自动生成定义
 + 真正惰性加载
 + 分布式环境支持
 + 更多的社交类库

> ThinkPHP5的运行环境要求PHP5.4以上。

详细开发文档参考 [ThinkPHP5完全开发手册](http://www.kancloud.cn/manual/thinkphp5)

## 目录结构

初始的目录结构如下：

~~~
www  WEB部署目录（或者子目录）
├─application           应用目录
│  ├─common             公共模块目录（可以更改）
│  ├─module_name        模块目录
│  │  ├─config.php      模块配置文件
│  │  ├─common.php      模块函数文件
│  │  ├─controller      控制器目录
│  │  ├─model           模型目录
│  │  ├─view            视图目录
│  │  └─ ...            更多类库目录
│  │
│  ├─command.php        命令行工具配置文件
│  ├─common.php         公共函数文件
│  ├─config.php         公共配置文件
│  ├─route.php          路由配置文件
│  ├─tags.php           应用行为扩展定义文件
│  └─database.php       数据库配置文件
│
├─public                WEB目录（对外访问目录）
│  ├─index.php          入口文件
│  ├─router.php         快速测试文件
│  └─.htaccess          用于apache的重写
│
├─thinkphp              框架系统目录
│  ├─lang               语言文件目录
│  ├─library            框架类库目录
│  │  ├─think           Think类库包目录
│  │  └─traits          系统Trait目录
│  │
│  ├─tpl                系统模板目录
│  ├─base.php           基础定义文件
│  ├─console.php        控制台入口文件
│  ├─convention.php     框架惯例配置文件
│  ├─helper.php         助手函数文件
│  ├─phpunit.xml        phpunit配置文件
│  └─start.php          框架入口文件
│
├─extend                扩展类库目录
├─runtime               应用的运行时目录（可写，可定制）
├─vendor                第三方类库目录（Composer依赖库）
├─build.php             自动生成定义文件（参考）
├─composer.json         composer 定义文件
├─LICENSE.txt           授权说明文件
├─README.md             README 文件
├─think                 命令行入口文件
~~~

> router.php用于php自带webserver支持，可用于快速测试
> 切换到public目录后，启动命令：php -S localhost:8888  router.php
> 上面的目录结构和名称是可以改变的，这取决于你的入口文件和配置参数。

## 命名规范

`ThinkPHP5`遵循PSR-2命名规范和PSR-4自动加载规范，并且注意如下规范：

### 目录和文件

*   目录不强制规范，驼峰和小写+下划线模式均支持；
*   类库、函数文件统一以`.php`为后缀；
*   类的文件名均以命名空间定义，并且命名空间的路径和类库文件所在路径一致；
*   类名和类文件名保持一致，统一采用驼峰法命名（首字母大写）；

### 函数和类、属性命名
*   类的命名采用驼峰法，并且首字母大写，例如 `User`、`UserType`，默认不需要添加后缀，例如`UserController`应该直接命名为`User`；
*   函数的命名使用小写字母和下划线（小写字母开头）的方式，例如 `get_client_ip`；
*   方法的命名使用驼峰法，并且首字母小写，例如 `getUserName`；
*   属性的命名使用驼峰法，并且首字母小写，例如 `tableName`、`instance`；
*   以双下划线“__”打头的函数或方法作为魔法方法，例如 `__call` 和 `__autoload`；

### 常量和配置
*   常量以大写字母和下划线命名，例如 `APP_PATH`和 `THINK_PATH`；
*   配置参数以小写字母和下划线命名，例如 `url_route_on` 和`url_convert`；

### 数据表和字段
*   数据表和字段采用小写加下划线方式命名，并注意字段名不要以下划线开头，例如 `think_user` 表和 `user_name`字段，不建议使用驼峰和中文作为数据表字段命名。

## 参与开发
请参阅 [ThinkPHP5 核心框架包](https://github.com/top-think/framework)。

## 版权信息

ThinkPHP遵循Apache2开源协议发布，并提供免费使用。

本项目包含的第三方源码和二进制文件之版权信息另行标注。

版权所有Copyright © 2006-2017 by ThinkPHP (http://thinkphp.cn)

All rights reserved。

ThinkPHP® 商标和著作权所有者为上海顶想信息科技有限公司。

更多细节参阅 [LICENSE.txt](LICENSE.txt)
