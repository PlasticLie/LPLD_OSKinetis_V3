/**
 * --------------����"��������K60�ײ��V3"�Ĺ��̣�LPLD_CanComm��-----------------
 * @file LPLD_CanComm.c
 * @version 0.2
 * @date 2013-9-29
 * @brief ͨ��CANģ���������֡�շ���
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

/*******************************************************
* ˵����
* FlexCAN �������̣�ͨ�������̲���FlexCAN�Ĺ������
* ���������̶����˷���ģʽ�ͽ���ģʽ����
* ͨ���궨��FLEX_CAN_MODE �����ַ��ͻ��ǽ��չ���
* �����Ҫ���͹���ֻ�趨��#define FLEX_CAN_MODE REV_MODE
* �����Ҫ���չ���ֻ�趨��#define FLEX_CAN_MODE SEND_MODE
********************************************************/

#define SEND_MODE     (1)
#define REV_MODE      (0)
#ifndef FLEX_CAN_MODE
#define FLEX_CAN_MODE REV_MODE
#endif

/*
����������msg0��msg1������Ϣ
���������������Ļص�����
������ʾ��
*/
void can_msg0_isr(void);
void can_msg1_isr(void);
/*
�����̲��ð�������CAN���ͺ���
������ʾ��
*/
void key_isr(void);

GPIO_InitTypeDef key_init_t;

/*
������Ҫ����ṹ�����
�������õ���CAN��ʼ���ṹ��CAN_InitTypeDef
CAN��Ϣ��������ʼ���ṹ��CAN_MSGOBJ_InitTypeDef

CAN_InitTypeDef��Ҫ����ṹ�����flexcan_init_param_t

CAN_MSGOBJ_InitTypeDef�Ѿ���HW_CAN.c�н��ж��壬��
��extern���ü���

������ʾ��
*/
CAN_InitTypeDef flexcan_init_param_t;
extern CAN_MSGOBJ_InitTypeDef flexcan_msgobj_param_t[CAN_DATA_MAX_BYTES];

/*
Ȼ����ҪCAN֡�Ľṹ�壬���ڴ洢���ͺͽ��յ���Ϣ

������ʾ��
*/
#if  FLEX_CAN_MODE != REV_MODE 
uint8 send_buffer[8] = {0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08};//Ҫ���͵�����
CAN_MessageFormat_TypeDef can_tx_message; //���ڴ洢������Ϣ
#else
CAN_MessageFormat_TypeDef can_rx_message; //���ڴ洢������Ϣ
#endif
  
