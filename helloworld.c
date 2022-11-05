
#include<linux/module.h>


static int  __init hello(void)
{
	printk("hello world\n");
	return 0;

}

static void  __exit cleanup(void)
{
	printk("Goodbye,world\n");

}

module_init(hello);
module_exit(cleanup);
MODULE_LICENSE("GPL");
