object FizzBuzz {
	def main(args: Array[String]) {
		for (i <- 1 to 100) {
			var printMe = "";
			if (i%3 == 0) {
				printMe += "Fizz";
			}
			if (i%5 == 0) {
				printMe += "Buzz";
			}
			if (printMe == "") {
				printMe = i.toString;
			}

			println(printMe);
		}
	}
}
