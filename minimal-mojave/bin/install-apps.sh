function install_apps(){
        # Path to pkg list
        apps="config/apps.txt"

        # Check contents
        echo ----------------
        echo 

        # Loop through list of packages and install each
        IFS=' '
        while read app;
        do
                printf "\nAPPLICATION TO INSTALL:\n\t $app\n----------------\n\n";
                brew  install $app  && printf "\nINSTALLED $app\n\n--------------\n" || "\nERROR: INSTALLATION OF $app FAILED\n---------------------\n";
        done<<<$(cat $apps)


}



install_apps;
