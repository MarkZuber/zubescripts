git config --global --replace-all core.editor 'c:/progra~1/notepad2/notepad2.exe'

git config --global diff.tool p4merge
git config --global difftool.external "p4merge.exe $LOCAL $REMOTE"
git config --global difftool.prompt false

git config --global merge.tool p4merge
git config --global mergetool.external "p4merge.exe $BASE $LOCAL $REMOTE $MERGED"
git config --global mergetool.prompt false
git config --global mergetool.trustExitCode false
git config --global mergetool.keepBackup false