#!
DATE=$(date)
wget -r -nv  https://static.repmyblock.org/BOEDocs/20250624/

find . -name "*.pdf" -exec pdftotext -layout {} \;
git add .

	git commit -m "${DATE}" .
	git pull --quiet
	git push
