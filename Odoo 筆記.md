---
title: Odoo 筆記
tags: [odoo]

---

# Odoo 筆記總覽
## Odoo官方文件

Odoo 官方線上學習文件[-17版](https://www.odoo.com/documentation/17.0/index.html).請注意你使用的版本,因為筆者撰文的時間是17版,但完稿一個月後,[18版](https://www.odoo.com/documentation/18.0/applications.html)就發佈了,官方網站上都會自動導向到最新版本!
* [Odoo的存取權限設置](https://www.odoo.com/documentation/18.0/developer/reference/backend/security.html): 說明各種添加權限的配置方法.
* [Odoo視圖架構說明](https://www.odoo.com/documentation/18.0/developer/reference/user_interface/view_architectures.html#): 各式View的使用說明,還有變化應用的例子....
* [Odoo 實施專案方法論](https://www.odoo.com/document/download/14298/7afbb4be-36f6-40cf-b584-b4bbbfc07a39/190068?preview=True)
* [Odoo.conf 說明](https://www.erpdaxue.cn/odoo/odoo-teach/%e6%9c%80%e6%96%b0%e6%95%b4%e7%90%86%e7%9a%84odoo%e9%85%8d%e7%bd%ae%e6%96%87%e4%bb%b6odoo-conf%e8%af%b4%e6%98%8e/)
* Odoo[編碼規範指南](https://www.odoo.com/documentation/18.0/contributing/development/coding_guidelines.html)
* Odoo官方線上學習學院-[教學影片與線上試題](https://www.odoo.com/zh_TW/slides/all/tag/odoo-tutorials-9),相當豐富,用的是Youtube, 大陸的朋友,可能需要....(you know :bicyclist: )
* Odoo線上教學時,供學員試操作的[示範網站](https://demo.odoo.com)
* Odoo官方的各版本(會保持最新的三個大版本)試行的站台[Runbot](https://runbot.odoo.com/)
* 使用開源軟體來二次開發,需要注意授權,小心侵權,多關注[相關文章](https://blog.darkthread.net/blog/opensource-licenses/)
* Odoo官方介紹 Odoo 18 在Python框架中有那些變化 [Youtube link](https://www.youtube.com/live/4XVkNRp8Fc4?si=DKhXw5aNSqpTFNYt).
* Odoo官方手冊的系統配置與硬體資源規劃[(系統配置)](https://www.odoo.com/documentation/17.0/administration/on_premise/deploy.html)
* OCA 整理的Odoo 18的主要更新 [Migration-to-version-18.0](https://github.com/OCA/maintainer-tools/wiki/Migration-to-version-18.0)


## Jet Odoo學習筆記:
以下Jet筆記文章可能需要你登錄[hackmd](https://hackmd.io/)帳號方能使用. Odoo官方或其他網路資源則不用. 還有,因為Jet自身的水平不高,所以在翻譯原文的技術與語文上,可能有許多錯漏之處,歡迎各位讀者能直接提出建議與指正。
### Odoo安裝筆記
* [Windows安裝Odoo17的開發環境-Visual Studio Code](https://hackmd.io/@jetlo/S1LxjU_cC)
* [Ubuntu 24.04 Odoo 17生產環境安裝筆記](https://hackmd.io/@jetlo/HJpTmoNcR)
* [Ubuntu 安裝Odoo17的開發環境-PyCharm](https://hackmd.io/@jetlo/S1MO_rd5R)
* [Ubuntu 安裝Odoo17的開發環境-VS Code](https://hackmd.io/@jetlo/Sk8buCt3R)
* [Rocky Linux 9.5 安裝Odoo17](https://hackmd.io/@jetlo/SkotE0X4Jx) 
** --- 內容增加生成pdf報表中文字為亂碼的解決方案
* [用docker建置Odoo系統的VS Code開發環境](https://hackmd.io/@jetlo/B11LjfU8yg)


### Odoo開發相關
Odoo開發快速入門系列教程(翻譯自官方教程 [Server Framework 101](https://www.odoo.com/documentation/17.0/developer/tutorials/server_framework_101.html) jet只完成練習到ch11,所以ch2~ch11的練習,大多有Jet自己制作的答案例子,可供參考,但提醒的是,它不一定是最佳答案哦! 
* SF 101 -[Chapter 1 Architecture Overview 架構總覽](https://hackmd.io/@jetlo/r1bPJRV5A)
* SF 101 -[Chapter 2 New Application 新應用程式](https://hackmd.io/@jetlo/H1pSmm25A)
* SF 101 -[Chapter 3 Models And Basic Fields 模型與基本屬性](https://hackmd.io/@jetlo/ByT2GQnqA)
* SF 101 -[Chapter 4: Security 安全性-簡介](https://hackmd.io/@jetlo/H1WndPs9R)
* SF 101 -[Chapter 5: 初探UI相關的設定.](https://hackmd.io/@jetlo/H1LBLO2cR)
* SF 101 -[Chapter 6: 基本視圖 Basic View](https://hackmd.io/@jetlo/rk2yTr0cC)
* SF 101 -[Chapter 7: 模型之間的聯繫 Relations Between Models](https://hackmd.io/@jetlo/BJaHDPgs0)
* SF 101 -[Chapter 8: 計算欄位和更改](https://hackmd.io/@jetlo/HJSjwgGo0)
* SF 101 -[Chapter 9: 準備好採取行動了嗎?](https://hackmd.io/@jetlo/SkkJ2aHjR)
* SF 101 -[Chapter 10: 約束 Constraints](https://hackmd.io/@jetlo/HyUROsqiC)
* SF 101 -[Chapter 11: 添加一些介面效果.](https://hackmd.io/@jetlo/ByRwGNsiA)
* SF 101 -[Chapter 12: 繼承 Inheritance](https://hackmd.io/@jetlo/H1qE5ly3C)
* SF 101 -[Chapter 13: 與其他模組互動](https://hackmd.io/@jetlo/r1HZpgzh0)
* SF 101 -[Chapter 14: QWeb簡史](https://hackmd.io/@jetlo/H1sAT842C)
* SF 101 -[Chapter 15: 最後要說的話 The final word](https://hackmd.io/@jetlo/B1Gj3vNhC)

:smile: [Odoo的import/export](https://hackmd.io/@jetlo/BkzaX6o0kg)
:smile:  [Odoo權限:](https://hackmd.io/@jetlo/Skfydaa2A)Group、Access Right,Record Rule
:smile: [Odoo.sh的應用筆記](https://hackmd.io/@jetlo/By3ep_UpR)

:smile: [Odoo官方資料庫升級操作筆記](https://hackmd.io/@jetlo/Skw80b4q1g)
:smile: 修改odoo log的時間記錄為[正確的時區時間](https://hackmd.io/@jetlo/HkZpbudn1l).
:santa: [Odoo log rotate](https://hackmd.io/@jetlo/BJwHvNOhJe):因為odoo13版開始,config中的logrotate參數就失效了,odoo建議改用作業系統的logrotate功能.
:santa: Odoo設定LDAP認證的範例 [Odoo use LDAP Auth by openLDAP](https://hackmd.io/@jetlo/Byb3Wia3Je)
:santa: Odoo的上傳文件[filestore位置](https://hackmd.io/@jetlo/HJUBn9Wpkl)
:golf: [odoo雜記](https://hackmd.io/@jetlo/HylS0z99A),覺得有用,隨手登載記錄,但尚未歸類與整理的雜七雜八區.
### 版控作業筆記
* [git & gitHub筆記](https://hackmd.io/@jetlo/SyKgOYK9C)
* [將遠端repo與本地端文件作合併](https://hackmd.io/@jetlo/HJtPzCwCJe)
* [存取github出現“Permission Denied (publickey)”錯誤](https://hackmd.io/@jetlo/HkdLOnfeJx)
## 不錯的Odoo民間資源
* [Odoo效能優化的議題](https://www.it145.com/9/106923.html)內容包含...
    * 記錄集的預讀取模式
    * 將資料在記憶體中快取
    * 生成不同尺寸的圖片
    * 存取組資料
    * 一次性建立或寫多條資料
    * 通過資料庫查詢存取資料
    * 優化python程式碼
* 提高系統性能的[18種方案](https://xodoo.blog.csdn.net/article/details/140398790)
* IT幫邦忙的鐵人賽 [Let's ODOO 開發與應用30天挑戰](https://ithelp.ithome.com.tw/users/20130896/ironman/3979)
* IT幫邦忙的鐵人賽 [Odoo 魔法學院: 一步一腳印帶你成為客製化大師 系列](https://ithelp.ithome.com.tw/users/20163326/ironman/7009)
* 最大Odoo插件開源共享的社群組織[OCA](https://odoo-community.org/),提供豐富的[免費插件](https://odoo-community.org/shop),技術資源與專案分組.
* 使用Visual Studio Code[推薦的Addon](https://ithelp.ithome.com.tw/articles/10333745)
* Odoo使用的Database是大名鼎鼎的開源資料庫PostgreSQL: [PostgreSQL正體中文使用手冊](https://docs.postgresql.tw/the-sql-language/data-types/character-types)
* PostgreSQL的shell指令[psql](https://hackmd.io/@jetlo/rJM-B3QRJe)
* Odoo 使用OpenUpgrade來作系統移轉的說明: [OCA Days 2024 - Miquel Raïch - WORKSHOP. Mastering Version Upgrades with OpenUpgrade](https://youtu.be/WF-BaukCGPs?si=azJrDzTxngxu8VU6)
* 如何設定電子郵件與Office 365 & Odoo配合使用:[Office365與Odoo整合]( https://ventor.tech/guides/how-to-configure-emails-to-work-with-office-365-and-odoo/)
* 其他人的筆記- [ODOO 的超級實用教學文章](https://hackmd.io/@SekiXu/Byt9NXQW5)
* Odoo主要使用的程式語言**Python**,要用好Odoo,離不開學習python語言,不錯的[python線上學習平台](https://steam.oxxostudio.tw/category/python/info/start.html)
## Odoo推薦的應用Addons
* 受人推薦的審批應用[OCA Base Tier Validation](https://apps.odoo.com/apps/modules/18.0/base_tier_validation)
[應用說明1](https://pypi.org/project/odoo-addon-base-tier-validation/)
[應用說明2](https://ithelp.ithome.com.tw/articles/10274162)

