
# Path to pkg list
pathtopkglist=${1:- "essentials-casks.txt"}

pathtopkglist=$(cat $pathtopkglist)

# Check contents
echo "Checking contents of $pathtopkglist"
echo $pathtopkglist;
echo ----------------
echo

# Loop through list of packages and install each
IFS=' '
while read app;
do
        printf "\nAPPLICATION TO INSTALL:\n\t $app\n----------------\n\n";
        brew  install $app 2&>1 /tmp/brew-installer.log && printf "\nINSTALLED $app\n------------\n" || printf "\nERROR: INSTALLATION OF $app FAILED\n---------------------\n";
done<<<$pathtopkglist
~                                   
