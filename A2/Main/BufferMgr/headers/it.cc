
#include <iostream>

class Foo {

public:
	~Foo () {
		std :: cout << "Foo!\n";
	}
};

class Boo {

public:
	~Boo () {
		std :: cout << "Boo!\n";
	}
};

int main () {

	Foo a;
	Boo b;
}
