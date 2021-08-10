## Test environments
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
  
The words in the DESCRIPTION Files were checked and they are all spelled correctly.
