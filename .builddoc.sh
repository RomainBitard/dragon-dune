echo "Document Building Script"
echo "All documents are build from dragon-dune.odt"
echo "Uses pandoc and libreoffice"
pandoc dragon-dune.odt -o dragon-dune.md
libreoffice --headless --convert-to pdf dragon-dune.odt
cat "dragon-dune text board.txt" >> dragon-dune.md
cp ./dragon-dune.md dragon-dune.txt
cp ./dragon-dune.md README.md
cp ./dragon-dune.md ./docs/README.md
pandoc -s dragon-dune.md -o dragon-dune.html
libreoffice --headless --convert-to pdf dragon-dune.odt

