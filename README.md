# rpkg
This R script and rpkg.csv are used for quick installation
of my frequently used packages.

To use the package, run the following commands in R:
```
library('RCurl')
source('https://github.com/nhchauvnu/rpkg/inspkg.r')
```
If RCurl is not installed, install it by:
```
install.packages('RCurl')
```
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
