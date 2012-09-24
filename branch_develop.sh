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

#从master中获取新的代码
git pull origin master

#修改代码，后提交.这里add不仅使用于新增的文件，对于第二次修改的文件，也需要这样写
git add *.js
git commit

#直接提交变更的代码
git commit -a

#提交修改内容到分支new1,服务器地址要指定，不然它会往master和各个分支中提交一遍
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
#删除服务器分支，origin的含义是因为服务器可以有多个
git push origin :new1

#合并2个分支
git merge issue65-user-ots origin/issue62-updateUser-ots

#pull request
#选择项目后，在网页中选择Pull Request项目,请求别人来合并自己的代码即可
