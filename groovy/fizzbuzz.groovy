(1..100).each() {
	def printMe = ""

	if (it % 3 == 0) {
		printMe += "Foo"
	}
	if (it % 5 == 0) {
		printMe += "Bar"
	}

	if (printMe == "") {
		printMe = it.toString()
	}

	println printMe
}
