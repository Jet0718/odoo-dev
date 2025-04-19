---
title: 將遠端repo與本地端文件作合併
tags: [git, github]

---

# 將遠端repo與本地端文件作合併

## 目的:
在本地端已作了開發,中途欲將本地端的文件與github上遠端repo中已存在的文件版控分支內容作整併,使得本地文件可以開始納入遠端文件版控作業.
## 過程:
因為本地端與遠端repo並非同一個版本根源所發展,即兩者在版控上並不同源,所以要整併為一個版控分支,就遇上了一些問題,所以在此記錄排解的過程手法,希望能對類似情況有所經驗借鑒.
## 記錄:
1. 團隊在兩個月前開發了客製文件,過程中利用`vpn` `ssh`協定以`pscp`的指令複製到客戶端測試區,最後也用相同手段複製到正式區.但操作過程繁瑣,每次也都是整份文件完整複寫。
2. 後來我想用github作為遠端版控中介,以方便未來團隊將開發測試好的結果同步到github上,再遠登至客戶主機端以git指令將開發文件自github同步下來.
3. 我在我的本地端將團隊最近的文件版本直接git push(上傳)至github上我的帳號(jet0718)下名為"plm3"repo中的tt1這個branch.
```bash
# 需要先下載遠端的分支清單至本地端,確保你將要拉下來的分支名是確實存在的
git fetch origin
# 查看遠端分支清單,確認遠端分支是否有預備下拉的分支名
git branch -r
# 將本地端commit完的開發文件同步至遠端repo中的tt1這個branch
git push origin/tt1
```
4. 接下來,我連線至客戶環境,並切換到odoo用戶以操作客戶環境下的客製文件,自遠端倉的內容下載與本地倉文件合併.
```bash!
# 這是客戶主機環境,先換成ODOO的Owner user.
sudo su - odoo
# 切換至odoo客製文件目錄
cd /opt/odoo/odoo18/odoo-custom-addons
# 初始化目錄內容,使之開始納入git控管,並直接設置初始分支名為 tt1 .
git init --initial-branch=tt1
# 拉取遠端repo (遠端repo的別名=origin)的分支tt1至本地端的分支tt1
git pull origin tt1:tt1

Username for 'https://github.com': jet0718
Password for 'https://jet0718@github.com':
remote: Enumerating objects: 133, done.
remote: Counting objects: 100% (4/4), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 133 (delta 2), reused 2 (delta 2), pack-reused 129 (from 1)
Receiving objects: 100% (133/133), 60.87 KiB | 865.00 iB/s, done.
Resolving deltas: 100% (63/63), done.
From https://github.com/jet0718/plm3
! [rejected]  tt1 -> tt1 (non-fast-forward)
```
結果失敗了,看起來 `git pull` 指令因為遠端分支 tt1 和本地分支 tt1 之間有衝突，導致合併被拒絕（rejected non-fast-forward）。這表示遠端分支上有你本地分支沒有的提交，Git 為了避免覆蓋這些提交，所以拒絕了直接合併。

5. 建立一個新的本地分支，例如 temp-tt1，並切換到這個新分支。這樣可以讓你安全地查看遠端變更，而不會影響你原來的 tt1 分支:
```bash
git checkout -b temp-tt1 origin/tt1
```
這個指令會基於遠端 tt1 分支 (origin/tt1) 建立並切換到一個新的本地分支 temp-tt1。現在你的 temp-tt1 分支就包含了最新的遠端 tt1 分支的內容。
:::

6. 決定如何將遠端變更合併到你的本地 tt1 分支。你有幾種選擇：
:::info
(A.) 如果 `temp-tt1` 分支上的內容是你想要的，並且你希望覆蓋你本地 tt1 分支的內容 ==(請在頭腦清楚,了解後果的狀況下謹慎使用,此法暴力簡單)==:
你可以切換回你的 `tt1` 分支，然後使用 `git reset --hard origin/tt1`
```bash
git checkout tt1
git reset --hard origin/tt1
```

==**警告** ：這個操作會永久丟棄你本地 `tt1` 分支上所有未推送的提交。請確保你了解這個操作的風險。==
:::

:::info
(B.) 如果你想保留你本地 `tt1` 分支的變更，並將遠端的變更合併進來 **(這通常是更安全的做法)**:
你可以切換回你的 `tt1` 分支，然後使用 `git merge` 命令。
```bash
git checkout tt1
git merge temp-tt1
```
如果合併過程中出現衝突，你需要手動解決這些衝突，然後使用 `git add` 將解決後的檔案標記為已解決，最後使用 `git commit` 提交合併結果。

* 我執行merge時發生錯誤
```bash
git merge temp-tt1

fatal: refusing to merge unrelated histories
```
"`refusing to merge unrelated histories`" 的錯誤，這表示你的本地 tt1 分支和 temp-tt1 分支的提交歷史是完全不相關的，Git 為了避免意外的合併，預設拒絕了這個操作。
這種情況通常發生在以下幾種情境：
    * 兩個倉庫是獨立初始化的： 你的本地倉庫可能和遠端倉庫是獨立建立的，它們沒有共同的源始提交。(我的案例是這個情況)
    * 本地倉庫歷史被重寫過： 你的本地 tt1 分支的歷史可能被使用 `git rebase --onto` 或類似的命令重寫過，導致它與遠端分支的歷史不再一致
* 使用 `--allow-unrelated-histories` 進行強制合併。
```bash
git merge --allow-unrelated-histories temp-tt1
```
執行這個指令後，`Git` 會嘗試合併這兩個不相關的歷史。如果出現衝突，需要人工編輯有衝突的檔案，選擇你想要保留的內容（可以同時保留本地和遠端的修改，或者只保留其中一方的），手法如下：
```bash!
# 查看有那些因前述合併指令,比對並標記差異而造成異動的文件
git status
# git status 的輸出會列出 "Unmerged paths" 下的檔案，這些就是你需要解決衝突的檔案。
# 對標記差異的地方(Git 會在這些檔案中用特殊的標記（例如 <<<<<<<、=======、>>>>>>>）標示出衝突的部分，顯示本地的修改和遠端的修改。)進行人工比對合併,刪掉不應存在的,保留要保留的,還需要移除 Git 插入的衝突標記。
# 完成後將所有衝突且修正完的文件加入暫存區以供提交
git add <有衝突並修正完成的檔案>
# 將合併結果提交本地repo
git commit -m "Merge unrelated histories: temp-tt1 into tt1"
```

:::

## 結論
1. 如果能保證遠端的repo版本正確,可以直接取代本地端的repo內容,那使用**方法A** `git reset --hard origin/tt1` 是最為快速而簡單的. 
2. 若不敢百分百保證,那就要用**方法B**`git merge`的指令來比對出差異內容,再修正之.
3. 在正常版本同步操作狀況下: 將遠端倉提交的版本同步至本地倉
```
git pull origin tt1:tt1
```
4. 在正常版本同步操作狀況下: 將本地倉提交推送至遠端倉.
```
git push tt1 origin/tt1
```