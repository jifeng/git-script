确保本地master上已经是最新的代码

    git checkout master
    git pull origin master


在自己开发的分支

    git rebase master

然后有冲突的话会停下来 解决完冲突之后,both modified 部分

    git add (编辑的文件)

然后

    git rebase --continue

如果已经发起pull request，可以先删除之前的分支，再重新发一次

    git push origin :older_branch
    git push origin older_branch
