for i in `ls dots`; do cp ~/.$i dots/$i; done
git commit -a -m "Updated dots!"
git push
