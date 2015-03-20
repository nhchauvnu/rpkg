### rpkg
This R script and rpkg.csv are used for quick installation
of my frequently used packages.

To use the package, run the following commands in R:
```
library(devtools)
source_url('https://raw.githubusercontent.com/nhchauvnu/rpkg/master/inspkg.r')
```
If the 'devtools' package is not installed, install it by:
```
install.packages('devtools')

```
### How to use the script
To check installed packages:
```
list1()
```
to check not-installed packages:
```
list0()
```

To installed all frequently used packages:
```
insmypkg()
```
To install a single package:
```
inspkg('packagename')
```
To check packages status:
```
printpkg()
```
To check status of a single package:
```
chkpkg('packagename')
```
