///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    16/Feb/2014  16:24:53 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_S /
//                    erialComm\app\LPLD_SerialComm.c                         /
//    Command line =  "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\app\LPLD_SerialComm.c" -D LPLD_K60 -lCN      /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\RAM\List\" -lB                           /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\RAM\List\" -o                            /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\RAM\Obj\" --no_cse --no_unroll           /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\..\app\" -I                              /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\..\..\..\lib\CPU\" -I                    /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\..\..\..\lib\common\" -I                 /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\..\..\..\lib\LPLD\" -I                   /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\..\..\..\lib\LPLD\HW\" -I                /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\..\..\..\lib\LPLD\DEV\" -I               /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\..\..\..\lib\uCOS-II\Ports\" -I          /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\..\..\..\lib\uCOS-II\Source\" -I         /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\..\..\..\lib\FatFs\" -I                  /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\..\..\..\lib\FatFs\option\" -I           /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\..\..\..\lib\USB\common\" -I             /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\..\..\..\lib\USB\driver\" -I             /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\..\..\..\lib\USB\descriptor\" -I         /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_ /
//                    SerialComm\iar\..\..\..\lib\USB\class\" -Ol -I          /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.4\arm\CMSIS\Include\" -D ARM_MATH_CM4                 /
//    List file    =  C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_S /
//                    erialComm\iar\RAM\List\LPLD_SerialComm.s                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME LPLD_SerialComm

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_Init
        EXTERN LPLD_UART_PutChar
        EXTERN LPLD_UART_PutCharArr
        EXTERN __aeabi_memcpy4
        EXTERN printf

        PUBLIC main
        PUBLIC uart0_init_struct
        PUBLIC uart_init

// C:\embed\LPLD\LPLD_OSKinetis_V3\project\04-(UART)LPLD_SerialComm\app\LPLD_SerialComm.c
//    1 /**
//    2  * --------------����"��������K60�ײ��V3"�Ĺ��̣�LPLD_SerialComm��-----------------
//    3  * @file LPLD_SerialComm.c
//    4  * @version 0.1
//    5  * @date 2013-9-29
//    6  * @brief ����UARTģ�飬ʵ�ִ��ڵ������շ���
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
//   31 //��������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   32 UART_InitTypeDef uart0_init_struct;
uart0_init_struct:
        DS8 20
//   33 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void main (void)
//   35 {
//   36   int8 recv;
//   37   
//   38   uart_init();
main:
        BL       uart_init
//   39   LPLD_UART_PutCharArr(UART0, "Input something:\r\n", 18);
        MOVS     R2,#+18
        LDR.N    R1,??DataTable1
        LDR.N    R0,??DataTable1_1  ;; 0x4006a000
        BL       LPLD_UART_PutCharArr
//   40   printf ("hello world !\n");
        LDR.N    R0,??DataTable1_2
        BL       printf
//   41   while(1)
//   42   {
//   43     recv = LPLD_UART_GetChar(UART0);
??main_0:
        LDR.N    R0,??DataTable1_1  ;; 0x4006a000
        BL       LPLD_UART_GetChar
//   44     LPLD_UART_PutChar(UART0, recv);
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable1_1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
        B.N      ??main_0
//   45   } 
//   46   
//   47 }
//   48 
//   49 /*
//   50  * ��ʼ��UART5ģ��
//   51  *
//   52  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 void uart_init(void)
//   54 {
uart_init:
        PUSH     {R7,LR}
//   55   uart0_init_struct.UART_Uartx = UART0; //ʹ��UART5
        LDR.N    R0,??DataTable1_3
        LDR.N    R1,??DataTable1_1  ;; 0x4006a000
        STR      R1,[R0, #+0]
//   56   uart0_init_struct.UART_BaudRate = 9600; //���ò�����9600
        LDR.N    R0,??DataTable1_3
        MOV      R1,#+9600
        STR      R1,[R0, #+4]
//   57   uart0_init_struct.UART_RxPin = PTB16;  //��������ΪPTE9
        LDR.N    R0,??DataTable1_3
        MOVS     R1,#+48
        STRB     R1,[R0, #+9]
//   58   uart0_init_struct.UART_TxPin = PTB17;  //��������ΪPTE8
        LDR.N    R0,??DataTable1_3
        MOVS     R1,#+49
        STRB     R1,[R0, #+8]
//   59   //��ʼ��UART
//   60   LPLD_UART_Init(uart0_init_struct);
        LDR.N    R1,??DataTable1_3
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   61 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     `?<Constant "Input something:\\r\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     `?<Constant "hello world !\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     uart0_init_struct

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

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "hello world !\\n">`:
        DATA
        DC8 "hello world !\012"
        DC8 0

        END
// 
//  20 bytes in section .bss
//  36 bytes in section .rodata
// 102 bytes in section .text
// 
// 102 bytes of CODE  memory
//  36 bytes of CONST memory
//  20 bytes of DATA  memory
//
//Errors: none
//Warnings: none
