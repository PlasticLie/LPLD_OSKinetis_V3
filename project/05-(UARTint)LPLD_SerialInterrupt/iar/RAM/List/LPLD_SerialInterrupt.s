///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    16/Feb/2014  17:41:02 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LPL /
//                    D_SerialInterrupt\app\LPLD_SerialInterrupt.c            /
//    Command line =  "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LP /
//                    LD_SerialInterrupt\app\LPLD_SerialInterrupt.c" -D       /
//                    LPLD_K60 -lCN "C:\embed\LPLD\LPLD_OSKinetis_V3\project\ /
//                    05-(UARTint)LPLD_SerialInterrupt\iar\RAM\List\" -lB     /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LP /
//                    LD_SerialInterrupt\iar\RAM\List\" -o                    /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LP /
//                    LD_SerialInterrupt\iar\RAM\Obj\" --no_cse --no_unroll   /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LP /
//                    LD_SerialInterrupt\iar\..\app\" -I                      /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LP /
//                    LD_SerialInterrupt\iar\..\..\..\lib\CPU\" -I            /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LP /
//                    LD_SerialInterrupt\iar\..\..\..\lib\common\" -I         /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LP /
//                    LD_SerialInterrupt\iar\..\..\..\lib\LPLD\" -I           /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LP /
//                    LD_SerialInterrupt\iar\..\..\..\lib\LPLD\HW\" -I        /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LP /
//                    LD_SerialInterrupt\iar\..\..\..\lib\LPLD\DEV\" -I       /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LP /
//                    LD_SerialInterrupt\iar\..\..\..\lib\uCOS-II\Ports\" -I  /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LP /
//                    LD_SerialInterrupt\iar\..\..\..\lib\uCOS-II\Source\"    /
//                    -I "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint /
//                    )LPLD_SerialInterrupt\iar\..\..\..\lib\FatFs\" -I       /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LP /
//                    LD_SerialInterrupt\iar\..\..\..\lib\FatFs\option\" -I   /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LP /
//                    LD_SerialInterrupt\iar\..\..\..\lib\USB\common\" -I     /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LP /
//                    LD_SerialInterrupt\iar\..\..\..\lib\USB\driver\" -I     /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LP /
//                    LD_SerialInterrupt\iar\..\..\..\lib\USB\descriptor\"    /
//                    -I "C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint /
//                    )LPLD_SerialInterrupt\iar\..\..\..\lib\USB\class\" -Ol  /
//                    -I "C:\Program Files (x86)\IAR Systems\Embedded         /
//                    Workbench 6.4\arm\CMSIS\Include\" -D ARM_MATH_CM4       /
//    List file    =  C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LPL /
//                    D_SerialInterrupt\iar\RAM\List\LPLD_SerialInterrupt.s   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME LPLD_SerialInterrupt

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Toggle_b
        EXTERN LPLD_UART_EnableIrq
        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_Init
        EXTERN LPLD_UART_PutChar
        EXTERN LPLD_UART_PutCharArr
        EXTERN __aeabi_memcpy4

        PUBLIC flag
        PUBLIC gpio_init
        PUBLIC gpio_init_struct
        PUBLIC main
        PUBLIC uart0_init_struct
        PUBLIC uart_init
        PUBLIC uart_isr

// C:\embed\LPLD\LPLD_OSKinetis_V3\project\05-(UARTint)LPLD_SerialInterrupt\app\LPLD_SerialInterrupt.c
//    1 /**
//    2  * --------------����"��������K60�ײ��V3"�Ĺ��̣�LPLD_SerialInterrupt��-----------------
//    3  * @file LPLD_SerialInterrupt.c
//    4  * @version 0.1
//    5  * @date 2013-9-29
//    6  * @brief ����UARTģ�鼰���жϹ��ܣ�ʵ�ִ��ڵ������շ���
//    7  *
//    8  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//    9  * http://www.lpld.cn
//   10  * mail:support@lpld.cn
//   11  * Ӳ��ƽ̨:  LPLD K60 Card / LPLD K60 Nano
//   12  *
//   13  * �����̻���"��������K60�ײ��V3"������
//   14  * ���п�Դ�������"lib"�ļ����£��û����ظ��ĸ�Ŀ¼�´��룬
//   15  * �����û������豣����"project"�ļ����£��Թ����������ļ�������
//   16  * �ײ��ʹ�÷���������ĵ��� 
//   17  *
//   18  */
//   19 #include "common.h"
//   20 
//   21 /****************************************
//   22  ˵����
//   23    *��MiniUSB�߲���RUSH Kinetis�������USB
//   24     ������������������USB�ӿڡ�
//   25    *ʹ�ô��ڵ������ֲ���������Ϊ9600
//   26    *ʹ�ô��ڵ������ֲ鿴���н��
//   27  ****************************************/
//   28 
//   29 //��������  
//   30 void uart_init(void);
//   31 void uart_isr(void);
//   32 
//   33 void gpio_init (void);
//   34 
//   35 //��������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   36 UART_InitTypeDef uart0_init_struct;
uart0_init_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   37 GPIO_InitTypeDef gpio_init_struct;
gpio_init_struct:
        DS8 20
