foreach (1..100) {

	if ($_ % 3 == 0) {
		print "Fizz";
	}

	if ($_ % 5 == 0) {
		print "Buzz";
	}

	if (($_ % 3 != 0) && ($_ % 5 != 0)) {
		print $_;
	}


	print "\n";
}
