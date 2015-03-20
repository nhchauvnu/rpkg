library(RCurl)
pkglist = 'https://git.com/nhchauvnu/rpkg/rpkg.csv'
chkpkg = function(pkg) {
	pkglist = installed.packages()[,1]
	m = sum(pkglist == pkg)
	if (m <= 0) return(FALSE)
	else return(TRUE)
}

printstat = function(pkg) {
	if (chkpkg(pkg)) print(paste("Installed:",pkg))
	else print(paste("Not installed:",pkg))
}

printpkg = function() {
	pkg = as.character(read.csv(pkglist)$pkg)
	for (i in pkg)
		printstat(i)
}

list0 = function() {
	pkg = as.character(read.csv(pkglist)$pkg)
	print("Not yet installed packages:")
	for (i in pkg)
		if (!chkpkg(i)) print(i)
}

list1 = function() {
	pkg = as.character(read.csv(pkglist)$pkg)
	print("Not yet installed packages:")
	for (i in pkg)
		if (chkpkg(i)) print(i)
}

inspkg = function(pkg) {
	if (!chkpkg(pkg)) {
		print(paste(" >>> Installing ",pkg))
		install.packages(pkg)
	}
	else print(paste(" >>> Package", pkg, "is already installed"))
}

insmypkg = function() {
	pkg = as.character(read.csv(pkglist)$pkg)
	for (i in pkg)
		if (!chkpkg(i)) {
			print(paste(" >>> Installing ",i))
			install.packages(i)
		}
}

