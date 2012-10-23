在自己开发的分支git rebase master

然后有冲突的话会停下来 解决完冲突之后 git add (编辑的文件)

然后 git rebase --continue

最后生成了一个新的分支， git rebase操作完成之后

git checkout -b feature-rebase 
新建一个分支， 之前那个旧的开发的分支就可以删除了

feature-rebase  