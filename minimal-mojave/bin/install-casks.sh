function install_casks(){
        # Path to pkg list
        apps="config/casks.txt"

        # Check contents
        echo ----------------
        echo 

        # Loop through list of packages and install each
        IFS=' '
        while read app;
        do
                printf "\nAPPLICATION TO INSTALL:\n\t $app\n----------------\n\n";
                brew cask install $app  && printf "\nINSTALLED $app\n\n--------------\n" || "\nERROR: INSTALLATION OF $app FAILED\n---------------------\n";
        done<<<$(cat $apps)


}



install_casks;
