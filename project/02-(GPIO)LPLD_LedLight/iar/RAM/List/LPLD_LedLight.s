///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    16/Feb/2014  11:35:21 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_L /
//                    edLight\app\LPLD_LedLight.c                             /
//    Command line =  "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\app\LPLD_LedLight.c" -D LPLD_K60 -lCN          /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\iar\RAM\List\" -lB                             /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\iar\RAM\List\" -o                              /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\iar\RAM\Obj\" --no_cse --no_unroll             /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\iar\..\app\" -I "C:\embed\LPLD\LPLD_OSKinetis_ /
//                    V3\project\02-(GPIO)LPLD_LedLight\iar\..\..\..\lib\CPU\ /
//                    " -I "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO) /
//                    LPLD_LedLight\iar\..\..\..\lib\common\" -I              /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\iar\..\..\..\lib\LPLD\" -I                     /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\iar\..\..\..\lib\LPLD\HW\" -I                  /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\iar\..\..\..\lib\LPLD\DEV\" -I                 /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\iar\..\..\..\lib\uCOS-II\Ports\" -I            /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\iar\..\..\..\lib\uCOS-II\Source\" -I           /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\iar\..\..\..\lib\FatFs\" -I                    /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\iar\..\..\..\lib\FatFs\option\" -I             /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\iar\..\..\..\lib\USB\common\" -I               /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\iar\..\..\..\lib\USB\driver\" -I               /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\iar\..\..\..\lib\USB\descriptor\" -I           /
//                    "C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_ /
//                    LedLight\iar\..\..\..\lib\USB\class\" -Ol -I            /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.4\arm\CMSIS\Include\" -D ARM_MATH_CM4                 /
//    List file    =  C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_L /
//                    edLight\iar\RAM\List\LPLD_LedLight.s                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME LPLD_LedLight

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Toggle_b
        EXTERN __aeabi_memcpy4

        PUBLIC delay
        PUBLIC gpio_init_struct
        PUBLIC init_gpio
        PUBLIC main

// C:\embed\LPLD\LPLD_OSKinetis_V3\project\02-(GPIO)LPLD_LedLight\app\LPLD_LedLight.c
//    1 /**S
//    2  * --------------基于"拉普兰德K60底层库V3"的工程（LPLD_LedLight）-----------------
//    3  * @file LPLD_LedLight.c
//    4  * @version 0.1
//    5  * @date 2013-9-29
//    6  * @brief 利用GPIO模块，控制LED小灯的亮灭。
//    7  *
//    8  * 版权所有:北京拉普兰德电子技术有限公司
//    9  * http://www.lpld.cn
//   10  * mail:support@lpld.cn
//   11  * 硬件平台:  LPLD K60 Card / LPLD K60 Nano
//   12  *
//   13  * 本工程基于"拉普兰德K60底层库V3"开发，
//   14  * 所有开源代码均在"lib"文件夹下，用户不必更改该目录下代码，
//   15  * 所有用户工程需保存在"project"文件夹下，以工程名定义文件夹名，
//   16  * 底层库使用方法见相关文档。 
//   17  *
//   18  */
//   19 #include "common.h"
//   20 
//   21 /****************************************
//   22  说明：
//   23    *通过修改CARD宏定义适应不同核心板
//   24  ****************************************/
//   25 
//   26 //若使用拉普兰德K60 Card则为1，若使用K60 Nano则为0
//   27 //#define CARD  1   
//   28 
//   29 //函数声明
//   30 void init_gpio(void);
//   31 void delay(void);
//   32 //变量声明

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   33 GPIO_InitTypeDef gpio_init_struct;
gpio_init_struct:
        DS8 20
//   34 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void main (void)
//   36 {
//   37   int i;
//   38 
//   39   //初始化 GPIO
//   40   init_gpio();
main:
        BL       init_gpio
//   41   
//   42 #if(CARD) 
//   43   i=8;
//   44 #else
//   45   i=19;
        MOVS     R4,#+19
//   46 #endif
//   47   
//   48   while(1)
//   49   {
//   50 #if(CARD)
//   51     //D1至D8依次触发点亮、熄灭
//   52     LPLD_GPIO_Toggle_b(PTD, i);
//   53     i+=1;
//   54     if(i==16)
//   55        i=8;
//   56 #else
//   57     //D1至D4依次触发点亮、熄灭
//   58     LPLD_GPIO_Toggle_b(PTB, i);
??main_0:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable1  ;; 0x400ff040
        BL       LPLD_GPIO_Toggle_b
//   59     i+=1;
        ADDS     R4,R4,#+1
//   60     if(i==24)
        CMP      R4,#+24
        BNE.N    ??main_1
//   61        i=20;
        MOVS     R4,#+20
//   62 #endif
//   63     delay();
??main_1:
        BL       delay
        B.N      ??main_0
//   64   }
//   65 }
//   66 
//   67 /*
//   68  * 初始化连接LED灯的GPIO引脚
//   69  *
//   70  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   71 void init_gpio()
//   72 {
init_gpio:
        PUSH     {R7,LR}
//   73   
//   74 #if(CARD)
//   75   // 配置 PTD8~PTD15 为GPIO功能,输出,高电平，禁用中断
//   76   gpio_init_struct.GPIO_PTx = PTD;
//   77   gpio_init_struct.GPIO_Pins = GPIO_Pin8_15;
//   78   gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
//   79   gpio_init_struct.GPIO_Output = OUTPUT_H;
//   80   gpio_init_struct.GPIO_PinControl = IRQC_DIS;
//   81   LPLD_GPIO_Init(gpio_init_struct);
//   82 #else
//   83   gpio_init_struct.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable1_1
        LDR.N    R1,??DataTable1  ;; 0x400ff040
        STR      R1,[R0, #+0]
//   84   gpio_init_struct.GPIO_Pins = GPIO_Pin20|GPIO_Pin21|GPIO_Pin22|GPIO_Pin23;
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+15728640
        STR      R1,[R0, #+4]
//   85   gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
//   86   gpio_init_struct.GPIO_Output = OUTPUT_H;
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+13]
//   87   gpio_init_struct.GPIO_PinControl = IRQC_DIS;
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//   88   LPLD_GPIO_Init(gpio_init_struct);
        LDR.N    R1,??DataTable1_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   89 #endif
//   90   
//   91 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     gpio_init_struct
//   92 
//   93 
//   94 /*
//   95  * 延时一段时间
//   96  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   97 void delay()
//   98 {
//   99   uint16 i, n;
//  100   for(i=0;i<30000;i++)
delay:
        MOVS     R0,#+0
        B.N      ??delay_0
//  101   {
//  102     for(n=0;n<200;n++)
//  103     {
//  104       asm("nop");
??delay_1:
        nop
//  105     }
        ADDS     R1,R1,#+1
??delay_2:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+200
        BCC.N    ??delay_1
        ADDS     R0,R0,#+1
??delay_0:
        MOVW     R1,#+30000
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BCS.N    ??delay_3
        MOVS     R1,#+0
        B.N      ??delay_2
//  106   }
//  107 }
??delay_3:
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  108 
// 
//  20 bytes in section .bss
// 124 bytes in section .text
// 
// 124 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
