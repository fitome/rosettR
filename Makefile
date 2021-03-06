pkg = rosettR

local_library := ~/R-dev
R_LIBS := $(local_library):${R_LIBS}

.PHONY: all install check build clean

all: clean objects build check install

install:
	R CMD INSTALL $(pkg)*.tar.gz

objects:
	(cd etc && ./create-objects.R)

build:
	Rscript -e "library(roxygen2);roxygenize('pkg');"
	R CMD build pkg --resave-data

check:
	R CMD check $(pkg)*.tar.gz

clean:
	rm -rf $(local_library)/00LOCK-$(pkg)
	rm -rf $(local_library)/00LOCK-pkg
	rm -rf pkg/src/*.{so,o,rds}
	rm -f $(pkg)*.tar.gz
	rm -rf *.Rcheck
	rm -rf pkg/man
	rm -rf pkg/NAMESPACE
	find -name .Rhistory -exec rm {} \; 
	find -name "*~" -exec rm {} \; 
