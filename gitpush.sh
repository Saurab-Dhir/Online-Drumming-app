OS="`uname`"
case $OS in
  'MINGW64_NT-10.0-19044')
    OS='Windows'
    ;;
  'WindowsNT')
    OS='Windows'
    ;;
  'Darwin') 
    OS='Mac'
    ;;
  *) ;;
esac

git fetch

git checkout -b $OS

git add .
git commit -m "Pushing from $OS machine"
git push

git checkout main
git merge $OS
git branch -d $OS

git push

read