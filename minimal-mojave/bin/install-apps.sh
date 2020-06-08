function install_apps(){
        # Path to pkg list
        pathtopkglist=${1:- "apps.txt"}

        apps=$(cat $pathtoapplist)

        # Check contents
        echo "Checking contents of $pathtoapplist"
        echo $apps;
        echo ----------------
        echo 

        # Loop through list of packages and install each
        IFS=' '
        while read app;
        do
                printf "\nAPPLICATION TO INSTALL:\n\t $app\n----------------\n\n";
                brew  install $app 2&> /tmp/brew-installer.log && printf "\nINSTALLED $app\n------------\n" || printf "\nERROR: INSTALLATION OF $app FAILED\n---------------------\n";
        done<<<$apps


}

function install_casks(){

        # Path to pkg list
        pathtocasklist="config/casks.txt"}

        casks=$(cat $pathtocasklist)

        # Check contents
        echo "Checking contents of $casks"
        echo $casks;
        echo ----------------
        echo

        # Loop through list of packages and install each
        IFS=' '
        while read cask;
        do 
                printf "\nAPPLICATION TO INSTALL:\n\t $app\n----------------\n\n";
                brew cask install $cask 2&> /tmp/brew-installer.log && printf "\nINSTALLED $app\n------------\n" || printf "\nERROR: INSTALLATION OF $app FAILED\n---------------------\n";
        done<<<$casks
}

install_apps;
install_casks;