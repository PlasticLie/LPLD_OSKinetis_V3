///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    16/Feb/2014  17:24:02 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\embed\LPLD\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_MCG.c    /
//    Command line =  C:\embed\LPLD\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_MCG.c    /
//                    -D LPLD_K60 -lCN "C:\embed\LPLD\LPLD_OSKinetis_V3\proje /
//                    ct\05-(UARTint)LPLD_SerialInterrupt\iar\RAM\List\" -lB  /
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
//                    D_SerialInterrupt\iar\RAM\List\HW_MCG.s                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME HW_MCG

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        PUBLIC LPLD_PLL_Setup
        PUBLIC LPLD_Set_SYS_DIV
        PUBLIC g_bus_clock
        PUBLIC g_core_clock
        PUBLIC g_flash_clock
        PUBLIC g_flexbus_clock

// C:\embed\LPLD\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_MCG.c
//    1 /**
//    2  * @file HW_MCG.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief MCG�ײ�ģ����غ���
//    6  *
//    7  * ���Ľ���:�������޸�
//    8  *
//    9  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   15  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   16  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   20  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   21  */
//   22 #include "common.h"
//   23 #include "HW_MCG.h"
//   24 
//   25 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   26 uint32 g_core_clock = -1ul;
g_core_clock:
        DATA
        DC32 4294967295

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   27 uint32 g_bus_clock = -1ul;
g_bus_clock:
        DATA
        DC32 4294967295

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   28 uint32 g_flash_clock = -1ul;
g_flash_clock:
        DATA
        DC32 4294967295

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   29 uint32 g_flexbus_clock = -1ul;
g_flexbus_clock:
        DATA
        DC32 4294967295
//   30 
//   31 /*
//   32  * LPLD_PLL_Setup
//   33  * ��ʼ���ں�ʱ�Ӽ�����ϵͳʱ��
//   34  * 
//   35  * ����:
//   36  *    core_clk_mhz--�����ں�ʱ��Ƶ��
//   37  *      |__PLLx--�μ�HAL_MCG.h�е�PLL_option����
//   38  *
//   39  * ���:
//   40  *    �ں�Ƶ�ʣ���λMHz
//   41  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   42 uint8 LPLD_PLL_Setup(PllOptionEnum_Type core_clk_mhz)
//   43 {
LPLD_PLL_Setup:
        PUSH     {R3-R7,LR}
//   44   uint8 pll_freq;
//   45   uint8 prdiv, vdiv;
//   46   uint8 core_div, bus_div, flexbus_div, flash_div;
//   47   
//   48 /*
//   49  *************************************************
//   50   ��LPLDע�⡿MCG�ؼ�ϵ��
//   51   prdiv(PLL��Ƶϵ��): 0~31(1~32)
//   52   vdiv(PLL��Ƶϵ��): 0~31(24~55)
//   53   PLL�ο�ʱ�ӷ�Χ: 2MHz~4MHz
//   54   PLL�ο�ʱ�� = �ⲿ�ο�ʱ��(CPU_XTAL_CLK_HZ)/prdiv
//   55   CoreClk = PLL�ο�ʱ�� x PLL��Ƶϵ�� /OUTDIV1
//   56  *************************************************
//   57  */
//   58   
//   59   // ����MK60DZ10��˵��core_clk_mhz���鲻Ҫ����100����������Ϊ���200
//   60   core_clk_mhz = (PllOptionEnum_Type)(core_clk_mhz>200u?200u:core_clk_mhz);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+201
        BCC.N    ??LPLD_PLL_Setup_0
        MOVS     R0,#+200
        B.N      ??LPLD_PLL_Setup_1
//   61   
//   62   // ����������Ƶѡ���Ƶ�ͱ�Ƶϵ��
//   63   //��K60FX��K60DN������������
//   64 // (CPU_MK60DZ10)
//   65   switch(core_clk_mhz)
??LPLD_PLL_Setup_0:
??LPLD_PLL_Setup_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,R0
        CMP      R1,#+48
        BEQ.N    ??LPLD_PLL_Setup_2
        CMP      R1,#+50
        BEQ.N    ??LPLD_PLL_Setup_3
        CMP      R1,#+96
        BEQ.N    ??LPLD_PLL_Setup_4
        CMP      R1,#+100
        BEQ.N    ??LPLD_PLL_Setup_5
        CMP      R1,#+120
        BEQ.N    ??LPLD_PLL_Setup_6
        CMP      R1,#+150
        BEQ.N    ??LPLD_PLL_Setup_7
        CMP      R1,#+180
        BEQ.N    ??LPLD_PLL_Setup_8
        CMP      R1,#+200
        BEQ.N    ??LPLD_PLL_Setup_9
        B.N      ??LPLD_PLL_Setup_10
