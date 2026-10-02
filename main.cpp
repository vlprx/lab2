#include <iostream>
#include "calculator.h"

int main()
{
Calculator calc;

std::cout << "Add: " << calc.Add(5.5, 2.2) << std::endl;
std::cout << "Sub: " << calc.Sub(5.5, 2.2) << std::endl;

return 0;
}
