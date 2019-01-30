#include <ctime>
#include<iostream>

int main (int argc, char* argv[]){
	std::time_t result = std::time(nullptr);
	for(int i=0; i<100000000; i++){
		std::asctime(std::localtime(&result));
		std::cout << i << "\t"<< result << std::endl;
	}
	return 0;
}
