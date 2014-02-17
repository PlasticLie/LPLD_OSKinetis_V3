///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    16/Feb/2014  16:24:52 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\embed\LPLD\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_SPI.c    /
//    Command line =  C:\embed\LPLD\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_SPI.c    /
//                    -D LPLD_K60 -lCN "C:\embed\LPLD\LPLD_OSKinetis_V3\proje /
//                    ct\04-(UART)LPLD_SerialComm\iar\RAM\List\" -lB          /
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
//                    erialComm\iar\RAM\List\HW_SPI.s                         /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME HW_SPI

        #define SHT_PROGBITS 0x1

        PUBLIC LPLD_SPI_Deinit
        PUBLIC LPLD_SPI_DisableIrq
        PUBLIC LPLD_SPI_EnableIrq
        PUBLIC LPLD_SPI_Init
        PUBLIC LPLD_SPI_Master_Read
        PUBLIC LPLD_SPI_Master_Write
        PUBLIC LPLD_SPI_Master_WriteRead
        PUBLIC SPI0_IRQHandler
        PUBLIC SPI0_ISR
        PUBLIC SPI1_IRQHandler
        PUBLIC SPI1_ISR
        PUBLIC SPI2_IRQHandler
        PUBLIC SPI2_ISR

// C:\embed\LPLD\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_SPI.c
//    1 /**
//    2  * @file HW_SPI.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief SPI底层模块相关函数
//    6  *
//    7  * 更改建议:不建议修改
//    8  *
//    9  * 版权所有:北京拉普兰德电子技术有限公司
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   15  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   16  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   17  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   18  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   19  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   20  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   21  */
//   22 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R1,R0,#+5
        LDR.W    R2,??DataTable8  ;; 0xe000e100
        MOVS     R3,#+1
        ANDS     R0,R0,#0x1F
        LSLS     R0,R3,R0
        STR      R0,[R2, R1, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R1,R0,#+5
        LDR.W    R2,??DataTable8_1  ;; 0xe000e180
        MOVS     R3,#+1
        ANDS     R0,R0,#0x1F
        LSLS     R0,R3,R0
        STR      R0,[R2, R1, LSL #+2]
        BX       LR               ;; return
//   23 #include "HW_SPI.h"
//   24 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 SPI_ISR_CALLBACK SPI0_ISR[6];
SPI0_ISR:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 SPI_ISR_CALLBACK SPI1_ISR[6];
SPI1_ISR:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 SPI_ISR_CALLBACK SPI2_ISR[6];
SPI2_ISR:
        DS8 24
//   28 
//   29 /*
//   30  * LPLD_SPI_Init
//   31  * SPI初始化函数,在该函数中选择SPI通道，初始化SPI SCK总线时钟
//   32  * 选择使能Tx，Rx FIFO，选择开启SPI外设的发送完成，发送队列结束，
//   33  * Tx FIFO队列为空，Rx FIFO队列溢出，选择FIFO的中断方式和DMA请求等
//   34  * 
//   35  * 参数:
//   36  *    spi_init_structure--SPI初始化结构体，
//   37  *                        具体定义见SPI_InitTypeDef
//   38  *
//   39  * 输出:
//   40  *    0--配置错误
//   41  *    1--配置成功
//   42  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 uint8 LPLD_SPI_Init(SPI_InitTypeDef spi_init_structure)
//   44 {
LPLD_SPI_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+36
//   45   SPI_Type * spix = spi_init_structure.SPI_SPIx;
        LDR      R0,[SP, #+72]
//   46   uint8 spi_mode = spi_init_structure.SPI_ModeSelect;
        LDRB     R1,[SP, #+76]
        STRB     R1,[SP, #+9]
//   47   uint8 sck_div = spi_init_structure.SPI_SckDivider; 
        LDRB     R1,[SP, #+77]
        STRB     R1,[SP, #+8]
//   48   boolean txFIFO_enable = spi_init_structure.SPI_EnableTxFIFO;
        LDRB     R1,[SP, #+78]
        STRB     R1,[SP, #+7]
//   49   boolean rxFIFO_enable = spi_init_structure.SPI_EnableRxFIFO;
        LDRB     R1,[SP, #+79]
        STRB     R1,[SP, #+6]
//   50   //定义SPI外设中断变量
//   51   boolean tx_complete_int = spi_init_structure.SPI_TxCompleteIntEnable;
        LDRB     R1,[SP, #+80]
//   52   boolean QueueEnd_Request_int = spi_init_structure.SPI_QueueEndIntEnable; 
        LDRB     R2,[SP, #+81]
//   53   boolean txFIFO_underflow_int = spi_init_structure.SPI_TxFIFO_UnderflowIntEnable;
        LDRB     R3,[SP, #+82]
//   54   boolean rxFIFO_overflow_int = spi_init_structure.SPI_RxFIFO_OverflowIntEnable;
        LDRB     R4,[SP, #+83]
//   55   boolean txFIFO_Fill_int = spi_init_structure.SPI_TxFIFO_FillIntEnable;
        LDRB     R5,[SP, #+84]
//   56   boolean rxFIFO_Drain_int = spi_init_structure.SPI_RxFIFO_DrainIntEnable; 
        LDRB     R6,[SP, #+85]
//   57   boolean txFIFO_req = spi_init_structure.SPI_TxFIFO_RequestSelect;
        LDRB     R7,[SP, #+86]
//   58   boolean rxFIFO_req = spi_init_structure.SPI_RxFIFO_RequestSelect;
        LDRB     LR,[SP, #+87]
//   59   //选择SPI引脚
//   60   PortPinsEnum_Type miso_pin = spi_init_structure.SPI_MisoPin;//MISO 
        LDRB     R8,[SP, #+96]
        STRB     R8,[SP, #+1]
//   61   PortPinsEnum_Type mosi_pin = spi_init_structure.SPI_MosiPin;//MOSI
        LDRB     R8,[SP, #+95]
        STRB     R8,[SP, #+0]
//   62   PortPinsEnum_Type sck_pin = spi_init_structure.SPI_SckPin;  //SCK
        LDRB     R8,[SP, #+94]
//   63   PortPinsEnum_Type pcs0_pin = spi_init_structure.SPI_Pcs0Pin;//PCS0
        LDRB     R9,[SP, #+88]
//   64   PortPinsEnum_Type pcs1_pin = spi_init_structure.SPI_Pcs1Pin;//PCS1
        LDRB     R10,[SP, #+89]
//   65   PortPinsEnum_Type pcs2_pin = spi_init_structure.SPI_Pcs2Pin;//PCS2
        LDRB     R11,[SP, #+90]
        STRB     R11,[SP, #+3]
//   66   PortPinsEnum_Type pcs3_pin = spi_init_structure.SPI_Pcs3Pin;//PCS3
        LDRB     R11,[SP, #+91]
        STRB     R11,[SP, #+2]
//   67   PortPinsEnum_Type pcs4_pin = spi_init_structure.SPI_Pcs4Pin;//PCS4
        LDRB     R11,[SP, #+92]
        STRB     R11,[SP, #+5]
//   68   PortPinsEnum_Type pcs5_pin = spi_init_structure.SPI_Pcs5Pin;//PCS5
        LDRB     R11,[SP, #+93]
        STRB     R11,[SP, #+4]
//   69   //定义中断回掉函数
//   70   SPI_ISR_CALLBACK TxComplete_isr = spi_init_structure.SPI_TxCompleteIntIsr;
        LDR      R11,[SP, #+100]
        STR      R11,[SP, #+32]
//   71   SPI_ISR_CALLBACK QueueEndReq_isr = spi_init_structure.SPI_QueueEndIntIsr;
        LDR      R11,[SP, #+104]
        STR      R11,[SP, #+28]
//   72   SPI_ISR_CALLBACK UnderflowInt_isr = spi_init_structure.SPI_TxFIFO_UnderflowIntIsr;
        LDR      R11,[SP, #+108]
        STR      R11,[SP, #+24]
//   73   SPI_ISR_CALLBACK OverflowInt_isr = spi_init_structure.SPI_RxFIFO_OverflowIntIsr;
        LDR      R11,[SP, #+112]
        STR      R11,[SP, #+20]
//   74   SPI_ISR_CALLBACK FillInt_isr = spi_init_structure.SPI_TxFIFO_FillIntIsr;
        LDR      R11,[SP, #+116]
        STR      R11,[SP, #+16]
//   75   SPI_ISR_CALLBACK DrainInt_isr = spi_init_structure.SPI_RxFIFO_DrainIntIsr;
        LDR      R11,[SP, #+120]
        STR      R11,[SP, #+12]
//   76   //检测参数
//   77   ASSERT(spi_mode <= SPI_MODE_MASTER);
//   78   ASSERT(sck_div <= SPI_SCK_DIV_32768);
//   79 
//   80   if(spix == SPI0)
        LDR.W    R12,??DataTable8_2  ;; 0x4002c000
        CMP      R0,R12
        BNE.W    ??LPLD_SPI_Init_0
//   81   {
//   82     SIM->SCGC6 |= SIM_SCGC6_DSPI0_MASK;  
        LDR.W    R12,??DataTable8_3  ;; 0x4004803c
        LDR      R12,[R12, #+0]
        ORRS     R12,R12,#0x1000
        LDR.W    R11,??DataTable8_3  ;; 0x4004803c
        STR      R12,[R11, #+0]
//   83 
//   84     //选择PCS0
//   85     if(pcs0_pin == PTA14)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+14
        BNE.N    ??LPLD_SPI_Init_1
//   86     {
//   87       PORTA->PCR[14] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        LDR.W    R12,??DataTable8_4  ;; 0x40049038
        MOV      R9,#+576
        STR      R9,[R12, #+0]
        B.N      ??LPLD_SPI_Init_2
//   88     }
//   89     else//pcs0_pin == PTC4
//   90     {
//   91       PORTC->PCR[4] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_1:
        LDR.W    R12,??DataTable8_5  ;; 0x4004b010
        MOV      R9,#+576
        STR      R9,[R12, #+0]
//   92     }
//   93     //选择PCS1
//   94     if(pcs1_pin == PTC3)
??LPLD_SPI_Init_2:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+63
        BNE.N    ??LPLD_SPI_Init_3
//   95     {
//   96       PORTC->PCR[3]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        LDR.W    R12,??DataTable8_6  ;; 0x4004b00c
        MOV      R9,#+576
        STR      R9,[R12, #+0]
        B.N      ??LPLD_SPI_Init_4
//   97     }
//   98     else //pcs1_pin == PTD4
//   99     {
//  100       PORTD->PCR[4] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_3:
        LDR.W    R12,??DataTable8_7  ;; 0x4004c010
        MOV      R9,#+576
        STR      R9,[R12, #+0]
//  101     }
//  102     //选择PCS2
//  103     if(pcs2_pin == PTC2)
??LPLD_SPI_Init_4:
        LDRB     R12,[SP, #+3]
        CMP      R12,#+62
        BNE.N    ??LPLD_SPI_Init_5
//  104     {
//  105       PORTC->PCR[2]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        LDR.W    R12,??DataTable8_8  ;; 0x4004b008
        MOV      R9,#+576
        STR      R9,[R12, #+0]
        B.N      ??LPLD_SPI_Init_6
//  106     }
//  107     else //pcs2_pin == PTD5
//  108     {
//  109       PORTD->PCR[5]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_5:
        LDR.W    R12,??DataTable8_9  ;; 0x4004c014
        MOV      R9,#+576
        STR      R9,[R12, #+0]
//  110     }
//  111     //选择PCS3
//  112     if(pcs3_pin == PTC1)
??LPLD_SPI_Init_6:
        LDRB     R12,[SP, #+2]
        CMP      R12,#+61
        BNE.N    ??LPLD_SPI_Init_7
//  113     {
//  114       PORTC->PCR[1]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        LDR.W    R12,??DataTable8_10  ;; 0x4004b004
        MOV      R9,#+576
        STR      R9,[R12, #+0]
        B.N      ??LPLD_SPI_Init_8
//  115     }
//  116     else //pcs3_pin == PTD6
//  117     {
//  118       PORTD->PCR[6]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_7:
        LDR.W    R12,??DataTable8_11  ;; 0x4004c018
        MOV      R9,#+576
        STR      R9,[R12, #+0]
//  119     }
//  120     //选择PCS4
//  121     if(pcs4_pin == PTC0)
??LPLD_SPI_Init_8:
        LDRB     R12,[SP, #+5]
        CMP      R12,#+60
        BNE.N    ??LPLD_SPI_Init_9
//  122     {
//  123       PORTC->PCR[0]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        LDR.W    R12,??DataTable8_12  ;; 0x4004b000
        MOV      R9,#+576
        STR      R9,[R12, #+0]
//  124     }
//  125     else
//  126       return 0;
//  127     //选择PCS5
//  128     if(pcs5_pin == PTB23)
        LDRB     R12,[SP, #+4]
        CMP      R12,#+55
        BNE.N    ??LPLD_SPI_Init_10
//  129     {
//  130       PORTB->PCR[23] = 0 | PORT_PCR_MUX(3) | PORT_PCR_DSE_MASK;
        LDR.W    R12,??DataTable8_13  ;; 0x4004a05c
        MOV      R9,#+832
        STR      R9,[R12, #+0]
//  131     }
//  132 
//  133     //选择SCK
//  134     if(sck_pin == PTA15)
??LPLD_SPI_Init_10:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+15
        BNE.N    ??LPLD_SPI_Init_11
//  135     {
//  136       PORTA->PCR[15] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
        LDR.W    R12,??DataTable8_14  ;; 0x4004903c
        MOV      R8,#+576
        STR      R8,[R12, #+0]
        B.N      ??LPLD_SPI_Init_12
//  137     }
??LPLD_SPI_Init_9:
        MOVS     R0,#+0
        B.N      ??LPLD_SPI_Init_13
//  138     else //sck_pin == PTC5
//  139     {
//  140       PORTC->PCR[5] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
??LPLD_SPI_Init_11:
        LDR.W    R12,??DataTable8_15  ;; 0x4004b014
        MOV      R8,#+576
        STR      R8,[R12, #+0]
//  141     }
//  142     //选择MOSI
//  143     if(mosi_pin == PTA16)
??LPLD_SPI_Init_12:
        LDRB     R12,[SP, #+0]
        CMP      R12,#+16
        BNE.N    ??LPLD_SPI_Init_14
//  144     {
//  145       PORTA->PCR[16] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
        LDR.W    R12,??DataTable8_16  ;; 0x40049040
        MOV      R8,#+576
        STR      R8,[R12, #+0]
        B.N      ??LPLD_SPI_Init_15
//  146     }
//  147     else //mosi_pin == PTC6
//  148     {
//  149       PORTC->PCR[6] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
??LPLD_SPI_Init_14:
        LDR.W    R12,??DataTable8_17  ;; 0x4004b018
        MOV      R8,#+576
        STR      R8,[R12, #+0]
//  150     }
//  151     //选择MISO
//  152     if(miso_pin == PTA17)
??LPLD_SPI_Init_15:
        LDRB     R12,[SP, #+1]
        CMP      R12,#+17
        BNE.N    ??LPLD_SPI_Init_16
//  153     {
//  154       PORTA->PCR[17] = 0 | PORT_PCR_MUX(2); //SIN
        LDR.W    R12,??DataTable8_18  ;; 0x40049044
        MOV      R8,#+512
        STR      R8,[R12, #+0]
//  155     }
//  156     else //miso_pin == PTC7
//  157     {
//  158       PORTC->PCR[7] = 0 | PORT_PCR_MUX(2); //SIN
//  159     } 
//  160   
//  161   }
//  162   else if(spix == SPI1)
//  163   {
//  164     SIM->SCGC6 |= SIM_SCGC6_SPI1_MASK;
//  165     //选择PCS0
//  166     if(pcs0_pin == PTB10)
//  167     {
//  168       PORTB->PCR[10] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
//  169     }
//  170     else//pcs0_pin == PTE4
//  171     {
//  172       PORTE->PCR[4] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
//  173     }
//  174     //选择PCS1
//  175     if(pcs1_pin == PTB9)
//  176     {
//  177       PORTB->PCR[9]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
//  178     }
//  179     else //pcs1_pin == PTE0
//  180     {
//  181       PORTE->PCR[0] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
//  182     }
//  183     //选择PCS2
//  184     if(pcs2_pin == PTE5)
//  185     {
//  186       PORTE->PCR[5]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
//  187     }
//  188 
//  189     //选择PCS3
//  190     if(pcs3_pin == PTE6)
//  191     {
//  192       PORTE->PCR[6]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
//  193     }
//  194 
//  195     //选择SCK
//  196     if(sck_pin == PTB11)
//  197     {
//  198       PORTB->PCR[11] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
//  199     }
//  200     else //sck_pin == PTE2
//  201     {
//  202       PORTE->PCR[2] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
//  203     }
//  204     //选择MOSI
//  205     if(mosi_pin == PTB16)
//  206     {
//  207       PORTB->PCR[16] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
//  208     }
//  209     else //mosi_pin == PTE1
//  210     {
//  211       PORTE->PCR[1] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
//  212     }
//  213     //选择MISO
//  214     if(miso_pin == PTB17)
//  215     {
//  216       PORTB->PCR[17] = 0 | PORT_PCR_MUX(2); //SIN
//  217     }
//  218     else //miso_pin == PTE3
//  219     {
//  220       PORTE->PCR[3] = 0 | PORT_PCR_MUX(2); //SIN
//  221     } 
//  222   }
//  223   else if(spix == SPI2)
//  224   {
//  225     SIM->SCGC3 |= SIM_SCGC3_SPI2_MASK;
//  226     //选择PCS0
//  227     if(pcs0_pin == PTD11)
//  228     {
//  229       PORTD->PCR[11] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
//  230     }
//  231     else//pcs0_pin == PTB20
//  232     {
//  233       PORTB->PCR[20] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
//  234     }
//  235     //选择PCS1
//  236     if(pcs1_pin == PTD15)
//  237     {
//  238       PORTD->PCR[15]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
//  239     }
//  240 
//  241     //选择SCK
//  242     if(sck_pin == PTD12)
//  243     {
//  244       PORTD->PCR[12] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
//  245     }
//  246     else //sck_pin == PTB21
//  247     {
//  248       PORTB->PCR[21] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
//  249     }
//  250     //选择MOSI
//  251     if(mosi_pin == PTD13)
//  252     {
//  253       PORTD->PCR[13] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
//  254     }
//  255     else //mosi_pin == PTB22
//  256     {
//  257       PORTB->PCR[22] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
//  258     }
//  259     //选择MISO
//  260     if(miso_pin == PTD14)
//  261     {
//  262       PORTD->PCR[14] = 0 | PORT_PCR_MUX(2); //SIN
//  263     }
//  264     else //miso_pin == PTB23
//  265     {
//  266       PORTB->PCR[23] = 0 | PORT_PCR_MUX(2); //SIN
//  267     } 
//  268   }
//  269   else
//  270     return 0;
//  271   //配置SPI MCR寄存器
//  272   spix->MCR = 0 & (~SPI_MCR_MDIS_MASK)        
//  273                 |SPI_MCR_HALT_MASK        
//  274                 |SPI_MCR_PCSIS_MASK       
//  275                 |SPI_MCR_CLR_TXF_MASK    
//  276                 |SPI_MCR_CLR_RXF_MASK;  
??LPLD_SPI_Init_17:
        LDR.W    R12,??DataTable8_19  ;; 0x3f0c01
        STR      R12,[R0, #+0]
//  277   //选择SPI 工作模式
//  278   if(spi_mode == SPI_MODE_SLAVE)
        LDRB     R12,[SP, #+9]
        CMP      R12,#+1
        BNE.W    ??LPLD_SPI_Init_18
//  279   {
//  280     spix->MCR &= ~SPI_MCR_MSTR_MASK;//从机模式  
        LDR      R12,[R0, #+0]
        LSLS     R12,R12,#+1      ;; ZeroExtS R12,R12,#+1,#+1
        LSRS     R12,R12,#+1
        STR      R12,[R0, #+0]
        B.N      ??LPLD_SPI_Init_19
//  281   }
??LPLD_SPI_Init_16:
        LDR.W    R12,??DataTable8_20  ;; 0x4004b01c
        MOV      R8,#+512
        STR      R8,[R12, #+0]
        B.N      ??LPLD_SPI_Init_17
??LPLD_SPI_Init_0:
        LDR.W    R12,??DataTable8_21  ;; 0x4002d000
        CMP      R0,R12
        BNE.N    ??LPLD_SPI_Init_20
        LDR.W    R12,??DataTable8_3  ;; 0x4004803c
        LDR      R12,[R12, #+0]
        ORRS     R12,R12,#0x2000
        LDR.W    R11,??DataTable8_3  ;; 0x4004803c
        STR      R12,[R11, #+0]
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+42
        BNE.N    ??LPLD_SPI_Init_21
        LDR.W    R12,??DataTable8_22  ;; 0x4004a028
        MOV      R9,#+576
        STR      R9,[R12, #+0]
        B.N      ??LPLD_SPI_Init_22
??LPLD_SPI_Init_21:
        LDR.W    R12,??DataTable8_23  ;; 0x4004d010
        MOV      R9,#+576
        STR      R9,[R12, #+0]
??LPLD_SPI_Init_22:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+41
        BNE.N    ??LPLD_SPI_Init_23
        LDR.W    R12,??DataTable8_24  ;; 0x4004a024
        MOV      R9,#+576
        STR      R9,[R12, #+0]
        B.N      ??LPLD_SPI_Init_24
??LPLD_SPI_Init_23:
        LDR.W    R12,??DataTable8_25  ;; 0x4004d000
        MOV      R9,#+576
        STR      R9,[R12, #+0]
??LPLD_SPI_Init_24:
        LDRB     R12,[SP, #+3]
        CMP      R12,#+129
        BNE.N    ??LPLD_SPI_Init_25
        LDR.W    R12,??DataTable8_26  ;; 0x4004d014
        MOV      R9,#+576
        STR      R9,[R12, #+0]
??LPLD_SPI_Init_25:
        LDRB     R12,[SP, #+2]
        CMP      R12,#+130
        BNE.N    ??LPLD_SPI_Init_26
        LDR.W    R12,??DataTable8_27  ;; 0x4004d018
        MOV      R9,#+576
        STR      R9,[R12, #+0]
??LPLD_SPI_Init_26:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+43
        BNE.N    ??LPLD_SPI_Init_27
        LDR.W    R12,??DataTable8_28  ;; 0x4004a02c
        MOV      R8,#+576
        STR      R8,[R12, #+0]
        B.N      ??LPLD_SPI_Init_28
??LPLD_SPI_Init_27:
        LDR.W    R12,??DataTable8_29  ;; 0x4004d008
        MOV      R8,#+576
        STR      R8,[R12, #+0]
??LPLD_SPI_Init_28:
        LDRB     R12,[SP, #+0]
        CMP      R12,#+48
        BNE.N    ??LPLD_SPI_Init_29
        LDR.W    R12,??DataTable8_30  ;; 0x4004a040
        MOV      R8,#+576
        STR      R8,[R12, #+0]
        B.N      ??LPLD_SPI_Init_30
??LPLD_SPI_Init_29:
        LDR.W    R12,??DataTable8_31  ;; 0x4004d004
        MOV      R8,#+576
        STR      R8,[R12, #+0]
??LPLD_SPI_Init_30:
        LDRB     R12,[SP, #+1]
        CMP      R12,#+49
        BNE.N    ??LPLD_SPI_Init_31
        LDR.W    R12,??DataTable8_32  ;; 0x4004a044
        MOV      R8,#+512
        STR      R8,[R12, #+0]
        B.N      ??LPLD_SPI_Init_17
??LPLD_SPI_Init_31:
        LDR.W    R12,??DataTable8_33  ;; 0x4004d00c
        MOV      R8,#+512
        STR      R8,[R12, #+0]
        B.N      ??LPLD_SPI_Init_17
??LPLD_SPI_Init_20:
        LDR.W    R12,??DataTable8_34  ;; 0x400ac000
        CMP      R0,R12
        BNE.N    ??LPLD_SPI_Init_32
        LDR.W    R12,??DataTable8_35  ;; 0x40048030
        LDR      R12,[R12, #+0]
        ORRS     R12,R12,#0x1000
        LDR.W    R11,??DataTable8_35  ;; 0x40048030
        STR      R12,[R11, #+0]
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+103
        BNE.N    ??LPLD_SPI_Init_33
        LDR.W    R12,??DataTable8_36  ;; 0x4004c02c
        MOV      R9,#+576
        STR      R9,[R12, #+0]
        B.N      ??LPLD_SPI_Init_34
??LPLD_SPI_Init_33:
        LDR.W    R12,??DataTable8_37  ;; 0x4004a050
        MOV      R9,#+576
        STR      R9,[R12, #+0]
??LPLD_SPI_Init_34:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+107
        BNE.N    ??LPLD_SPI_Init_35
        LDR.W    R12,??DataTable8_38  ;; 0x4004c03c
        MOV      R9,#+576
        STR      R9,[R12, #+0]
??LPLD_SPI_Init_35:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+104
        BNE.N    ??LPLD_SPI_Init_36
        LDR.W    R12,??DataTable8_39  ;; 0x4004c030
        MOV      R8,#+576
        STR      R8,[R12, #+0]
        B.N      ??LPLD_SPI_Init_37
??LPLD_SPI_Init_36:
        LDR.W    R12,??DataTable8_40  ;; 0x4004a054
        MOV      R8,#+576
        STR      R8,[R12, #+0]
??LPLD_SPI_Init_37:
        LDRB     R12,[SP, #+0]
        CMP      R12,#+105
        BNE.N    ??LPLD_SPI_Init_38
        LDR.W    R12,??DataTable8_41  ;; 0x4004c034
        MOV      R8,#+576
        STR      R8,[R12, #+0]
        B.N      ??LPLD_SPI_Init_39
??LPLD_SPI_Init_38:
        LDR.W    R12,??DataTable8_42  ;; 0x4004a058
        MOV      R8,#+576
        STR      R8,[R12, #+0]
??LPLD_SPI_Init_39:
        LDRB     R12,[SP, #+1]
        CMP      R12,#+106
        BNE.N    ??LPLD_SPI_Init_40
        LDR.W    R12,??DataTable8_43  ;; 0x4004c038
        MOV      R8,#+512
        STR      R8,[R12, #+0]
        B.N      ??LPLD_SPI_Init_17
??LPLD_SPI_Init_40:
        LDR.W    R12,??DataTable8_13  ;; 0x4004a05c
        MOV      R8,#+512
        STR      R8,[R12, #+0]
        B.N      ??LPLD_SPI_Init_17
??LPLD_SPI_Init_32:
        MOVS     R0,#+0
        B.N      ??LPLD_SPI_Init_13
//  282   else
//  283   {
//  284     spix->MCR |= SPI_MCR_MSTR_MASK; //主机模式 
??LPLD_SPI_Init_18:
        LDR      R12,[R0, #+0]
        ORRS     R12,R12,#0x80000000
        STR      R12,[R0, #+0]
//  285   }
//  286   //选择使能tx FIFO
//  287   if(txFIFO_enable == TRUE)
??LPLD_SPI_Init_19:
        LDRB     R12,[SP, #+7]
        CMP      R12,#+1
        BNE.N    ??LPLD_SPI_Init_41
//  288   {
//  289     spix->MCR &= ~SPI_MCR_DIS_TXF_MASK; 
        LDR      R12,[R0, #+0]
        BICS     R12,R12,#0x2000
        STR      R12,[R0, #+0]
        B.N      ??LPLD_SPI_Init_42
//  290   }
//  291   else
//  292   {
//  293     spix->MCR |= SPI_MCR_DIS_TXF_MASK;//选择传统方式
??LPLD_SPI_Init_41:
        LDR      R12,[R0, #+0]
        ORRS     R12,R12,#0x2000
        STR      R12,[R0, #+0]
//  294   }
//  295   //选择使能Rx FIFO
//  296   if(rxFIFO_enable == TRUE)
??LPLD_SPI_Init_42:
        LDRB     R12,[SP, #+6]
        CMP      R12,#+1
        BNE.N    ??LPLD_SPI_Init_43
//  297   {
//  298     spix->MCR &= ~SPI_MCR_DIS_RXF_MASK;
        LDR      R12,[R0, #+0]
        BICS     R12,R12,#0x1000
        STR      R12,[R0, #+0]
        B.N      ??LPLD_SPI_Init_44
//  299   }
//  300   else
//  301   {
//  302     spix->MCR |= SPI_MCR_DIS_RXF_MASK; //选择传统方式
??LPLD_SPI_Init_43:
        LDR      R12,[R0, #+0]
        ORRS     R12,R12,#0x1000
        STR      R12,[R0, #+0]
//  303   }
//  304   //选择使能发送完成中断
//  305   if(tx_complete_int == TRUE)
??LPLD_SPI_Init_44:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_SPI_Init_45
//  306   {
//  307     spix->RSER |= SPI_RSER_TCF_RE_MASK; 
        LDR      R12,[R0, #+48]
        ORRS     R12,R12,#0x80000000
        STR      R12,[R0, #+48]
        B.N      ??LPLD_SPI_Init_46
//  308   }
//  309   else
//  310   { 
//  311     spix->RSER &= ~SPI_RSER_TCF_RE_MASK;
??LPLD_SPI_Init_45:
        LDR      R12,[R0, #+48]
        LSLS     R12,R12,#+1      ;; ZeroExtS R12,R12,#+1,#+1
        LSRS     R12,R12,#+1
        STR      R12,[R0, #+48]
//  312   }
//  313   //选择使能发送队列结束中断
//  314   if(QueueEnd_Request_int == TRUE)
??LPLD_SPI_Init_46:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LPLD_SPI_Init_47
//  315   {
//  316     spix->RSER |=SPI_RSER_EOQF_RE_MASK;
        LDR      R12,[R0, #+48]
        ORRS     R12,R12,#0x10000000
        STR      R12,[R0, #+48]
        B.N      ??LPLD_SPI_Init_48
//  317   }
//  318   else
//  319     spix->RSER &= ~SPI_RSER_EOQF_RE_MASK;
??LPLD_SPI_Init_47:
        LDR      R12,[R0, #+48]
        BICS     R12,R12,#0x10000000
        STR      R12,[R0, #+48]
//  320   //选择使能txFIFO为空中断
//  321   if(txFIFO_underflow_int== TRUE)
??LPLD_SPI_Init_48:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BNE.N    ??LPLD_SPI_Init_49
//  322   {
//  323     spix->RSER |=SPI_RSER_TFUF_RE_MASK;
        LDR      R12,[R0, #+48]
        ORRS     R12,R12,#0x8000000
        STR      R12,[R0, #+48]
        B.N      ??LPLD_SPI_Init_50
//  324   }
//  325   else
//  326     spix->RSER &= ~SPI_RSER_TFUF_RE_MASK;
??LPLD_SPI_Init_49:
        LDR      R12,[R0, #+48]
        BICS     R12,R12,#0x8000000
        STR      R12,[R0, #+48]
//  327   //选择使能rxFIFO溢出中断
//  328   if(rxFIFO_overflow_int== TRUE)
??LPLD_SPI_Init_50:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LPLD_SPI_Init_51
//  329   {
//  330     spix->RSER |=SPI_RSER_RFOF_RE_MASK;
        LDR      R12,[R0, #+48]
        ORRS     R12,R12,#0x80000
        STR      R12,[R0, #+48]
        B.N      ??LPLD_SPI_Init_52
//  331   }
//  332   else
//  333   {
//  334     spix->RSER &= ~SPI_RSER_RFOF_RE_MASK;
??LPLD_SPI_Init_51:
        LDR      R12,[R0, #+48]
        BICS     R12,R12,#0x80000
        STR      R12,[R0, #+48]
//  335   }
//  336   //选择使能txFIFO有数据进入队列中断或者DMA请求
//  337   if(txFIFO_Fill_int== TRUE)
??LPLD_SPI_Init_52:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??LPLD_SPI_Init_53
//  338   {
//  339     spix->RSER |=SPI_RSER_TFFF_RE_MASK;
        LDR      R12,[R0, #+48]
        ORRS     R12,R12,#0x2000000
        STR      R12,[R0, #+48]
        B.N      ??LPLD_SPI_Init_54
//  340   }
//  341   else
//  342   {
//  343     spix->RSER &= ~SPI_RSER_TFFF_RE_MASK;
??LPLD_SPI_Init_53:
        LDR      R12,[R0, #+48]
        BICS     R12,R12,#0x2000000
        STR      R12,[R0, #+48]
//  344   }
//  345   //选择使能rxFIFO非空中断或者DMA请求
//  346   if(rxFIFO_Drain_int== TRUE)
??LPLD_SPI_Init_54:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_SPI_Init_55
//  347   {
//  348     spix->RSER |=SPI_RSER_RFDF_RE_MASK;
        LDR      R12,[R0, #+48]
        ORRS     R12,R12,#0x20000
        STR      R12,[R0, #+48]
        B.N      ??LPLD_SPI_Init_56
//  349   }
//  350   else
//  351   {
//  352     spix->RSER &= ~SPI_RSER_RFDF_RE_MASK;
??LPLD_SPI_Init_55:
        LDR      R12,[R0, #+48]
        BICS     R12,R12,#0x20000
        STR      R12,[R0, #+48]
//  353   }
//  354   //选择使能txFIFO中断或者DMA请求
//  355   if(txFIFO_req == SPI_FIFO_DMAREQUEST)
??LPLD_SPI_Init_56:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_SPI_Init_57
//  356   {
//  357     spix->RSER |=SPI_RSER_TFFF_DIRS_MASK;
        LDR      R12,[R0, #+48]
        ORRS     R12,R12,#0x1000000
        STR      R12,[R0, #+48]
        B.N      ??LPLD_SPI_Init_58
//  358   }
//  359   else
//  360   {
//  361     spix->RSER &= ~SPI_RSER_TFFF_DIRS_MASK;
??LPLD_SPI_Init_57:
        LDR      R12,[R0, #+48]
        BICS     R12,R12,#0x1000000
        STR      R12,[R0, #+48]
//  362   }
//  363   //选择使能rxFIFO中断或者DMA请求
//  364   if(rxFIFO_req == SPI_FIFO_DMAREQUEST)
??LPLD_SPI_Init_58:
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        CMP      LR,#+1
        BNE.N    ??LPLD_SPI_Init_59
//  365   {
//  366     spix->RSER |= SPI_RSER_RFDF_DIRS_MASK;
        LDR      R12,[R0, #+48]
        ORRS     R12,R12,#0x10000
        STR      R12,[R0, #+48]
        B.N      ??LPLD_SPI_Init_60
//  367   }
//  368   else 
//  369   {
//  370     spix->RSER &= ~SPI_RSER_RFDF_DIRS_MASK;
??LPLD_SPI_Init_59:
        LDR      R12,[R0, #+48]
        BICS     R12,R12,#0x10000
        STR      R12,[R0, #+48]
//  371   }
//  372   //添加中断回调函数
//  373 
//  374   if(spix == SPI0)
??LPLD_SPI_Init_60:
        LDR.W    R12,??DataTable8_2  ;; 0x4002c000
        CMP      R0,R12
        BNE.N    ??LPLD_SPI_Init_61
//  375   {
//  376     if(tx_complete_int == TRUE)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_SPI_Init_62
//  377     { SPI0_ISR[SPI_TxComplete_Int] = TxComplete_isr; }
        LDR.W    R1,??DataTable8_44
        LDR      R12,[SP, #+32]
        STR      R12,[R1, #+0]
//  378     if(QueueEnd_Request_int == TRUE)
??LPLD_SPI_Init_62:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LPLD_SPI_Init_63
//  379     { SPI0_ISR[SPI_QueueEndReq_Int] = QueueEndReq_isr; }
        LDR.W    R1,??DataTable8_44
        LDR      R2,[SP, #+28]
        STR      R2,[R1, #+4]
//  380     if(txFIFO_underflow_int == TRUE)
??LPLD_SPI_Init_63:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BNE.N    ??LPLD_SPI_Init_64
//  381     { SPI0_ISR[SPI_TxFIFO_UnderflowInt] = UnderflowInt_isr; }
        LDR.W    R1,??DataTable8_44
        LDR      R2,[SP, #+24]
        STR      R2,[R1, #+8]
//  382     if(rxFIFO_overflow_int == TRUE)
??LPLD_SPI_Init_64:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LPLD_SPI_Init_65
//  383     { SPI0_ISR[SPI_RxFIFO_OverflowInt] = OverflowInt_isr; }
        LDR.W    R1,??DataTable8_44
        LDR      R2,[SP, #+20]
        STR      R2,[R1, #+12]
//  384     if(txFIFO_Fill_int == TRUE && txFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_65:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??LPLD_SPI_Init_66
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??LPLD_SPI_Init_66
//  385     { SPI0_ISR[SPI_TxFIFO_FillInt] = FillInt_isr; }
        LDR.W    R1,??DataTable8_44
        LDR      R2,[SP, #+16]
        STR      R2,[R1, #+16]
//  386     if(rxFIFO_Drain_int == TRUE && rxFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_66:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_SPI_Init_67
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        CMP      LR,#+0
        BNE.N    ??LPLD_SPI_Init_67
//  387     { SPI0_ISR[SPI_RxFIFO_DrainInt] = DrainInt_isr; }
        LDR.W    R1,??DataTable8_44
        LDR      R2,[SP, #+12]
        STR      R2,[R1, #+20]
        B.N      ??LPLD_SPI_Init_67
//  388   }
//  389   else if (spix == SPI1)
??LPLD_SPI_Init_61:
        LDR.W    R12,??DataTable8_21  ;; 0x4002d000
        CMP      R0,R12
        BNE.N    ??LPLD_SPI_Init_68
//  390   {
//  391     if(tx_complete_int == TRUE)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_SPI_Init_69
//  392     { SPI1_ISR[SPI_TxComplete_Int] = TxComplete_isr; }
        LDR.W    R1,??DataTable8_45
        LDR      R12,[SP, #+32]
        STR      R12,[R1, #+0]
//  393     if(QueueEnd_Request_int == TRUE)
??LPLD_SPI_Init_69:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LPLD_SPI_Init_70
//  394     { SPI1_ISR[SPI_QueueEndReq_Int] = QueueEndReq_isr; }
        LDR.W    R1,??DataTable8_45
        LDR      R2,[SP, #+28]
        STR      R2,[R1, #+4]
//  395     if(txFIFO_underflow_int == TRUE)
??LPLD_SPI_Init_70:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BNE.N    ??LPLD_SPI_Init_71
//  396     { SPI1_ISR[SPI_TxFIFO_UnderflowInt] = UnderflowInt_isr; }
        LDR.W    R1,??DataTable8_45
        LDR      R2,[SP, #+24]
        STR      R2,[R1, #+8]
//  397     if(rxFIFO_overflow_int == TRUE)
??LPLD_SPI_Init_71:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LPLD_SPI_Init_72
//  398     { SPI1_ISR[SPI_RxFIFO_OverflowInt] = OverflowInt_isr; }
        LDR.W    R1,??DataTable8_45
        LDR      R2,[SP, #+20]
        STR      R2,[R1, #+12]
//  399     if(txFIFO_Fill_int == TRUE && txFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_72:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??LPLD_SPI_Init_73
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??LPLD_SPI_Init_73
//  400     { SPI1_ISR[SPI_TxFIFO_FillInt] = FillInt_isr; }
        LDR.W    R1,??DataTable8_45
        LDR      R2,[SP, #+16]
        STR      R2,[R1, #+16]
//  401     if(rxFIFO_Drain_int == TRUE && rxFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_73:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_SPI_Init_67
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        CMP      LR,#+0
        BNE.N    ??LPLD_SPI_Init_67
//  402     { SPI1_ISR[SPI_RxFIFO_DrainInt] = DrainInt_isr; }
        LDR.W    R1,??DataTable8_45
        LDR      R2,[SP, #+12]
        STR      R2,[R1, #+20]
        B.N      ??LPLD_SPI_Init_67
//  403   }
//  404   else if (spix == SPI2)
??LPLD_SPI_Init_68:
        LDR.W    R12,??DataTable8_34  ;; 0x400ac000
        CMP      R0,R12
        BNE.N    ??LPLD_SPI_Init_67
//  405   {
//  406     if(tx_complete_int == TRUE)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_SPI_Init_74
//  407     { SPI2_ISR[SPI_TxComplete_Int] = TxComplete_isr; }
        LDR.W    R1,??DataTable8_46
        LDR      R12,[SP, #+32]
        STR      R12,[R1, #+0]
//  408     if(QueueEnd_Request_int == TRUE)
??LPLD_SPI_Init_74:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LPLD_SPI_Init_75
//  409     { SPI2_ISR[SPI_QueueEndReq_Int] = QueueEndReq_isr; }
        LDR.W    R1,??DataTable8_46
        LDR      R2,[SP, #+28]
        STR      R2,[R1, #+4]
//  410     if(txFIFO_underflow_int == TRUE)
??LPLD_SPI_Init_75:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BNE.N    ??LPLD_SPI_Init_76
//  411     { SPI2_ISR[SPI_TxFIFO_UnderflowInt] = UnderflowInt_isr; }
        LDR.W    R1,??DataTable8_46
        LDR      R2,[SP, #+24]
        STR      R2,[R1, #+8]
//  412     if(rxFIFO_overflow_int == TRUE)
??LPLD_SPI_Init_76:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LPLD_SPI_Init_77
//  413     { SPI2_ISR[SPI_RxFIFO_OverflowInt] = OverflowInt_isr; }
        LDR.W    R1,??DataTable8_46
        LDR      R2,[SP, #+20]
        STR      R2,[R1, #+12]
//  414     if(txFIFO_Fill_int == TRUE && txFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_77:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??LPLD_SPI_Init_78
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??LPLD_SPI_Init_78
//  415     { SPI2_ISR[SPI_TxFIFO_FillInt] = FillInt_isr; }
        LDR.W    R1,??DataTable8_46
        LDR      R2,[SP, #+16]
        STR      R2,[R1, #+16]
//  416     if(rxFIFO_Drain_int == TRUE && rxFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_78:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_SPI_Init_67
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        CMP      LR,#+0
        BNE.N    ??LPLD_SPI_Init_67
//  417     { SPI2_ISR[SPI_RxFIFO_DrainInt] = DrainInt_isr; }
        LDR.W    R1,??DataTable8_46
        LDR      R2,[SP, #+12]
        STR      R2,[R1, #+20]
//  418   }
//  419   //配置SPI CTAR寄存器，设置SPI的总线时序
//  420   spix->CTAR[0] = 0 & (~SPI_CTAR_LSBFE_MASK)
//  421                       |SPI_CTAR_DBR_MASK  
//  422                       |SPI_CTAR_PBR(0)           
//  423                       |SPI_CTAR_FMSZ(7);        
??LPLD_SPI_Init_67:
        MOVS     R1,#-1207959552
        STR      R1,[R0, #+12]
//  424                        
//  425   //设置SPI总线频率
//  426   //SCK总线频率 = g_bus_clock/ SCK_DIV_x                                             
//  427   spix->CTAR[0] |=SPI_CTAR_BR(sck_div);
        LDR      R1,[R0, #+12]
        LDRB     R2,[SP, #+8]
        ANDS     R2,R2,#0xF
        ORRS     R1,R2,R1
        STR      R1,[R0, #+12]
//  428 
//  429   //tCSC = (1/g_bus_clock) x PCSSCK x CSSCK
//  430   //tCSC = 1/50,000,000 x PCSSCK x CSSCK
//  431   spix->CTAR[0] |=SPI_CTAR_PCSSCK(1); 
        LDR      R1,[R0, #+12]
        ORRS     R1,R1,#0x400000
        STR      R1,[R0, #+12]
//  432   spix->CTAR[0] |=SPI_CTAR_CSSCK(1);  
        LDR      R1,[R0, #+12]
        ORRS     R1,R1,#0x1000
        STR      R1,[R0, #+12]
//  433   
//  434   //tDT = (1/g_bus_clock) x PDT x DT
//  435   spix->CTAR[0] |=SPI_CTAR_DT(1);
        LDR      R1,[R0, #+12]
        ORRS     R1,R1,#0x10
        STR      R1,[R0, #+12]
//  436   spix->CTAR[0] |=SPI_CTAR_PDT(1);
        LDR      R1,[R0, #+12]
        ORRS     R1,R1,#0x40000
        STR      R1,[R0, #+12]
//  437   
//  438   //Config the Delay of the last edge of SCK and the negation of PCS
//  439   //tASC = (1/g_bus_clock) x PASC x ASC
//  440   spix->CTAR[0] |=SPI_CTAR_PASC(1);
        LDR      R1,[R0, #+12]
        ORRS     R1,R1,#0x100000
        STR      R1,[R0, #+12]
//  441   spix->CTAR[0] |=SPI_CTAR_ASC(1);
        LDR      R1,[R0, #+12]
        ORRS     R1,R1,#0x100
        STR      R1,[R0, #+12]
//  442   //清除标志位
//  443   spix->SR =  SPI_SR_RFDF_MASK   
//  444               |SPI_SR_RFOF_MASK
//  445               |SPI_SR_TFFF_MASK
//  446               |SPI_SR_TFUF_MASK
//  447               |SPI_SR_TCF_MASK
//  448               |SPI_SR_EOQF_MASK;
        LDR.W    R1,??DataTable8_47  ;; 0x9a0a0000
        STR      R1,[R0, #+44]
//  449   //使能SPIx
//  450   spix->MCR &=~SPI_MCR_HALT_MASK; 
        LDR      R1,[R0, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  451   
//  452   return 1;
        MOVS     R0,#+1
??LPLD_SPI_Init_13:
        ADD      SP,SP,#+36
        POP      {R4-R11}
        LDR      PC,[SP], #+20    ;; return
//  453 }
//  454 
//  455 /*
//  456  * LPLD_SPI_Deinit
//  457  * SPI反初始化函数,在该函数中将SPI设置成为暂停模式，关闭SPI总线时钟，
//  458  * 关闭SPI外设中断
//  459  * 
//  460  * 参数:
//  461  *    spi_init_structure--SPI初始化结构体，
//  462  *                        具体定义见SPI_InitTypeDef
//  463  *
//  464  * 输出:
//  465  *    0--配置错误
//  466  *    1--配置成功
//  467  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  468 uint8 LPLD_SPI_Deinit(SPI_InitTypeDef spi_init_structure)
//  469 {
LPLD_SPI_Deinit:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  470   SPI_Type * spix = spi_init_structure.SPI_SPIx;
        LDR      R0,[SP, #+8]
//  471   spix->MCR |= SPI_MCR_HALT_MASK; //
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
//  472   if(spix == SPI0)
        LDR.W    R1,??DataTable8_2  ;; 0x4002c000
        CMP      R0,R1
        BNE.N    ??LPLD_SPI_Deinit_0
//  473   {
//  474     disable_irq(SPI0_IRQn);
        MOVS     R0,#+26
        BL       NVIC_DisableIRQ
//  475     SIM->SCGC6 &= ~SIM_SCGC6_DSPI0_MASK;
        LDR.W    R0,??DataTable8_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  476   }
//  477   else if(spix == SPI1)
//  478   {
//  479     disable_irq(SPI1_IRQn);
//  480     SIM->SCGC6 &= ~SIM_SCGC6_SPI1_MASK;
//  481   }
//  482   else if(spix == SPI2)
//  483   {
//  484     disable_irq(SPI2_IRQn);
//  485     SIM->SCGC3 &= ~SIM_SCGC3_SPI2_MASK;
//  486   }
//  487   else
//  488     return 0;
//  489   return 1;
??LPLD_SPI_Deinit_1:
        MOVS     R0,#+1
??LPLD_SPI_Deinit_2:
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
??LPLD_SPI_Deinit_0:
        LDR.W    R1,??DataTable8_21  ;; 0x4002d000
        CMP      R0,R1
        BNE.N    ??LPLD_SPI_Deinit_3
        MOVS     R0,#+27
        BL       NVIC_DisableIRQ
        LDR.W    R0,??DataTable8_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable8_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Deinit_1
??LPLD_SPI_Deinit_3:
        LDR.W    R1,??DataTable8_34  ;; 0x400ac000
        CMP      R0,R1
        BNE.N    ??LPLD_SPI_Deinit_4
        MOVS     R0,#+28
        BL       NVIC_DisableIRQ
        LDR.W    R0,??DataTable8_35  ;; 0x40048030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_35  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Deinit_1
??LPLD_SPI_Deinit_4:
        MOVS     R0,#+0
        B.N      ??LPLD_SPI_Deinit_2
//  490 }
//  491 
//  492 /*
//  493  * LPLD_SPI_EnableIrq
//  494  * 使能SPI外设中断
//  495  * 
//  496  * 参数:
//  497  *    spi_init_structure--SPI初始化结构体，
//  498  *                        具体定义见SPI_InitTypeDef
//  499  *
//  500  * 输出:
//  501  *    0--配置错误
//  502  *    1--配置成功
//  503  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  504 uint8 LPLD_SPI_EnableIrq(SPI_InitTypeDef spi_init_structure)
//  505 {
LPLD_SPI_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  506   SPI_Type * spix = spi_init_structure.SPI_SPIx;
        LDR      R0,[SP, #+8]
//  507   if(spix == SPI0)
        LDR.N    R1,??DataTable8_2  ;; 0x4002c000
        CMP      R0,R1
        BNE.N    ??LPLD_SPI_EnableIrq_0
//  508   {
//  509     enable_irq(SPI0_IRQn);
        MOVS     R0,#+26
        BL       NVIC_EnableIRQ
//  510   }
//  511   else if(spix == SPI1)
//  512   {
//  513     enable_irq(SPI1_IRQn);
//  514   }
//  515   else if(spix == SPI2)
//  516   {
//  517     enable_irq(SPI2_IRQn);
//  518   }
//  519   else
//  520     return 0;
//  521 
//  522   return 1;
??LPLD_SPI_EnableIrq_1:
        MOVS     R0,#+1
??LPLD_SPI_EnableIrq_2:
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
??LPLD_SPI_EnableIrq_0:
        LDR.W    R1,??DataTable8_21  ;; 0x4002d000
        CMP      R0,R1
        BNE.N    ??LPLD_SPI_EnableIrq_3
        MOVS     R0,#+27
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_SPI_EnableIrq_1
??LPLD_SPI_EnableIrq_3:
        LDR.W    R1,??DataTable8_34  ;; 0x400ac000
        CMP      R0,R1
        BNE.N    ??LPLD_SPI_EnableIrq_4
        MOVS     R0,#+28
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_SPI_EnableIrq_1
??LPLD_SPI_EnableIrq_4:
        MOVS     R0,#+0
        B.N      ??LPLD_SPI_EnableIrq_2
//  523 }
//  524 
//  525 /*
//  526  * LPLD_SPI_EnableIrq
//  527  * 禁止SPI外设中断
//  528  * 
//  529  * 参数:
//  530  *    spi_init_structure--SPI初始化结构体，
//  531  *                        具体定义见SPI_InitTypeDef
//  532  *
//  533  * 输出:
//  534  *    0--配置错误
//  535  *    1--配置成功
//  536  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  537 uint8 LPLD_SPI_DisableIrq(SPI_InitTypeDef spi_init_structure)
//  538 {
LPLD_SPI_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  539   SPI_Type * spix = spi_init_structure.SPI_SPIx;
        LDR      R0,[SP, #+8]
//  540   if(spix == SPI0)
        LDR.N    R1,??DataTable8_2  ;; 0x4002c000
        CMP      R0,R1
        BNE.N    ??LPLD_SPI_DisableIrq_0
//  541   {
//  542     disable_irq(SPI0_IRQn);
        MOVS     R0,#+26
        BL       NVIC_DisableIRQ
//  543   }
//  544   else if(spix == SPI1)
//  545   {
//  546     disable_irq(SPI1_IRQn);
//  547   }
//  548   else if(spix == SPI2)
//  549   {
//  550     disable_irq(SPI2_IRQn);
//  551   }
//  552   else
//  553     return 0;
//  554   return 1;
??LPLD_SPI_DisableIrq_1:
        MOVS     R0,#+1
??LPLD_SPI_DisableIrq_2:
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
??LPLD_SPI_DisableIrq_0:
        LDR.N    R1,??DataTable8_21  ;; 0x4002d000
        CMP      R0,R1
        BNE.N    ??LPLD_SPI_DisableIrq_3
        MOVS     R0,#+27
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_SPI_DisableIrq_1
??LPLD_SPI_DisableIrq_3:
        LDR.W    R1,??DataTable8_34  ;; 0x400ac000
        CMP      R0,R1
        BNE.N    ??LPLD_SPI_DisableIrq_4
        MOVS     R0,#+28
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_SPI_DisableIrq_1
??LPLD_SPI_DisableIrq_4:
        MOVS     R0,#+0
        B.N      ??LPLD_SPI_DisableIrq_2
//  555 }
//  556 
//  557 /*
//  558  * LPLD_SPI_Master_WriteRead
//  559  * K60主机SPI向从机写数据，并读取从机数据
//  560  * 
//  561  * 参数:
//  562  *    spix--SPI选择
//  563  *      |__SPI0 -选择SPI0模块
//  564  *      |__SPI1 -选择SPI1模块
//  565  *      |__SPI2 -选择SPI2模块
//  566  *    data--要发送数据
//  567  *      |__单位为一个字节，8位
//  568  *    pcsx--CS片选端口号
//  569  *      |__SPI_PCS0 -0号片选(SPI0、SPI1、SPI2含有)
//  570  *      |__SPI_PCS1 -1号片选(SPI0、SPI1、SPI2含有)
//  571  *      |__SPI_PCS2 -2号片选(SPI0、SPI1含有)
//  572  *      |__SPI_PCS3 -3号片选(SPI0、SPI1含有)
//  573  *      |__SPI_PCS4 -4号片选(SPI0含有)
//  574  *      |__SPI_PCS5 -5号片选(SPI0含有)
//  575  *    pcs_state--一帧数据传输完成后CS的状态
//  576  *      |__SPI_PCS_ASSERTED -保持片选有效,PCS信号保持为低电平
//  577  *      |__SPI_PCS_INACTIVE -片选无效,PCS信号变为高电平
//  578  * 输出:
//  579  *    读取从机8位的数据
//  580  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  581 uint8 LPLD_SPI_Master_WriteRead(SPI_Type *spix,uint8 data,uint8 pcsx,uint8 pcs_state)
//  582 {
//  583   uint8 temp;
//  584   
//  585   spix->PUSHR  = (((uint32_t)(((uint32_t)(pcs_state))<<SPI_PUSHR_CONT_SHIFT))&SPI_PUSHR_CONT_MASK)
//  586                |SPI_PUSHR_CTAS(0)
//  587                |SPI_PUSHR_PCS(pcsx)
//  588                |data;                 
LPLD_SPI_Master_WriteRead:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+16
        ANDS     R2,R2,#0x3F0000
        ORRS     R2,R2,R3, LSL #+31
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R1,R1,R2
        STR      R1,[R0, #+52]
//  589   
//  590   while(!(spix->SR & SPI_SR_TCF_MASK));
??LPLD_SPI_Master_WriteRead_0:
        LDR      R1,[R0, #+44]
        CMP      R1,#+0
        BPL.N    ??LPLD_SPI_Master_WriteRead_0
//  591   spix->SR |= SPI_SR_TCF_MASK ;               
        LDR      R1,[R0, #+44]
        ORRS     R1,R1,#0x80000000
        STR      R1,[R0, #+44]
//  592   
//  593   while(!(spix->SR & SPI_SR_RFDF_MASK)); 
??LPLD_SPI_Master_WriteRead_1:
        LDR      R1,[R0, #+44]
        LSLS     R1,R1,#+14
        BPL.N    ??LPLD_SPI_Master_WriteRead_1
//  594   temp = (uint8)(spix->POPR & 0xff);           
        LDR      R1,[R0, #+56]
//  595   spix->SR |= SPI_SR_RFDF_MASK;                
        LDR      R2,[R0, #+44]
        ORRS     R2,R2,#0x20000
        STR      R2,[R0, #+44]
//  596   return temp;
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  597   
//  598 }
//  599 
//  600 /*
//  601  * LPLD_SPI_Master_Read
//  602  * K60主机读取从机数据
//  603  * 
//  604  * 参数:
//  605  *    spix--SPI选择
//  606  *      |__SPI0 -选择SPI0模块
//  607  *      |__SPI1 -选择SPI1模块
//  608  *      |__SPI2 -选择SPI2模块
//  609  * 输出:
//  610  *    读取从机8位的数据
//  611  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  612 uint8 LPLD_SPI_Master_Read(SPI_Type *spix)
//  613 {
//  614   uint8 temp;
//  615 
//  616   while(!(spix->SR & SPI_SR_RFDF_MASK)); //=1 RIFO is not empty
LPLD_SPI_Master_Read:
??LPLD_SPI_Master_Read_0:
        LDR      R1,[R0, #+44]
        LSLS     R1,R1,#+14
        BPL.N    ??LPLD_SPI_Master_Read_0
//  617   temp=(uint8)spix->POPR;
        LDR      R1,[R0, #+56]
//  618   spix->SR |=SPI_SR_RFDF_MASK;
        LDR      R2,[R0, #+44]
        ORRS     R2,R2,#0x20000
        STR      R2,[R0, #+44]
//  619 
//  620   return temp;
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  621 }
//  622 /*
//  623  * LPLD_SPI_Master_Write
//  624  * K60主机SPI向从机写数据
//  625  * 
//  626  * 参数:
//  627  *    spix--SPI选择
//  628  *      |__SPI0 -选择SPI0模块
//  629  *      |__SPI1 -选择SPI1模块
//  630  *      |__SPI2 -选择SPI2模块
//  631  *    data--要发送数据
//  632  *      |__单位为一个字节，8位
//  633  *    pcsx--CS片选端口号
//  634  *      |__SPI_PCS0  -0号片选(SPI0、SPI1、SPI2含有)
//  635  *      |__SPI_PCS1  -1号片选(SPI0、SPI1、SPI2含有)
//  636  *      |__SPI_PCS2  -2号片选(SPI0、SPI1含有)
//  637  *      |__SPI_PCS3  -3号片选(SPI0、SPI1含有)
//  638  *      |__SPI_PCS4  -4号片选(SPI0含有)
//  639  *      |__SPI_PCS5  -5号片选(SPI0含有)
//  640  *    pcs_state--一帧数据传输完成后CS的状态
//  641  *      |__SPI_PCS_ASSERTED -保持片选有效,PCS信号保持为低电平
//  642  *      |__SPI_PCS_INACTIVE -片选无效,PCS信号变为高电平
//  643  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  644 void LPLD_SPI_Master_Write(SPI_Type *spix,uint8 data,uint8 pcsx,uint8 pcs_state)
//  645 {  
//  646   
//  647   spix->PUSHR = (((uint32_t)(((uint32_t)(pcs_state))<<SPI_PUSHR_CONT_SHIFT)) & SPI_PUSHR_CONT_MASK)
//  648                |SPI_PUSHR_CTAS(0)
//  649                |SPI_PUSHR_PCS(pcsx)
//  650                |data; 
LPLD_SPI_Master_Write:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+16
        ANDS     R2,R2,#0x3F0000
        ORRS     R2,R2,R3, LSL #+31
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R1,R1,R2
        STR      R1,[R0, #+52]
//  651 
//  652   while(!(spix->SR & SPI_SR_TCF_MASK));
??LPLD_SPI_Master_Write_0:
        LDR      R1,[R0, #+44]
        CMP      R1,#+0
        BPL.N    ??LPLD_SPI_Master_Write_0
//  653   spix->SR |= SPI_SR_TCF_MASK ;            
        LDR      R1,[R0, #+44]
        ORRS     R1,R1,#0x80000000
        STR      R1,[R0, #+44]
//  654 }
        BX       LR               ;; return
//  655 
//  656 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  657 void SPI0_IRQHandler(void)
//  658 {
SPI0_IRQHandler:
        PUSH     {R7,LR}
//  659 #if (UCOS_II > 0u)
//  660   OS_CPU_SR  cpu_sr = 0u;
//  661   OS_ENTER_CRITICAL(); 
//  662   OSIntEnter();
//  663   OS_EXIT_CRITICAL();
//  664 #endif
//  665   if( SPI0->SR & SPI_SR_TCF_MASK)
        LDR.N    R0,??DataTable8_48  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??SPI0_IRQHandler_0
//  666   {
//  667     SPI0_ISR[SPI_TxComplete_Int]();
        LDR.N    R0,??DataTable8_44
        LDR      R0,[R0, #+0]
        BLX      R0
//  668     SPI0->SR |= SPI_SR_TCF_MASK;
        LDR.N    R0,??DataTable8_48  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable8_48  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  669   }
//  670   else if( SPI0->SR & SPI_SR_EOQF_MASK)
??SPI0_IRQHandler_0:
        LDR.N    R0,??DataTable8_48  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BPL.N    ??SPI0_IRQHandler_2
//  671   {
//  672     SPI0_ISR[SPI_QueueEndReq_Int]();
        LDR.N    R0,??DataTable8_44
        LDR      R0,[R0, #+4]
        BLX      R0
//  673     SPI0->SR |= SPI_SR_EOQF_MASK;
        LDR.N    R0,??DataTable8_48  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable8_48  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  674   }
//  675   else if( SPI0->SR & SPI_SR_TFUF_MASK)
??SPI0_IRQHandler_2:
        LDR.N    R0,??DataTable8_48  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??SPI0_IRQHandler_3
//  676   {
//  677     SPI0_ISR[SPI_TxFIFO_UnderflowInt]();
        LDR.N    R0,??DataTable8_44
        LDR      R0,[R0, #+8]
        BLX      R0
//  678     SPI0->SR |= SPI_SR_TFUF_MASK;
        LDR.N    R0,??DataTable8_48  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable8_48  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  679   }
//  680   else if( SPI0->SR & SPI_SR_TFFF_MASK)
??SPI0_IRQHandler_3:
        LDR.N    R0,??DataTable8_48  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??SPI0_IRQHandler_4
//  681   {  
//  682     SPI0_ISR[SPI_TxFIFO_FillInt]();    
        LDR.N    R0,??DataTable8_44
        LDR      R0,[R0, #+16]
        BLX      R0
//  683     SPI0->SR |= SPI_SR_TFFF_MASK;
        LDR.N    R0,??DataTable8_48  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable8_48  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  684   }
//  685   else if( SPI0->SR & SPI_SR_RFOF_MASK)
??SPI0_IRQHandler_4:
        LDR.N    R0,??DataTable8_48  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+12
        BPL.N    ??SPI0_IRQHandler_5
//  686   {   
//  687     SPI0_ISR[SPI_RxFIFO_OverflowInt]();
        LDR.N    R0,??DataTable8_44
        LDR      R0,[R0, #+12]
        BLX      R0
//  688     SPI0->SR |= SPI_SR_RFOF_MASK;
        LDR.N    R0,??DataTable8_48  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable8_48  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  689   }
//  690   else if( SPI0->SR & SPI_SR_RFDF_MASK)
??SPI0_IRQHandler_5:
        LDR.N    R0,??DataTable8_48  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??SPI0_IRQHandler_1
//  691   {
//  692     SPI0_ISR[SPI_RxFIFO_DrainInt]();
        LDR.N    R0,??DataTable8_44
        LDR      R0,[R0, #+20]
        BLX      R0
//  693     SPI0->SR |= SPI_SR_RFDF_MASK;
        LDR.N    R0,??DataTable8_48  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable8_48  ;; 0x4002c02c
        STR      R0,[R1, #+0]
//  694   }
//  695 #if (UCOS_II > 0u)
//  696   OSIntExit();          
//  697 #endif
//  698 }
??SPI0_IRQHandler_1:
        POP      {R0,PC}          ;; return
//  699 
//  700 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  701 void SPI1_IRQHandler(void)
//  702 {
SPI1_IRQHandler:
        PUSH     {R7,LR}
//  703 #if (UCOS_II > 0u)
//  704   OS_CPU_SR  cpu_sr = 0u;
//  705   OS_ENTER_CRITICAL(); 
//  706   OSIntEnter();
//  707   OS_EXIT_CRITICAL();
//  708 #endif
//  709   if( SPI1->SR & SPI_SR_TCF_MASK)
        LDR.N    R0,??DataTable8_49  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??SPI1_IRQHandler_0
//  710   {
//  711     SPI1_ISR[SPI_TxComplete_Int]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+0]
        BLX      R0
//  712     SPI1->SR |= SPI_SR_TCF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  713   }
//  714   else if( SPI1->SR & SPI_SR_EOQF_MASK)
??SPI1_IRQHandler_0:
        LDR.N    R0,??DataTable8_49  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BPL.N    ??SPI1_IRQHandler_2
//  715   {
//  716     SPI1_ISR[SPI_QueueEndReq_Int]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+4]
        BLX      R0
//  717     SPI1->SR |= SPI_SR_EOQF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  718   }
//  719   else if( SPI1->SR & SPI_SR_TFUF_MASK)
??SPI1_IRQHandler_2:
        LDR.N    R0,??DataTable8_49  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??SPI1_IRQHandler_3
//  720   {
//  721     SPI1_ISR[SPI_TxFIFO_UnderflowInt]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+8]
        BLX      R0
//  722     SPI1->SR |= SPI_SR_TFUF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  723   }
//  724   else if( SPI1->SR & SPI_SR_TFFF_MASK)
??SPI1_IRQHandler_3:
        LDR.N    R0,??DataTable8_49  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??SPI1_IRQHandler_4
//  725   {  
//  726     SPI1_ISR[SPI_TxFIFO_FillInt]();    
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+16]
        BLX      R0
//  727     SPI1->SR |= SPI_SR_TFFF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  728   }
//  729   else if( SPI1->SR & SPI_SR_RFOF_MASK)
??SPI1_IRQHandler_4:
        LDR.N    R0,??DataTable8_49  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+12
        BPL.N    ??SPI1_IRQHandler_5
//  730   {   
//  731     SPI1_ISR[SPI_RxFIFO_OverflowInt]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+12]
        BLX      R0
//  732     SPI1->SR |= SPI_SR_RFOF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable8_49  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  733   }
//  734   else if( SPI1->SR & SPI_SR_RFDF_MASK)
??SPI1_IRQHandler_5:
        LDR.N    R0,??DataTable8_49  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??SPI1_IRQHandler_1
//  735   {
//  736     SPI1_ISR[SPI_RxFIFO_DrainInt]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+20]
        BLX      R0
//  737     SPI1->SR |= SPI_SR_RFDF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable8_49  ;; 0x4002d02c
        STR      R0,[R1, #+0]
//  738   }
//  739 #if (UCOS_II > 0u)
//  740   OSIntExit();         
//  741 #endif
//  742 }
??SPI1_IRQHandler_1:
        POP      {R0,PC}          ;; return
//  743 
//  744 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  745 void SPI2_IRQHandler(void)
//  746 {
SPI2_IRQHandler:
        PUSH     {R7,LR}
//  747 #if (UCOS_II > 0u)
//  748   OS_CPU_SR  cpu_sr = 0u;
//  749   OS_ENTER_CRITICAL(); 
//  750   OSIntEnter();
//  751   OS_EXIT_CRITICAL();
//  752 #endif
//  753   if( SPI2->SR & SPI_SR_TCF_MASK)
        LDR.N    R0,??DataTable8_50  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??SPI2_IRQHandler_0
//  754   {
//  755     SPI2_ISR[SPI_TxComplete_Int]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+0]
        BLX      R0
//  756     SPI2->SR |= SPI_SR_TCF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable8_50  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  757   }
//  758   else if( SPI2->SR & SPI_SR_EOQF_MASK)
??SPI2_IRQHandler_0:
        LDR.N    R0,??DataTable8_50  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BPL.N    ??SPI2_IRQHandler_2
//  759   {
//  760     SPI2_ISR[SPI_QueueEndReq_Int]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+4]
        BLX      R0
//  761     SPI2->SR |= SPI_SR_EOQF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable8_50  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  762   }
//  763   else if( SPI2->SR & SPI_SR_TFUF_MASK)
??SPI2_IRQHandler_2:
        LDR.N    R0,??DataTable8_50  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??SPI2_IRQHandler_3
//  764   {
//  765     SPI2_ISR[SPI_TxFIFO_UnderflowInt]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+8]
        BLX      R0
//  766     SPI2->SR |= SPI_SR_TFUF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable8_50  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  767   }
//  768   else if( SPI2->SR & SPI_SR_TFFF_MASK)
??SPI2_IRQHandler_3:
        LDR.N    R0,??DataTable8_50  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??SPI2_IRQHandler_4
//  769   {  
//  770     SPI2_ISR[SPI_TxFIFO_FillInt]();    
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+16]
        BLX      R0
//  771     SPI2->SR |= SPI_SR_TFFF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable8_50  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  772   }
//  773   else if( SPI2->SR & SPI_SR_RFOF_MASK)
??SPI2_IRQHandler_4:
        LDR.N    R0,??DataTable8_50  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+12
        BPL.N    ??SPI2_IRQHandler_5
//  774   {   
//  775     SPI2_ISR[SPI_RxFIFO_OverflowInt]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+12]
        BLX      R0
//  776     SPI2->SR |= SPI_SR_RFOF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable8_50  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  777   }
//  778   else if( SPI2->SR & SPI_SR_RFDF_MASK)
??SPI2_IRQHandler_5:
        LDR.N    R0,??DataTable8_50  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??SPI2_IRQHandler_1
//  779   {
//  780     SPI2_ISR[SPI_RxFIFO_DrainInt]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+20]
        BLX      R0
//  781     SPI2->SR |= SPI_SR_RFDF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable8_50  ;; 0x400ac02c
        STR      R0,[R1, #+0]
//  782   }
//  783 #if (UCOS_II > 0u)
//  784   OSIntExit();          
//  785 #endif
//  786 }
??SPI2_IRQHandler_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x4002c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x40049038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x4004b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x4004c010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x4004b008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0x4004c014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     0x4004b004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     0x4004c018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     0x4004b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     0x4004a05c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     0x4004903c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     0x4004b014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_16:
        DC32     0x40049040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_17:
        DC32     0x4004b018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_18:
        DC32     0x40049044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_19:
        DC32     0x3f0c01

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_20:
        DC32     0x4004b01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_21:
        DC32     0x4002d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_22:
        DC32     0x4004a028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_23:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_24:
        DC32     0x4004a024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_25:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_26:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_27:
        DC32     0x4004d018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_28:
        DC32     0x4004a02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_29:
        DC32     0x4004d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_30:
        DC32     0x4004a040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_31:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_32:
        DC32     0x4004a044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_33:
        DC32     0x4004d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_34:
        DC32     0x400ac000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_35:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_36:
        DC32     0x4004c02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_37:
        DC32     0x4004a050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_38:
        DC32     0x4004c03c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_39:
        DC32     0x4004c030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_40:
        DC32     0x4004a054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_41:
        DC32     0x4004c034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_42:
        DC32     0x4004a058

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_43:
        DC32     0x4004c038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_44:
        DC32     SPI0_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_45:
        DC32     SPI1_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_46:
        DC32     SPI2_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_47:
        DC32     0x9a0a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_48:
        DC32     0x4002c02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_49:
        DC32     0x4002d02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_50:
        DC32     0x400ac02c

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  787 
//  788 
//  789 
//  790 
//  791 
// 
//    72 bytes in section .bss
// 2 904 bytes in section .text
// 
// 2 904 bytes of CODE memory
//    72 bytes of DATA memory
//
//Errors: none
//Warnings: none
