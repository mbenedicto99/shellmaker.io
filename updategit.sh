#echo "# shellmaker.io" >> README.md
git init
git add *
git commit -m "commit $(date +%Y%m%d-%H%M%S)"
git remote add origin https://github.com/mbenedicto99/shellmaker.io.git
git push -u origin master
