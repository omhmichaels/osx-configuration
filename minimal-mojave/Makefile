REPO='osx-configuration'
REPO_PATH="https://github.com/omhmichaels/${REPO}.git"

.PHONY: setup
setup: 
	/bin/bash -c '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)';
	git clone "${REPO_PATH}" && cd "${REPO}";
	chmod 755 -R bin/*;

.PHONY: minimal
minimal: setup
	bin/install-apps.sh;
	bin/install-casks.sh;
	bin/tweak-macos.sh;
