file = paste('wget -O -', 'https://raw.githubusercontent.com/nhchauvnu/rpkg/master/rpkg.csv')
pkg = as.character(read.csv(pipe(file))$pkg)

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
	for (i in pkg)
		printstat(i)
}

list0 = function() {
	print("Not yet installed packages:")
	for (i in pkg)
		if (!chkpkg(i)) print(i)
}

list1 = function() {
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
	for (i in pkg)
		if (!chkpkg(i)) {
			print(paste(" >>> Installing ",i))
			install.packages(i)
		}
}

