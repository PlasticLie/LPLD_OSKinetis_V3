///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    16/Feb/2014  11:35:17 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\embed\LPLD\LPLD_OSKinetis_V3\lib\common\assert.c     /
//    Command line =  C:\embed\LPLD\LPLD_OSKinetis_V3\lib\common\assert.c -D  /
//                    LPLD_K60 -lCN "C:\embed\LPLD\LPLD_OSKinetis_V3\project\ /
//                    02-(GPIO)LPLD_LedLight\iar\RAM\List\" -lB               /
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
//                    edLight\iar\RAM\List\assert.s                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME assert

        #define SHT_PROGBITS 0x1

        EXTERN printf

        PUBLIC ASSERT_FAILED_STR
        PUBLIC assert_failed

// C:\embed\LPLD\LPLD_OSKinetis_V3\lib\common\assert.c
//    1 /**
//    2  * @file assert.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief ���Ժ�������
//    6  *
//    7  * ���Ľ���:�������޸�
//    8  *
//    9  * һ�㲻ֱ�ӵ�������Ķ��Ժ�������Ҫ����assert.h�е�ASSERT�궨��
//   10  *
//   11  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   12  * http://www.lpld.cn
//   13  * mail:support@lpld.cn
//   14  *
//   15  * @par
//   16  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   17  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   18  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   19  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   20  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   21  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   22  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   23  */
//   24 
//   25 #include "common.h"
//   26 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   27 const int8 ASSERT_FAILED_STR[] = "����ʧ�ܷ����� %s ����ĵ� %d �У����������\n";
ASSERT_FAILED_STR:
        DATA
        DC8 "\266\317\321\324\312\247\260\334\267\242\311\372\323\332 %s \264\372\302\353\265\304\265\332 %d \320\320\243\254\307\353\274\354\262\351\262\316\312\375\241\243\012"
//   28 
//   29 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   30 void assert_failed(int8 *file, int32 line)
//   31 {
//   32   printf(ASSERT_FAILED_STR, file, line);
assert_failed:
        MOVS     R2,R1
        MOVS     R1,R0
        LDR.N    R0,??assert_failed_0
        BL       printf
//   33 
//   34   while (1)
??assert_failed_1:
        B.N      ??assert_failed_1
        DATA
??assert_failed_0:
        DC32     ASSERT_FAILED_STR
//   35   {}
//   36 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   37 /********************************************************************/
// 
// 48 bytes in section .rodata
// 16 bytes in section .text
// 
// 16 bytes of CODE  memory
// 48 bytes of CONST memory
//
//Errors: none
//Warnings: none
