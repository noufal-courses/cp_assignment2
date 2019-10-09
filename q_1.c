#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "gpio.h"
//This is an example
int main(void)
{
	gpio_properties out_gpio, in_gpio;
	out_gpio = gpio_create(&out_gpio, 60, OUTPUT_PIN);
	in_gpio = gpio_create(&in_gpio, 66, INPUT_PIN);
	gpio_open(&out_gpio);
	gpio_open(&in_gpio);
	for(int i = 0 ; i < 10; i++)
	{
		gpio_set_value(&out_gpio, 1);
		usleep(1000000);
		printf("%d\n", gpio_get_value(&in_gpio));
		gpio_set_value(&out_gpio, 0);
		usleep(1000000);
		printf("%d\n", gpio_get_value(&in_gpio));
	}
	//test
	gpio_close(&out_gpio);
	gpio_close(&in_gpio);
	return 0;
}
