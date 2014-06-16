#include <iostream>
using namespace std;

int main()
{
	for (int i = 0; i < 101; i += 1)
	{
		if (i%3 == 0 && i%5 == 0)
		{
			cout << "FizzBuzz";
		}
		else if (i%3 == 0)
		{
			cout << "Fizz";
		}
		else if (i%5 == 0)
		{
			cout << "Buzz";
		}
		else
		{
			cout << i;
		}

		cout << endl;
	}

	return 0;
}
