OS="`uname`"
case $OS in
  'Linux')
    OS='Linux'
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