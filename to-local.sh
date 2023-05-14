## Get all local files listed in important-files.txt from the home dir and put them in the current directory

# install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew bundle

files=$(cat important-files.txt)
for file in $files; do
    cp ./$file ~/
done

