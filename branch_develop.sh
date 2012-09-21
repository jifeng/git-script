
#显示存在的所有分支
git branch -a

#切换到master
git checkout master
#切换到branch new1
git checkout new1

#fetch最新代码
git fetch origin master

#显示分支列表，包括远程。
git branch -a
git fetch -p origin

#####################

#创建分支new1
git branch new1

#提交修改内容到分支new1
git push origin new1

#切换到主干master
git checkout master

#将主干master-new1合并(在master下运行该指令)
git merge master new1

#将变更提交到主干master
git push origin master

#切换到主干master
git checkout master


#删除分支
git branch -d new1
#删除服务器分支
git push origin :new1


#合并2个分支
git merge issue65-user-ots origin/issue62-updateUser-ots