//   66   {
//   67   case PLL_48:
//   68     prdiv = 24u;
??LPLD_PLL_Setup_2:
        MOVS     R7,#+24
//   69     vdiv = 0u;
        MOVS     R5,#+0
//   70     break;
//   71   case PLL_50:
//   72     prdiv = 24u;
//   73     vdiv = 1u;
//   74     break;
//   75   case PLL_96:
//   76     prdiv = 24u;
//   77     vdiv = 24u;
//   78     break;
//   79   case PLL_100:
//   80     prdiv = 24u;
//   81     vdiv = 26u;
//   82     break;
//   83   case PLL_120:
//   84     prdiv = 19u;
//   85     vdiv = 24u;
//   86     break;
//   87   case PLL_150:
//   88     prdiv = 15u;
//   89     vdiv = 24u;
//   90     break;
//   91   case PLL_180:
//   92     prdiv = 14u;
//   93     vdiv = 30u;
//   94     break;
//   95   case PLL_200:
//   96     prdiv = 12u;
//   97     vdiv = 28u;
//   98     break;
//   99   default:
//  100     return LPLD_PLL_Setup(PLL_96);
//  101   }
//  102 #if defined(CPU_MK60FX15_ADD)
//  103    switch(core_clk_mhz)
??LPLD_PLL_Setup_11:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,R0
        CMP      R1,#+50
        BEQ.N    ??LPLD_PLL_Setup_12
        CMP      R1,#+100
        BEQ.N    ??LPLD_PLL_Setup_13
        CMP      R1,#+120
        BEQ.N    ??LPLD_PLL_Setup_14
        CMP      R1,#+150
        BEQ.N    ??LPLD_PLL_Setup_15
        CMP      R1,#+180
        BEQ.N    ??LPLD_PLL_Setup_16
        CMP      R1,#+200
        BEQ.N    ??LPLD_PLL_Setup_17
        B.N      ??LPLD_PLL_Setup_18
//  104   {
//  105   case PLL_50:
//  106     prdiv = 7u;
??LPLD_PLL_Setup_12:
        MOVS     R7,#+7
//  107     vdiv = 1u;
        MOVS     R5,#+1
//  108     break;
//  109   case PLL_100:
//  110     prdiv = 7u;
//  111     vdiv = 16u;
//  112     break;
//  113   case PLL_120:
//  114     prdiv = 4u;
//  115     vdiv = 8u;
//  116     break;
//  117   case PLL_150:
//  118     prdiv = 4u;
//  119     vdiv = 14u;
//  120     break;
//  121   case PLL_180:
//  122     prdiv = 4u;
//  123     vdiv = 20u;
//  124     break;
//  125   case PLL_200:
//  126     prdiv = 4u;
//  127     vdiv = 24u;
//  128     break;
//  129   default:
//  130     return LPLD_PLL_Setup(PLL_120);
//  131   }
//  132 #endif
//  133   
//  134   pll_freq = core_clk_mhz * 1;
??LPLD_PLL_Setup_19:
        MOVS     R6,R0
//  135   core_div = 0;
        MOVS     R4,#+0
//  136   if((bus_div = (uint8)(core_clk_mhz/BUS_CLK_MHZ - 1u)) == (uint8)-1)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+50
        UDIV     R1,R0,R1
        SUBS     R1,R1,#+1
        MOVS     R2,R1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+255
        BNE.N    ??LPLD_PLL_Setup_20
//  137   {
//  138     bus_div = 0;
        MOVS     R1,#+0
        B.N      ??LPLD_PLL_Setup_21
//  139   }
??LPLD_PLL_Setup_3:
        MOVS     R7,#+24
        MOVS     R5,#+1
        B.N      ??LPLD_PLL_Setup_11
??LPLD_PLL_Setup_4:
        MOVS     R7,#+24
        MOVS     R5,#+24
        B.N      ??LPLD_PLL_Setup_11
