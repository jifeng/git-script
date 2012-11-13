
#主干冲突#

    git pull origin master

报如下错误

    error: Your local changes to the following files would be overwritten by merge:
    xxx.js
    Please, commit your changes or stash them before you can merge.

解决方案：

    git stash
    git merge origin/master 或者 git pull origin master
    git stash pop

