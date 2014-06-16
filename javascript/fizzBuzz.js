for(i = 0; i < 101; i += 1) {
    printMe = '';

    if (i%3 == 0) {
        printMe += 'Fizz';
    }
    if (i%5 == 0) {
        printMe += 'Buzz';
    }
    if (printMe.length == 0) {
        printMe = i;
    }

    console.log(printMe);
}
