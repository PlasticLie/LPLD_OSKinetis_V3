/**
 * --------------基于"拉普兰德K60底层库V3"的工程（LPLD_SerialInterrupt）-----------------
 * @file LPLD_SerialInterrupt.c
 * @version 0.1
 * @date 2013-9-29
 * @brief 利用UART模块及其中断功能，实现串口的数据收发。
 *
 * 版权所有:北京拉普兰德电子技术有限公司
 * http://www.lpld.cn
 * mail:support@lpld.cn
 * 硬件平台:  LPLD K60 Card / LPLD K60 Nano
 *
 * 本工程基于"拉普兰德K60底层库V3"开发，
 * 所有开源代码均在"lib"文件夹下，用户不必更改该目录下代码，
 * 所有用户工程需保存在"project"文件夹下，以工程名定义文件夹名，
 * 底层库使用方法见相关文档。 
 *
 */
#include "common.h"

/****************************************
 说明：
   *将MiniUSB线插入RUSH Kinetis开发板的USB
    插座，并连接至电脑USB接口。
   *使用串口调试助手波特率设置为9600
   *使用串口调试助手查看运行结果
 ****************************************/

//函数声明  
void uart_init(void);
void uart_isr(void);

void gpio_init (void);

//变量声明
UART_InitTypeDef uart0_init_struct;
GPIO_InitTypeDef gpio_init_struct;

  char flag;
void main (void)
{
  char i;
  
  gpio_init ();
  
  uart_init();
  LPLD_UART_PutCharArr(UART0, "Input something:\r\n", 20);
  
  while(1)
  {
      if (flag)
      {
        for (i = 20; i < 25; i ++)
         LPLD_GPIO_Toggle_b(PTB, i);
        flag = 0;
      }
  } 
  
}

/*
 * 初始化UART5模块
 *
 */
void uart_init(void)
{
  uart0_init_struct.UART_Uartx = UART0; //使用UART5
  uart0_init_struct.UART_BaudRate = 9600; //设置波特率9600
  uart0_init_struct.UART_RxPin = PTB16;  //接收引脚为PTE9
  uart0_init_struct.UART_TxPin = PTB17;  //发送引脚为PTE8
  uart0_init_struct.UART_RxIntEnable = TRUE;    //使能接收中断
  uart0_init_struct.UART_RxIsr = uart_isr;      //设置接收中断函数
  //初始化UART
  LPLD_UART_Init(uart0_init_struct);
  //使能UART中断
  LPLD_UART_EnableIrq(uart0_init_struct);
}

/*
 * UART5接收中断函数
 *
 */
void uart_isr(void)
{
  int8 recv;
  
  recv = LPLD_UART_GetChar(UART0);
  LPLD_UART_PutChar(UART0, recv);
  
  flag = 1;
}

void gpio_init (void)
{
  gpio_init_struct.GPIO_PTx = PTB;
  gpio_init_struct.GPIO_Pins = GPIO_Pin20|GPIO_Pin21|GPIO_Pin22|GPIO_Pin23;
  gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
  gpio_init_struct.GPIO_Output = OUTPUT_H;
  gpio_init_struct.GPIO_PinControl = IRQC_DIS;
  LPLD_GPIO_Init(gpio_init_struct);
}