??LPLD_PLL_Setup_5:
        MOVS     R7,#+24
        MOVS     R5,#+26
        B.N      ??LPLD_PLL_Setup_11
??LPLD_PLL_Setup_6:
        MOVS     R7,#+19
        MOVS     R5,#+24
        B.N      ??LPLD_PLL_Setup_11
??LPLD_PLL_Setup_7:
        MOVS     R7,#+15
        MOVS     R5,#+24
        B.N      ??LPLD_PLL_Setup_11
??LPLD_PLL_Setup_8:
        MOVS     R7,#+14
        MOVS     R5,#+30
        B.N      ??LPLD_PLL_Setup_11
??LPLD_PLL_Setup_9:
        MOVS     R7,#+12
        MOVS     R5,#+28
        B.N      ??LPLD_PLL_Setup_11
??LPLD_PLL_Setup_10:
        MOVS     R0,#+96
        BL       LPLD_PLL_Setup
        B.N      ??LPLD_PLL_Setup_22
??LPLD_PLL_Setup_13:
        MOVS     R7,#+7
        MOVS     R5,#+16
        B.N      ??LPLD_PLL_Setup_19
??LPLD_PLL_Setup_14:
        MOVS     R7,#+4
        MOVS     R5,#+8
        B.N      ??LPLD_PLL_Setup_19
??LPLD_PLL_Setup_15:
        MOVS     R7,#+4
        MOVS     R5,#+14
        B.N      ??LPLD_PLL_Setup_19
??LPLD_PLL_Setup_16:
        MOVS     R7,#+4
        MOVS     R5,#+20
        B.N      ??LPLD_PLL_Setup_19
??LPLD_PLL_Setup_17:
        MOVS     R7,#+4
        MOVS     R5,#+24
        B.N      ??LPLD_PLL_Setup_19
??LPLD_PLL_Setup_18:
        MOVS     R0,#+120
        BL       LPLD_PLL_Setup
        B.N      ??LPLD_PLL_Setup_22
//  140   else if(core_clk_mhz/(bus_div+1) > BUS_CLK_MHZ)
??LPLD_PLL_Setup_20:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R2,R1,#+1
        SDIV     R2,R0,R2
        CMP      R2,#+51
        BCC.N    ??LPLD_PLL_Setup_21
//  141   {
//  142     bus_div += 1;
        ADDS     R1,R1,#+1
//  143   }
//  144   if((flexbus_div = (core_clk_mhz/FLEXBUS_CLK_MHZ - 1u)) == (uint8)-1)
??LPLD_PLL_Setup_21:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,#+50
        UDIV     R2,R0,R2
        SUBS     R2,R2,#+1
        MOVS     R3,R2
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+255
        BNE.N    ??LPLD_PLL_Setup_23
//  145   {
//  146     flexbus_div = 0;
        MOVS     R2,#+0
        B.N      ??LPLD_PLL_Setup_24
//  147   }
//  148   else if(core_clk_mhz/(flexbus_div+1) > FLEXBUS_CLK_MHZ)
??LPLD_PLL_Setup_23:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADDS     R3,R2,#+1
        SDIV     R3,R0,R3
        CMP      R3,#+51
        BCC.N    ??LPLD_PLL_Setup_24
//  149   {
//  150     flexbus_div += 1;
        ADDS     R2,R2,#+1
//  151   }
//  152   if((flash_div = (core_clk_mhz/FLASH_CLK_MHZ - 1u)) == (uint8)-1)
??LPLD_PLL_Setup_24:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,#+25
        UDIV     R3,R0,R3
        SUBS     R3,R3,#+1
        MOV      R12,R3
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+255
        BNE.N    ??LPLD_PLL_Setup_25
//  153   {
//  154     flash_div = 0;
        MOVS     R3,#+0
        B.N      ??LPLD_PLL_Setup_26
//  155   }
//  156   else if(core_clk_mhz/(flash_div+1) > FLASH_CLK_MHZ)
??LPLD_PLL_Setup_25:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R12,R3,#+1
        SDIV     R0,R0,R12
        CMP      R0,#+26
        BCC.N    ??LPLD_PLL_Setup_26
//  157   {
//  158     flash_div += 1;
        ADDS     R3,R3,#+1
