## Get all local files listed in important-files.txt from the home dir and put them in the current directory

files=$(cat important-files.txt)
for file in $files; do
    cp ~/$file .
done

rm -rf Brewfile

brew bundle dump