void main (void)
{

#if  FLEX_CAN_MODE != REV_MODE 
/*
�ڷ���ģʽ��
��ʼ�����ͽṹ��
������ʾ�����öԷ���ID��Ҫ���͵����ݡ����ݳ���
*/  
  can_tx_message.CAN_MsgID = 0x1AAAAAAA; //0x1AAAAAAA 29λ��չ֡;
  memcpy(can_tx_message.CAN_MsgDataBuffer,send_buffer,sizeof(send_buffer));
  can_tx_message.CAN_MsgDataLength = sizeof(send_buffer);
#endif   

/*
��ʼ��CAN_InitTypeDef�������趨CANģ��Ĺ���״̬
������ʾ������500KBPS�����ʣ�ͨ��ΪCAN0������ƥ��ģʽ����������ΪPTA12������ΪPTA13
*/    
  flexcan_init_param_t.CAN_BaudRate = CAN_BAUD_RATE_500KBPS;
  flexcan_init_param_t.CAN_Canx  = CAN1;
  flexcan_init_param_t.CAN_RxMaskMode = CAN_MSGOBJ_INDIVIDUAL_MASKING;
  flexcan_init_param_t.CAN_RxPin = PTC16;
  flexcan_init_param_t.CAN_TxPin = PTC17; 
  
  LPLD_CAN_Init(flexcan_init_param_t);
  LPLD_CAN_EnableIrq(flexcan_init_param_t);
#if  FLEX_CAN_MODE == REV_MODE
/*
�ڽ���ģʽ��
��ʼ�����սṹ��CAN_MSGOBJ_InitTypeDef
������ʾ��
�ڱ������в���˫����������ͬһID�ķ�ʽ���н���
�������Ա�֤�������ݸ����ȶ���
�ڱ�����������msg0��msg1��Ϊ���ջ���������msg0��msg1ID���ó���ͬID
һ��msg0��msg1���յ�IDƥ���֡�����뵽�жϻص�����
void can_msg0_isr(void);
void can_msg1_isr(void);
������յ�����
  ���յ����ݴ洢�� can_rx_message ��
CAN_MessageFormat_TypeDef can_rx_message; //���ڴ洢������Ϣ
��ʼ������������ʾ��
*/   
  flexcan_msgobj_param_t[MSG_NUM_0].CAN_Canx           = CAN1;//����õ�0ֻ��ȥ��ע��
  flexcan_msgobj_param_t[MSG_NUM_0].CAN_MsgNum         = MSG_NUM_0;//Msg0
  flexcan_msgobj_param_t[MSG_NUM_0].CAN_MsgDataLength  = CAN_DATA_MAX_BYTES;//8���ֽڳ���
  flexcan_msgobj_param_t[MSG_NUM_0].CAN_MsgDirection   = CAN_MSGOBJ_DIR_RX; //����ģʽ
  flexcan_msgobj_param_t[MSG_NUM_0].CAN_MsgIdLength    = CAN_MSGOBJ_ID_EXT; //29λ��չ֡
  flexcan_msgobj_param_t[MSG_NUM_0].CAN_MsgInterrupt   = TRUE;              //ʹ�ܸ�Msg0�ж�
  flexcan_msgobj_param_t[MSG_NUM_0].CAN_MsgSRR         = 0;                 //��ֹSRR
  flexcan_msgobj_param_t[MSG_NUM_0].CAN_MsgRTR         = 0;                 //��ֹRTR
  flexcan_msgobj_param_t[MSG_NUM_0].CAN_Isr            = can_msg0_isr;      //�����жϻص�����
  
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_Canx           = CAN1;//����õ�0ֻ��ȥ��ע��
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_MsgNum         = MSG_NUM_1;
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_MsgDataLength  = CAN_DATA_MAX_BYTES;
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_MsgDirection   = CAN_MSGOBJ_DIR_RX;
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_MsgIdLength    = CAN_MSGOBJ_ID_EXT;
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_MsgInterrupt   = TRUE;
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_MsgSRR         = 0;
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_MsgRTR         = 0;
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_Isr            = can_msg1_isr; 
  //˫������ģʽ��������
  LPLD_CAN_InitMessageObject(flexcan_msgobj_param_t[MSG_NUM_0],0x1AAAAAAA);//ID���ó���ͬ
  LPLD_CAN_InitMessageObject(flexcan_msgobj_param_t[MSG_NUM_1],0x1AAAAAAA);//ID���ó���ͬ
#else 
/*
�ڷ���ģʽ��
����MSG_NUM_1��Ϊ���ͻ���
����ɹ����ͽ������жϣ����������жϻص����������жϻص��������ٴη�����һ֡����
������û�����÷����жϻص�����
*/ 
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_Canx           = CAN1;//����õ�0ֻ��ȥ��ע��
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_MsgNum         = MSG_NUM_1;
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_MsgDataLength  = CAN_DATA_MAX_BYTES;
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_MsgDirection   = CAN_MSGOBJ_DIR_TX;//����ģʽ
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_MsgIdLength    = CAN_MSGOBJ_ID_EXT;//29λ��չ֡
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_MsgInterrupt   = TRUE;//ʹ�ܸ�Msg1�ж�
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_MsgSRR         = 0;
  flexcan_msgobj_param_t[MSG_NUM_1].CAN_MsgRTR         = 0;
  LPLD_CAN_InitMessageObject(flexcan_msgobj_param_t[MSG_NUM_1],0x5AA);
#endif 

//ʹ�ܰ�������
#if  FLEX_CAN_MODE != REV_MODE  
  key_init_t.GPIO_PTx        = PTB;
  key_init_t.GPIO_Pins       = GPIO_Pin7|GPIO_Pin6;
  key_init_t.GPIO_Dir        = DIR_INPUT;
  key_init_t.GPIO_PinControl = INPUT_PULL_UP|OUTPUT_SR_FAST|INPUT_PF_DIS|IRQC_FA;
  key_init_t.GPIO_Isr        = key_isr;
  
  LPLD_GPIO_Init(key_init_t);
  LPLD_GPIO_EnableIrq(key_init_t);
#endif
  
  while(1)
  {

  } 
}

#if  FLEX_CAN_MODE == REV_MODE 
/*
�ڽ���ģʽ��
����ɹ����պ󣬻�������µ��жϻص�������ִ��
�����ݴ洢��can_rx_message
�ڴ˲���˫������ģʽ�������ݣ������յ������ݴ浽can_rx_message��
*/ 
void can_msg0_isr(void)
{
  LPLD_CAN_ReceivedMessage(flexcan_msgobj_param_t[MSG_NUM_0],&can_rx_message);
}
void can_msg1_isr(void)
{
  LPLD_CAN_ReceivedMessage(flexcan_msgobj_param_t[MSG_NUM_1],&can_rx_message);
}
#endif

#if  FLEX_CAN_MODE != REV_MODE 
void key_isr()
{
  if(LPLD_GPIO_IsPinxExt(PORTB,GPIO_Pin6))
  {
    //���ð����������ͺ���
    LPLD_CAN_TransmitMessage(flexcan_msgobj_param_t[MSG_NUM_1],&can_tx_message);
  }
  if(LPLD_GPIO_IsPinxExt(PORTB,GPIO_Pin7))
  {
    asm("nop");
  }
}
#endif
/********************************************************************/