//  159   }
//  160   
//  161   // ������踴λ�� MCG ģ��Ĭ��Ϊ FEI ģʽ
//  162   
//  163   // �����ƶ��� FBE ģʽ
//  164   MCG->C2 = 0;
??LPLD_PLL_Setup_26:
        LDR.N    R0,??LPLD_PLL_Setup_27  ;; 0x40064001
        MOVS     R12,#+0
        STRB     R12,[R0, #+0]
//  165   
//  166   // ������ʼ����ɺ�,�ͷ�����״̬�µ� oscillator �� GPIO 
//  167   SIM->SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.N    R0,??LPLD_PLL_Setup_27+0x4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.W    R12,??LPLD_PLL_Setup_27+0x4  ;; 0x40048034
        STR      R0,[R12, #+0]
//  168   LLWU->CS |= LLWU_CS_ACKISO_MASK;
        LDR.N    R0,??LPLD_PLL_Setup_27+0x8  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R12,??LPLD_PLL_Setup_27+0x8  ;; 0x4007c008
        STRB     R0,[R12, #+0]
//  169   
//  170   // ѡ���ⲿ oscilator ���ο���Ƶ�� and ���� IREFS �����ⲿosc
//  171   // CLKS=2, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  172   MCG->C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);  
        LDR.N    R0,??LPLD_PLL_Setup_27+0xC  ;; 0x40064000
        MOVS     R12,#+152
        STRB     R12,[R0, #+0]
//  173   
//  174   while (MCG->S & MCG_S_IREFST_MASK){}; // �ȴ��ο�ʱ������
??LPLD_PLL_Setup_28:
        LDR.N    R0,??LPLD_PLL_Setup_27+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??LPLD_PLL_Setup_28
//  175   
//  176   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // �ȴ�ʱ��״̬��ʾΪ�ⲿ�ο�ʱ��(ext ref clk)
??LPLD_PLL_Setup_29:
        LDR.N    R0,??LPLD_PLL_Setup_27+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??LPLD_PLL_Setup_29
//  177   
//  178   // ����FBEģʽ
//  179   // ���� PLL �ο���Ƶ��, PLLCLKEN=0, PLLSTEN=0, PRDIV=5
//  180   // �þ���Ƶ����ѡ�� PRDIV ֵ. ������Ƶ�ʾ����ʱ��֧��
//  181   // ���� 2MHz �Ĳο�ʱ�Ӹ� PLL.
//  182   MCG->C5 = MCG_C5_PRDIV(prdiv); // ���� PLL ƥ�侧��Ĳο���Ƶ�� 
        ANDS     R0,R7,#0x1F
        LDR.N    R7,??LPLD_PLL_Setup_27+0x14  ;; 0x40064004
        STRB     R0,[R7, #+0]
//  183   
//  184   // ȷ��MCG_C6���ڸ�λ״̬,��ֹLOLIE��PLL����ʱ�ӿ�����,��PLL VCO��Ƶ��
//  185   MCG->C6 = 0x0;
        LDR.N    R0,??LPLD_PLL_Setup_27+0x18  ;; 0x40064005
        MOVS     R7,#+0
        STRB     R7,[R0, #+0]
//  186   
//  187   //����ϵͳʱ�ӷ�Ƶϵ��
//  188   LPLD_Set_SYS_DIV(core_div, bus_div, flexbus_div, flash_div);  
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_Set_SYS_DIV
//  189  // LPLD_Set_SYS_DIV(0, 1, 4, 4);  
//  190   
//  191   //���ñ�Ƶϵ��
//  192   MCG->C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(vdiv); 
        ANDS     R0,R5,#0x1F
        ORRS     R0,R0,#0x40
        LDR.N    R1,??LPLD_PLL_Setup_27+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  193   
//  194   while (!(MCG->S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
??LPLD_PLL_Setup_30:
        LDR.N    R0,??LPLD_PLL_Setup_27+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??LPLD_PLL_Setup_30
//  195   
//  196   while (!(MCG->S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set
??LPLD_PLL_Setup_31:
        LDR.N    R0,??LPLD_PLL_Setup_27+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??LPLD_PLL_Setup_31
//  197   
//  198   // �Ѿ�����PBEģʽ
//  199   
//  200   // Transition into PEE by setting CLKS to 0
//  201   // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  202   MCG->C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??LPLD_PLL_Setup_27+0xC  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R1,??LPLD_PLL_Setup_27+0xC  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  203   
//  204   // Wait for clock status bits to update
//  205   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??LPLD_PLL_Setup_32:
        LDR.N    R0,??LPLD_PLL_Setup_27+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??LPLD_PLL_Setup_32
//  206   
//  207   // �Ѿ�����PEEģʽ
//  208   
//  209   return pll_freq;
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_PLL_Setup_22:
        POP      {R1,R4-R7,PC}    ;; return
        Nop      
        DATA
??LPLD_PLL_Setup_27:
        DC32     0x40064001
        DC32     0x40048034
        DC32     0x4007c008
        DC32     0x40064000
        DC32     0x40064006
        DC32     0x40064004
        DC32     0x40064005
//  210 } 
//  211 
//  212 
//  213 /*
//  214  * LPLD_Set_SYS_DIV
//  215  * ����ϵͳʼ�շ�Ƶ
//  216  *
//  217  * ˵��:
//  218  * ��δ�����������RAM�У�Ŀ���Ƿ�ֹ�����ܷɣ�����ٷ��ĵ�errata e2448.
//  219  * ��Flashʱ�ӷ�Ƶ�ı��ʱ��FlashԤ��ȡ�������.
//  220  * ��ֹ��Flash���������´���.
//  221  * ��Ԥ��ȡ������ʹ��֮ǰ������ʱ�ӷ�Ƶ�ı����һ��С����ʱ.
//  222  *
//  223  * ����:
//  224  *    outdiv1~outdiv4--�ֱ�Ϊcore, bus, FlexBus, Flashʱ�ӷ�Ƶϵ��
//  225  */

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  226 RAMFUNC void LPLD_Set_SYS_DIV(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4)
//  227 {
LPLD_Set_SYS_DIV:
        PUSH     {R4-R6}
//  228   uint32 temp_reg;
//  229   uint8 i;
//  230   
//  231   temp_reg = FMC->PFAPR; // ���� FMC_PFAPR �Ĵ���
        LDR.N    R4,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        LDR      R4,[R4, #+0]
//  232   
//  233   // ���� M0PFD �� M7PFD Ϊ 1 ����Ԥ�ȶ�ȡ
//  234   FMC->PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  235              | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  236              | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;
        LDR.N    R5,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0xFF0000
        LDR.N    R6,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        STR      R5,[R6, #+0]
//  237   
//  238   // ����ʱ�ӷ�ƵΪ����ֵ  
//  239   SIM->CLKDIV1 = SIM_CLKDIV1_OUTDIV1(outdiv1) | SIM_CLKDIV1_OUTDIV2(outdiv2) 
//  240               | SIM_CLKDIV1_OUTDIV3(outdiv3) | SIM_CLKDIV1_OUTDIV4(outdiv4);
        LSLS     R1,R1,#+24
        ANDS     R1,R1,#0xF000000
        ORRS     R0,R1,R0, LSL #+28
        LSLS     R1,R2,#+20
        ANDS     R1,R1,#0xF00000
        ORRS     R0,R1,R0
        LSLS     R1,R3,#+16
        ANDS     R1,R1,#0xF0000
        ORRS     R0,R1,R0
        LDR.N    R1,??LPLD_Set_SYS_DIV_0+0x4  ;; 0x40048044
        STR      R0,[R1, #+0]
//  241 
//  242   // ��ʱһС��ʱ��ȴ��ı�
//  243   for (i = 0 ; i < outdiv4 ; i++)
        MOVS     R0,#+0
        B.N      ??LPLD_Set_SYS_DIV_1
??LPLD_Set_SYS_DIV_2:
        ADDS     R0,R0,#+1
??LPLD_Set_SYS_DIV_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R3
        BCC.N    ??LPLD_Set_SYS_DIV_2
//  244   {}
//  245   
//  246   FMC->PFAPR = temp_reg; // �ظ�ԭ�ȵ� FMC_PFAPR �Ĵ���ֵ
        LDR.N    R0,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        STR      R4,[R0, #+0]
//  247   
//  248   return;
        POP      {R4-R6}
        BX       LR               ;; return
        DATA
??LPLD_Set_SYS_DIV_0:
        DC32     0x4001f000
        DC32     0x40048044
//  249 } // set_sys_dividers

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//  16 bytes in section .data
// 492 bytes in section .text
//  76 bytes in section .textrw
// 
// 568 bytes of CODE memory
//  16 bytes of DATA memory
//
//Errors: none
//Warnings: none
