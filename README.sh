echo "# Job Search" > README.md
echo " " >> README.md
echo "This GitHub repository contains a few of the cover letters and CVs I used to apply for jobs. Below is a snap shot of each letter with links to the full letter and CV below." >> README.md

for i in *letter.md
do 
	CV=$(basename $i letter.md)CV.pdf
	ls $i | xargs cat | head -1 >> README.md
	echo " " >> README.md
	echo "Click [here to read the letter](./$i) or " >> README.md
	echo "or [view the current CV.](./$CV) " >> README.md
	echo " " >> README.md
done