/**
 * --------------����"��������K60�ײ��V3"�Ĺ��̣�LPLD_SerialInterrupt��-----------------
 * @file LPLD_SerialInterrupt.c
 * @version 0.1
 * @date 2013-9-29
 * @brief ����UARTģ�鼰���жϹ��ܣ�ʵ�ִ��ڵ������շ���
 *
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * http://www.lpld.cn
 * mail:support@lpld.cn
 * Ӳ��ƽ̨:  LPLD K60 Card / LPLD K60 Nano
 *
 * �����̻���"��������K60�ײ��V3"������
 * ���п�Դ�������"lib"�ļ����£��û����ظ��ĸ�Ŀ¼�´��룬
 * �����û������豣����"project"�ļ����£��Թ����������ļ�������
 * �ײ��ʹ�÷���������ĵ��� 
 *
 */
#include "common.h"

/****************************************
 ˵����
   *��MiniUSB�߲���RUSH Kinetis�������USB
    ������������������USB�ӿڡ�
   *ʹ�ô��ڵ������ֲ���������Ϊ9600
   *ʹ�ô��ڵ������ֲ鿴���н��
 ****************************************/

//��������  
void uart_init(void);
void uart_isr(void);

void gpio_init (void);

//��������
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
 * ��ʼ��UART5ģ��
 *
 */
void uart_init(void)
{
  uart0_init_struct.UART_Uartx = UART0; //ʹ��UART5
  uart0_init_struct.UART_BaudRate = 9600; //���ò�����9600
  uart0_init_struct.UART_RxPin = PTB16;  //��������ΪPTE9
  uart0_init_struct.UART_TxPin = PTB17;  //��������ΪPTE8
  uart0_init_struct.UART_RxIntEnable = TRUE;    //ʹ�ܽ����ж�
  uart0_init_struct.UART_RxIsr = uart_isr;      //���ý����жϺ���
  //��ʼ��UART
  LPLD_UART_Init(uart0_init_struct);
  //ʹ��UART�ж�
  LPLD_UART_EnableIrq(uart0_init_struct);
}

/*
 * UART5�����жϺ���
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