# Release version 1.0.1

## Release summary 

Fixed minor issues with compliance of the APAtree-package to CRAN policy and cross-platform compatibility (mainly in src/MAKEVARS, many thanks to Brian Ripley for pointing this out). 

## Test environments
* local ubuntu 18.04, R 4.1.0
* R-hub with default settings on platforms:
  * Windows Server 2008 R2 SP1, R-devel, 32/64 bit
  * Ubuntu Linux 20.04.1 LTS, R-release, GCC
  * Fedora Linux, R-devel, clang, gfortran
  * macOS 10.13.6 High Sierra, R-release, CRAN's setup
* win-builder (devel)

## Test results

There was 1 NOTE on win-builder and on all R-hub platforms except macOS:

  * Possibly misspelled words in DESCRIPTION:
  Glatthorn (17:4)
  NDiv (16:74)
  * Found the following (possibly) invalid DOIs: DOI: 10.1093/forestry/cps052
  
All words in DESCRIPTION are spelled correctly and the DOI is correct as well.

____

# Release version 1.0.0

## Resubmission
Thanks a lot for your comments. In this version I have

* adapted DESCRIPTION (title length reduced, replaced backquote with single quote, use single quote for package names)
* Replaced 'cat()' with 'message()'. Exceptions: print function and when using 'cat()' to write to a file.
* Ensured that user's par settings are restored 'on.exit()' in 'plot.apa_list()'.
* Ensured that user's par settings are restored in examples and vignettes.
* Reduced maximum number of cores to 2 in example code.

## Test environments
Tested again before resubmission
* local ubuntu 18.04, R 4.1.0
* R-hub with default settings on platforms:
  * Windows Server 2008 R2 SP1, R-devel, 32/64 bit
  * Ubuntu Linux 20.04.1 LTS, R-release, GCC
  * Fedora Linux, R-devel, clang, gfortran
  * macOS 10.13.6 High Sierra, R-release, CRAN's setup
* win-builder


## R CMD check results
There were no ERRORs or WARNINGs. 

There was 1 NOTE on all R-hub platforms except macOS and on win-builder:

  * Possibly misspelled words in DESCRIPTION
  * Found the following (possibly) invalid DOIs: DOI: 10.1093/forestry/cps052
  
The words in the DESCRIPTION Files were checked and they are all spelled correctly. I have no idea why the DOI should be invalid. It is specified exactly as suggested in (https://cran.r-project.org/web/packages/submission_checklist.html) and the DOI is correct.
