REPO="https://github.com/omhmichaels/osx-configuration.git"

.PHONY: setup
setup: 
	bash "bin/install-homebrew.sh" && brew install git

.PHONY: minimal
minimal:
	git clone "${REPO}" && cd "${REPO}";
	bash "bin/install-apps.sh"

.PHONY: tweak
tweak: 
	bash "bin/tweak-macos.sh"

