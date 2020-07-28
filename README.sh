echo "# Jobs I recently applied for " > README.md
echo " " >> README.md

for i in *letter.md
do 
	CV=$(basename $i letter.md)CV.pdf
	ls -rt $i | xargs cat | head >> README.md
	echo " " >> README.md
	echo "[Link to full letter with the application.](./$i) " >> README.md
	echo "[Link to CV included with the application.](./$CV) " >> README.md
	echo " " >> README.md
done