//   38 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   39   char flag;
flag:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 void main (void)
//   41 {
//   42   char i;
//   43   
//   44   gpio_init ();
main:
        BL       gpio_init
//   45   
//   46   uart_init();
        BL       uart_init
//   47   LPLD_UART_PutCharArr(UART0, "Input something:\r\n", 20);
        MOVS     R2,#+20
        LDR.N    R1,??DataTable3
        LDR.N    R0,??DataTable3_1  ;; 0x4006a000
        BL       LPLD_UART_PutCharArr
        B.N      ??main_0
//   48   
//   49   while(1)
//   50   {
//   51       if (flag)
//   52       {
//   53         for (i = 20; i < 25; i ++)
//   54          LPLD_GPIO_Toggle_b(PTB, i);
??main_1:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable3_2  ;; 0x400ff040
        BL       LPLD_GPIO_Toggle_b
        ADDS     R4,R4,#+1
??main_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+25
        BCC.N    ??main_1
//   55         flag = 0;
        LDR.N    R0,??DataTable3_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
??main_0:
        LDR.N    R0,??DataTable3_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_0
        MOVS     R4,#+20
        B.N      ??main_2
//   56       }
//   57   } 
//   58   
//   59 }
//   60 
//   61 /*
//   62  * ��ʼ��UART5ģ��
//   63  *
//   64  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 void uart_init(void)
//   66 {
uart_init:
        PUSH     {R7,LR}
//   67   uart0_init_struct.UART_Uartx = UART0; //ʹ��UART5
        LDR.N    R0,??DataTable3_4
        LDR.N    R1,??DataTable3_1  ;; 0x4006a000
        STR      R1,[R0, #+0]
//   68   uart0_init_struct.UART_BaudRate = 9600; //���ò�����9600
        LDR.N    R0,??DataTable3_4
        MOV      R1,#+9600
        STR      R1,[R0, #+4]
//   69   uart0_init_struct.UART_RxPin = PTB16;  //��������ΪPTE9
        LDR.N    R0,??DataTable3_4
        MOVS     R1,#+48
        STRB     R1,[R0, #+9]
//   70   uart0_init_struct.UART_TxPin = PTB17;  //��������ΪPTE8
        LDR.N    R0,??DataTable3_4
        MOVS     R1,#+49
        STRB     R1,[R0, #+8]
//   71   uart0_init_struct.UART_RxIntEnable = TRUE;    //ʹ�ܽ����ж�
        LDR.N    R0,??DataTable3_4
        MOVS     R1,#+1
        STRB     R1,[R0, #+10]
//   72   uart0_init_struct.UART_RxIsr = uart_isr;      //���ý����жϺ���
        LDR.N    R0,??DataTable3_4
        ADR.W    R1,uart_isr
        STR      R1,[R0, #+12]
//   73   //��ʼ��UART
//   74   LPLD_UART_Init(uart0_init_struct);
        LDR.N    R1,??DataTable3_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   75   //ʹ��UART�ж�
//   76   LPLD_UART_EnableIrq(uart0_init_struct);
        LDR.N    R1,??DataTable3_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//   77 }
        POP      {R0,PC}          ;; return
//   78 
//   79 /*
//   80  * UART5�����жϺ���
//   81  *
//   82  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   83 void uart_isr(void)
//   84 {
uart_isr:
        PUSH     {R7,LR}
//   85   int8 recv;
//   86   
//   87   recv = LPLD_UART_GetChar(UART0);
        LDR.N    R0,??DataTable3_1  ;; 0x4006a000
        BL       LPLD_UART_GetChar
//   88   LPLD_UART_PutChar(UART0, recv);
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable3_1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//   89   
//   90   flag = 1;
        LDR.N    R0,??DataTable3_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   91 }
        POP      {R0,PC}          ;; return
//   92 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   93 void gpio_init (void)
//   94 {
gpio_init:
        PUSH     {R7,LR}
//   95   gpio_init_struct.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable3_5
        LDR.N    R1,??DataTable3_2  ;; 0x400ff040
        STR      R1,[R0, #+0]
//   96   gpio_init_struct.GPIO_Pins = GPIO_Pin20|GPIO_Pin21|GPIO_Pin22|GPIO_Pin23;
        LDR.N    R0,??DataTable3_5
        MOVS     R1,#+15728640
        STR      R1,[R0, #+4]
//   97   gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
        LDR.N    R0,??DataTable3_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
//   98   gpio_init_struct.GPIO_Output = OUTPUT_H;
        LDR.N    R0,??DataTable3_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+13]
//   99   gpio_init_struct.GPIO_PinControl = IRQC_DIS;
        LDR.N    R0,??DataTable3_5
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  100   LPLD_GPIO_Init(gpio_init_struct);
        LDR.N    R1,??DataTable3_5
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  101 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     `?<Constant "Input something:\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     uart0_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     gpio_init_struct

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Input something:\\r\\n">`:
        DATA
        DC8 "Input something:\015\012"
        DC8 0

        END
// 
//  41 bytes in section .bss
//  20 bytes in section .rodata
// 240 bytes in section .text
// 
// 240 bytes of CODE  memory
//  20 bytes of CONST memory
//  41 bytes of DATA  memory
//
//Errors: none
//Warnings: none
