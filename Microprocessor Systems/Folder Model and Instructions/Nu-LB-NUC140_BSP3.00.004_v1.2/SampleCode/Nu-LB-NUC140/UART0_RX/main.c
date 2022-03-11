//
// UART0_RX : UART0 RX recieve and display Text
//
// Board       : Nu-LB-NUC140
// MCU         : NUC140VE3CN (LQFP100)
// UART0       : baudrate=115200, databit=8, stopbit=1, paritybit=0, flowcontrol=None

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include "NUC100Series.h"
#include "MCU_init.h"
#include "SYS_init.h"
#include "LCD.h"
#include "Seven_Segment.h"
#include "Scankey.h"
// Global Variables
char     cmd[32] = " ";
uint8_t  comRbuf[256] = " ";
char mkdirFolder[32] = " ";
char cdFolder[32] = " ";
char playFolder[32] = " ";
char showNum[32] = " ";
char buzzNum[32] = " ";
volatile uint8_t comRbytes = 0;
volatile uint8_t RX_Flag = 0;
void show(uint16_t x)
{

	int led4,led5,led6,led7;
	led4 = x%10;
	led5 = (x/10)%10;
	led6 = (x/100)%10;
	led7 = x/1000;
	PC4 = 1;
	PC5 = 0;
	switch(led4){
		
		case 0:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 0;
			PE7 = 1;
			//CLK_SysTickDelay(1000000);
		break;
		case 1:
			PE0 = 0;
			PE1 = 1;
			PE2 = 1;
			PE3 = 1;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 1;
			//CLK_SysTickDelay(1000000);
		break;
		case 2:
			PE0 = 1;
			PE1 = 1;
			PE2 = 1;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 0;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 3:
			PE0 = 0;
			PE1 = 1;
			PE2 = 1;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 4:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 1;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 5:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 1;
			PE5 = 0;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 6:
		  PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 1;
			PE4 = 1;
			PE5 = 0;
			PE6 = 0;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 7:
			PE0 = 0;
			PE1 = 1;
			PE2 = 1;
			PE3 = 0;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 1;
			//CLK_SysTickDelay(1000000);
		break;
		case 8:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 0;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 9:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 0;
		//	CLK_SysTickDelay(1000000);
		break;
	}
	CLK_SysTickDelay(5000);
	PC4 = 0;
	PC5 = 1;
	switch(led5){
		
		case 0:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 0;
			PE7 = 1;
			//CLK_SysTickDelay(1000000);
		break;
		case 1:
			PE0 = 0;
			PE1 = 1;
			PE2 = 1;
			PE3 = 1;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 1;
			//CLK_SysTickDelay(1000000);
		break;
		case 2:
			PE0 = 1;
			PE1 = 1;
			PE2 = 1;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 0;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 3:
			PE0 = 0;
			PE1 = 1;
			PE2 = 1;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 4:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 1;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 5:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 1;
			PE5 = 0;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 6:
		  PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 1;
			PE4 = 1;
			PE5 = 0;
			PE6 = 0;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 7:
			PE0 = 0;
			PE1 = 1;
			PE2 = 1;
			PE3 = 0;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 1;
			//CLK_SysTickDelay(1000000);
		break;
		case 8:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 0;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 9:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
	}
	CLK_SysTickDelay(5000);

	PC5 = 0;
	PC6 = 1;
	
	switch(led6){
		
		case 0:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 0;
			PE7 = 1;
			//CLK_SysTickDelay(1000000);
		break;
		case 1:
			PE0 = 0;
			PE1 = 1;
			PE2 = 1;
			PE3 = 1;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 1;
			//CLK_SysTickDelay(1000000);
		break;
		case 2:
			PE0 = 1;
			PE1 = 1;
			PE2 = 1;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 0;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 3:
			PE0 = 0;
			PE1 = 1;
			PE2 = 1;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 4:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 1;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 5:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 1;
			PE5 = 0;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 6:
		  PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 1;
			PE4 = 1;
			PE5 = 0;
			PE6 = 0;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 7:
			PE0 = 0;
			PE1 = 1;
			PE2 = 1;
			PE3 = 0;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 1;
			//CLK_SysTickDelay(1000000);
		break;
		case 8:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 0;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 9:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
	}
	CLK_SysTickDelay(5000);
	PC6 = 0;
	PC7 = 1;
	switch(led7){
		
		case 0:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 0;
			PE7 = 1;
			//CLK_SysTickDelay(1000000);
		break;
		case 1:
			PE0 = 0;
			PE1 = 1;
			PE2 = 1;
			PE3 = 1;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 1;
			//CLK_SysTickDelay(1000000);
		break;
		case 2:
			PE0 = 1;
			PE1 = 1;
			PE2 = 1;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 0;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 3:
			PE0 = 0;
			PE1 = 1;
			PE2 = 1;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 4:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 1;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 5:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 1;
			PE5 = 0;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 6:
		  PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 1;
			PE4 = 1;
			PE5 = 0;
			PE6 = 0;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 7:
			PE0 = 0;
			PE1 = 1;
			PE2 = 1;
			PE3 = 0;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 1;
			//CLK_SysTickDelay(1000000);
		break;
		case 8:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 0;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 9:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
	}

	CLK_SysTickDelay(5000);
	PC6 = 0;
	PC7 = 0;
}

void UART02_IRQHandler(void)
{
	uint8_t c, i;
	uint32_t u32IntSts = UART0->ISR;
	
	if(u32IntSts & UART_IS_RX_READY(UART0)) // check ISR on & RX is ready
  {
		while (!(UART0->FSR & UART_FSR_RX_EMPTY_Msk))
		{ // check RX is not empty
			c = UART_READ(UART0); // read UART RX data
			if (c!='z')
			{        // check line-end 
				comRbuf[comRbytes] = c;
				comRbytes++;
			}
			else
			{
				
				for (i=0; i<comRbytes; i++){
					cmd[i]=comRbuf[i]; // store received data to Message
				}
				for (i=comRbytes; i<32; i++){
					comRbuf[i] = ' '; // 把沒收到的位置設空
				}
				cmd[comRbytes] = '\0';
				comRbytes=0;
				RX_Flag=1;	                 // set flag when BT command input
				
				break;
			}
		}
	}
	
}

void Init_UART0(void)
{ 
  UART_Open(UART0, 9600);                     // set UART0 baud rate
  UART_ENABLE_INT(UART0, UART_IER_RDA_IEN_Msk); // enable UART0 interrupt (triggerred by Read-Data-Available)
  NVIC_EnableIRQ(UART02_IRQn);		              // enable Cortex-M0 NVIC interrupt for UART02
}

/*void TMR1_IRQHandler(void)
 {		 
	 while(1){
		 
		 show(atoi(showNum));
	   CLK_SysTickDelay(1000);
	 }
	 
	 
	 TIMER_ClearIntFlag(TIMER1); // Clear Timer1 time-out interrupt flag
 }


void Init_Timer1(void)
{
  TIMER_Open(TIMER1, TMR1_OPERATING_MODE, TMR1_OPERATING_FREQ);
  TIMER_EnableInt(TIMER1);
  NVIC_EnableIRQ(TMR1_IRQn);
  TIMER_Start(TIMER1);
}
*/
void lab2(void);
void oxgame(void);
void oxgameV2(void);
void countDownTimer(void);
/*---蜂鳴器---*/
void Buzz()
{  
  PB11 =0; // turn on Buzzer
  CLK_SysTickDelay(40000);  // Delay 
  PB11 =1; // turn off Buzzer	
  CLK_SysTickDelay(40000);  // Delay
}
void countDownTimer_Buzz(void)
{
    PB11 =0; // turn on Buzzer
    CLK_SysTickDelay(500000);  // Delay 
    PB11 =1; // turn off Buzzer	
    CLK_SysTickDelay(500000);  // Delay
}
/*---清空cmd---*/
void Null_Cmd(void)
{
	int i=0;
  for( i=0; i<32; i++){
		
		cmd[i]=' ';
	}
}

/*---清空mkdirFolder---*/
void Null_mkdirFolder(void)
{
	int i;
  for( i=0; i<32; ){
		
		mkdirFolder[i]=' ';
		i++;
	}
}
/*---清空cdFolder---*/
void Null_cdFolder(void)
{
	int i;
  for( i=0; i<32; ){
		
		cdFolder[i]=' ';
		i++;
	}
}
/*---清空playFolder---*/
void Null_playFolder(void)
{
	int i;
  for( i=0; i<32; ){
		
		playFolder[i]=' ';
		i++;
	}
}
/*---oxgame---*/
int ocal[9]={0};
int xcal[9]={0};
unsigned char bmp16[] = {
	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF
};

unsigned char o16[]={
	 	0x00,0xE0,0x10,0x08,0x04,0x02,0x02,0x02,0x02,0x02,0x02,0x04,0x08,0x30,0xC0,0x00,
	 	0x00,0x07,0x08,0x10,0x20,0x20,0x40,0x40,0x40,0x40,0x20,0x20,0x10,0x0C,0x03,0x00
};
unsigned char x16[]={
	 	0x00,0x02,0x04,0x08,0x10,0x20,0x40,0x80,0x80,0x40,0x20,0x10,0x08,0x04,0x02,0x00,
	 	0x00,0x40,0x20,0x10,0x08,0x04,0x02,0x01,0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x00

};
void win(int8_t who){
	
	int8_t key,qq;
	
	if(who == 0){
	  print_Line(3, "O wins!!!");
	}
	else if(who == 1){
		print_Line(3, "X wins!!!");
	}
	
	PB11 = 0;
	CLK_SysTickDelay(100000);
	while(1){
			key = ScanKey();
		  qq=key;
			if(qq!=0){
				PB11 = 1;
				break;
			}
		}
	CLK_SysTickDelay(100000);
}
/*---oxgame---*/
/*---count down timer---*/
void cal(int v){
	
	switch(v){
		
		case 0:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 0;
			PE7 = 1;
			//CLK_SysTickDelay(1000000);
		break;
		case 1:
			PE0 = 0;
			PE1 = 1;
			PE2 = 1;
			PE3 = 1;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 1;
			//CLK_SysTickDelay(1000000);
		break;
		case 2:
			PE0 = 1;
			PE1 = 1;
			PE2 = 1;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 0;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 3:
			PE0 = 0;
			PE1 = 1;
			PE2 = 1;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 4:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 1;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 5:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 1;
			PE5 = 0;
			PE6 = 1;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 6:
		  PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 1;
			PE4 = 1;
			PE5 = 0;
			PE6 = 0;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 7:
			PE0 = 0;
			PE1 = 1;
			PE2 = 1;
			PE3 = 0;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 1;
			//CLK_SysTickDelay(1000000);
		break;
		case 8:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 0;
			PE5 = 0;
			PE6 = 0;
			PE7 = 0;
			//CLK_SysTickDelay(1000000);
		break;
		case 9:
			PE0 = 0;
			PE1 = 1;
			PE2 = 0;
			PE3 = 0;
			PE4 = 0;
			PE5 = 1;
			PE6 = 1;
			PE7 = 0;
		//	CLK_SysTickDelay(1000000);
		break;
		
	}
	
}
void countDownTimer_Show(uint16_t x)
{
  int led4,led5,led6,led7;
	led4 = x%10;
	led5 = (x/10);
	  PC4=1;
    PC5=0;
		cal(led4);
		CLK_SysTickDelay(5000);
	PC4 = 0;
	PC5 = 1;
		cal(led5);
		CLK_SysTickDelay(5000);
	PC4 = 0;
	PC5 = 0;
	  
}
/*---count down timer---*/

/*---字元陣列比較---*/
/*int chCompare(char a[], char b[])
{
	int i =0;
	int output = 2;
	
  for(i=0;i<32;i++){
		if(a[i] == b[i])
			output = 1;
		else
			return 0;
	}		
	return output;
}*/
/*void NullComRbuf(void)
{
	int i=0;
  for( i=0; i<256; i++){
		
		comRbuf[i]=' ';
	}
}*/
typedef struct Folder{
	
	char name[32];
	struct Folder *subFolder[32];
	int subNum;
	struct Folder *previousFolder;
	
  }Folder;
Folder *root;
Folder *nowFolder;
Folder *user1;
int main()
{
	int index;
	int mkdir_cmd_index;
	int cd_cmd_index;
	int show_cmd_index;
	int buzz_cmd_index;
	int play_cmd_index;
	int keyin;
	int nowFolder_index = 0;
	int display_index = 0;
//	int show_cmd_index;
	SYS_Init();   // initialize MCU
  init_LCD();   // initialize LCD
  clear_LCD();  // clear LCD screen	
	OpenSevenSegment();
	OpenKeyPad();
	
	GPIO_SetMode(PB, BIT11, GPIO_MODE_OUTPUT);
	GPIO_SetMode(PC, BIT13, GPIO_MODE_OUTPUT); 

  root = malloc(sizeof(Folder));
	strcpy(root->name,"root");
	root->subNum = 0; 
	
	//new folder = user1
	root->subFolder[root->subNum] = malloc(sizeof(Folder));
	strcpy(root->subFolder[root->subNum]->name, "user1");
	root->subFolder[root->subNum]->subNum = 0;
	root->subNum += 1;
	
	user1 = root->subFolder[0];
	//new program in user1  ps: user1 = root->subFolder[0]
	user1->subFolder[user1->subNum] = malloc(sizeof(Folder));
	strcpy(user1->subFolder[user1->subNum]->name, "lab2.exe");
	user1->subFolder[user1->subNum]->subNum = 0;
	user1->subNum += 1;
	
	user1->subFolder[user1->subNum] = malloc(sizeof(Folder));
	strcpy(user1->subFolder[user1->subNum]->name, "oxgame.exe");
	user1->subFolder[user1->subNum]->subNum = 0;
	user1->subNum += 1;
	
	user1->subFolder[user1->subNum] = malloc(sizeof(Folder));
	strcpy(user1->subFolder[user1->subNum]->name, "countDown.exe");
	user1->subFolder[user1->subNum]->subNum = 0;
	user1->subNum += 1;
	
	user1->subFolder[user1->subNum] = malloc(sizeof(Folder));
	strcpy(user1->subFolder[user1->subNum]->name, "oxgameV2.exe");
	user1->subFolder[user1->subNum]->subNum = 0;
	user1->subNum += 1;
	
	nowFolder = root;
	
	
	Init_UART0(); // initialize UART1 for Bluetooth
	//Init_Timer1();
	PD14 = 0;
  
  while(1)
	{
			
		//顯示資料夾
		for(index = 0; index < nowFolder->subNum; )
		{
			print_Line(index, nowFolder->subFolder[display_index]->name);
			index++;
			display_index++;
			if(index >= 4)
				break;
		}
		CLK_SysTickDelay(100000);
		
    if (RX_Flag==1)
    {
			/*---cmd exe---*/
	  	if(cmd[0] == 'c'
	  		&&cmd[1] == 'd'
		    &&cmd[2] == ' '){
					
		  		index = 0;
		  		cd_cmd_index = 3;
		  		while(cmd[cd_cmd_index] != ' ')
		  		{
		  			cdFolder[index] = cmd[cd_cmd_index];
			  		index++;
			  		cd_cmd_index++;
		  		}	
			  	for(index = 0; index < nowFolder->subNum; )
			  	{
				  	if(!(strcmp(cdFolder , nowFolder->subFolder[index]->name))) //比較 name 是否一樣
				  	{
							nowFolder->subFolder[index]->previousFolder = nowFolder; //把現在的資料夾存到下一個資料夾的previousFolder
				  		nowFolder = nowFolder->subFolder[index]; //進入下一個資料夾
							break;
				  	}
				  	index++;
			  	}
					Null_cdFolder();
					nowFolder_index = 0;
		  	  CLK_SysTickDelay(100000);
		  }
			
	  	if(cmd[0] == 'c'
	  		&&cmd[1] == 'd'
	  	  &&cmd[2] == ' '
	  	  &&cmd[3] == '.'
	  	  &&cmd[4] == '.'){
					
				  nowFolder = nowFolder->previousFolder;
				  nowFolder_index = 0;
		  	  CLK_SysTickDelay(100000);
	  	}
		
	  	if(cmd[0] == 'm'
	  		&&cmd[1] == 'k'
	  	  &&cmd[2] == 'd'
		    &&cmd[3] == 'i'
		    &&cmd[4] == 'r'
		    &&cmd[5] == ' '){
					
			    index = 0;
		  	  mkdir_cmd_index = 6;
				  //把要新增的資料夾名稱給mkdirFolder 字元陣列
			    while(cmd[mkdir_cmd_index] != ' ')
				  {
				  	 mkdirFolder[index] = cmd[mkdir_cmd_index];
				     index++;
				     mkdir_cmd_index++;
			    }
			  	nowFolder->subFolder[nowFolder->subNum] = malloc(sizeof(Folder));
				  strcpy(nowFolder->subFolder[nowFolder->subNum]->name,mkdirFolder); //命名新資料夾名稱
	        nowFolder->subFolder[nowFolder->subNum]->subNum = 0;
				  nowFolder->subNum +=1;
				
			  	Null_mkdirFolder();
			    CLK_SysTickDelay(100000);
		  }
		  if(cmd[0] == 'p'
			  &&cmd[1] == 'l'
		    &&cmd[2] == 'a'
		    &&cmd[3] == 'y'
		    &&cmd[4] == ' '){
				
					index = 0;
				  play_cmd_index = 5;
				  while(cmd[play_cmd_index] != ' ')
				  {
					   playFolder[index] = cmd[play_cmd_index];
				     index++;
				     play_cmd_index++;
			    }
					if(!strcmp("lab2.exe", playFolder))
					{
						lab2();
					}
					else if(!strcmp("oxgame.exe", playFolder))
					{
						oxgame();
					}
					else if(!strcmp("oxgameV2.exe", playFolder))
					{
						oxgameV2();
					}
					else if(!strcmp("countDown.exe", playFolder))
					{
						countDownTimer();
					}
					Null_playFolder();
				  CLK_SysTickDelay(100000);
		  }
			/*if(cmd[0] == 's'
			  &&cmd[1] == 'h'
		    &&cmd[2] == 'o'
		    &&cmd[3] == 'w'
		    &&cmd[4] == ' ')
	  	{
				  index = 0;
				  show_cmd_index = 5;
				  while(cmd[show_cmd_index] != ' ')
				  {
					   showNum[index] = cmd[show_cmd_index];
				     index++;
				     show_cmd_index++;
			    }
				  Init_Timer1();
		  }*/
			if(cmd[0] == 'c'
			  &&cmd[1] == 'l'
		    &&cmd[2] == 'e'
		    &&cmd[3] == 'a'
		    &&cmd[4] == 'n'){
					
					PC4 = 0;
					PC5 = 0;
					PC6 = 0;
					PC7 = 0;
			}
			if(cmd[0] == 'b'
				  &&cmd[1] == ' '){
					
					index = 0;
				  buzz_cmd_index = 2;
				  while(cmd[buzz_cmd_index] != ' ')
				  {
				  	 buzzNum[index] = cmd[buzz_cmd_index];
				     index++;
				     buzz_cmd_index++;
			    }
					//Buzz(atoi(buzzNum));
					PC14 = 0;
					CLK_SysTickDelay(100000);
			}
		  /*---cmd exe---*/
	  		
		  	Null_Cmd();
			  init_LCD();
			  clear_LCD();
		    
	  		RX_Flag=0;
  			CLK_SysTickDelay(1000000);
    }
		/*---if(RX_Flag == 1) END---*/
		index = 0;
		keyin = ScanKey();
		//CLK_SysTickDelay(100000);
		if(keyin == 2){
			nowFolder_index -=1;
			init_LCD();
			clear_LCD();
		}
		else if(keyin == 8){
			nowFolder_index +=1;
			init_LCD();
			clear_LCD();
		}
		display_index = nowFolder_index;
	}
  /*while(1) end*/
	free(root);
}
void lab2(void)
{
		uint8_t i = 0;
		uint8_t j = 5;
	  int k = 0;

		SYS_Init();
		OpenSevenSegment();
	  init_LCD();
	  clear_LCD();
	  PD14 =1;
		/*CloseSevenSegment();
		ShowSevenSegment(i,j);
		CLK_SysTickDelay(1000000);
		ShowSevenSegment(3,6);
		CLK_SysTickDelay(1000000);
		CloseSevenSegment();*/
	
	 //1
	  while(1)
		{
			  for(k=0;k<10;k++)
		    {
			    ShowSevenSegment(0,k);
			    //CLK_SysTickDelay(1000000);
					switch(k)
					{
						case 0:
							PC12=1;
							PC13=1;
							PC14=1;
							PC15=1;
						  CLK_SysTickDelay(1000000);
						break;
						case 1:
							PC12=1;
							PC13=1;
							PC14=1;
							PC15=0;
						  CLK_SysTickDelay(1000000);
						break;
						case 2:
							PC12=1;
							PC13=1;
							PC14=0;
							PC15=1;
						  CLK_SysTickDelay(1000000);
						break;
						case 3:
							PC12=1;
							PC13=1;
							PC14=0;
							PC15=0;
						  CLK_SysTickDelay(1000000);
						break;
						case 4:
							PC12=1;
							PC13=0;
							PC14=1;
							PC15=1;
						  CLK_SysTickDelay(1000000);
						break;
						case 5:
							PC12=1;
							PC13=0;
							PC14=1;
							PC15=0;
						  CLK_SysTickDelay(1000000);
						break;
						case 6:
							PC12=1;
							PC13=0;
							PC14=0;
							PC15=1;
						  CLK_SysTickDelay(1000000);
						break;
						case 7:
							PC12=1;
							PC13=0;
							PC14=0;
							PC15=0;
						  CLK_SysTickDelay(1000000);
						break;
						case 8:
							PC12=0;
							PC13=1;
							PC14=1;
							PC15=1;
						  CLK_SysTickDelay(1000000);
						break;
						case 9:
							PC12=0;
							PC13=1;
							PC14=1;
							PC15=0;
						  CLK_SysTickDelay(1000000);
						break;
					}
		    }
		    CloseSevenSegment();
				if(cmd[0] == 'e'
	  		&&cmd[1] == 'n'
		    &&cmd[2] == 'd'){
					
					PD14 = 0;
					PC12 = 1;
					PC13 = 1;
					PC14 = 1;
					PC15 = 1;
					Null_Cmd();
					break;
				}
		}	
			
	  //2
		/*while(1)
			{
			  for(k=0;k<10000;k++)
		    {
				
			    ShowSevenSegment(0,k%10);
			    CLK_SysTickDelay(5500);
					CloseSevenSegment();
					ShowSevenSegment(1,(k/10)%10);
			    CLK_SysTickDelay(5500);
					CloseSevenSegment();
					ShowSevenSegment(2,(k/100)%10);
			    CLK_SysTickDelay(5500);
					CloseSevenSegment();
					ShowSevenSegment(3,(k/1000)%10);
			    CLK_SysTickDelay(5500);
					CloseSevenSegment();
				}
			}*/
}
void oxgame(void)
{
	int8_t x = 0, y = 0;
	int8_t ow = 4, xw = 2;
	int8_t keyin = 0;
	int8_t s=1,j=0;
	

	SYS_Init();	  
	init_LCD();
	clear_LCD();	
	OpenKeyPad();	
	PD14 = 0;
	
	while(1){
		if(cmd[0] == 'e'
	  		&&cmd[1] == 'n'
		    &&cmd[2] == 'd'){
					
					for(j=0;j<9;j++){
				  ocal[j] = 0;
					xcal[j] = 0;
			    }
					s = 0;
					Null_Cmd();
					break;
		  }
		while(1){
			if(cmd[0] == 'e'
	  		&&cmd[1] == 'n'
		    &&cmd[2] == 'd'){
					
					break;
		  }
			keyin = ScanKey();
			if(keyin!=0)
				break;
		}
		
		CLK_SysTickDelay(150000);
		
		switch(keyin){
		case 1:
			if(s%2==1){
			  draw_Bmp16x16(0,0,FG_COLOR,BG_COLOR,o16);
				ocal[0]=1;
				Buzz();
			}
			else {
				draw_Bmp16x16(0,0,FG_COLOR,BG_COLOR,x16);
				xcal[0]=1;
				Buzz();
			}
			
		break;
		case 2:
			if(s%2==1){
			  draw_Bmp16x16(16,0,FG_COLOR,BG_COLOR,o16);
				ocal[1]=1;
				Buzz();
			}
			else {
				draw_Bmp16x16(16,0,FG_COLOR,BG_COLOR,x16);
				xcal[1]=1;
				Buzz();
			}
			
		break;
		case 3:
			if(s%2==1){
			  draw_Bmp16x16(32,0,FG_COLOR,BG_COLOR,o16);
			  ocal[2]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(32,0,FG_COLOR,BG_COLOR,x16);
				xcal[2]=1;
				Buzz();
			}
			
		break;
		case 4:
			if(s%2==1){
			  draw_Bmp16x16(0,16,FG_COLOR,BG_COLOR,o16);
			  ocal[3]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(0,16,FG_COLOR,BG_COLOR,x16);
			  xcal[3]=1;
				Buzz();
			}
		break;
		case 5:
			if(s%2==1){
			  draw_Bmp16x16(16,16,FG_COLOR,BG_COLOR,o16);
			  ocal[4]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(16,16,FG_COLOR,BG_COLOR,x16);
				xcal[4]=1;
				Buzz();
			}
			
		break;
		case 6:
			if(s%2==1){
			  draw_Bmp16x16(32,16,FG_COLOR,BG_COLOR,o16);
				ocal[5]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(32,16,FG_COLOR,BG_COLOR,x16);
				xcal[5]=1;
				Buzz();
			}
			
		break;
		case 7:
			if(s%2==1){
			  draw_Bmp16x16(0,32,FG_COLOR,BG_COLOR,o16);
			  ocal[6]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(0,32,FG_COLOR,BG_COLOR,x16);
			  xcal[6]=1;
				Buzz();
			}
		break;
		case 8:
			if(s%2==1){
			  draw_Bmp16x16(16,32,FG_COLOR,BG_COLOR,o16);
				ocal[7]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(16,32,FG_COLOR,BG_COLOR,x16);
				xcal[7]=1;
				Buzz();
			}
			
		break;
		case 9:
			if(s%2==1){
			  draw_Bmp16x16(32,32,FG_COLOR,BG_COLOR,o16);
				ocal[8]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(32,32,FG_COLOR,BG_COLOR,x16);
				xcal[8]=1;
				Buzz();
			}
		break;
	  }
		
		if((ocal[0]&&ocal[1]&&ocal[2]==1)
			||(ocal[3]&&ocal[4]&&ocal[5]==1)
		  ||(ocal[6]&&ocal[7]&&ocal[8]==1)
			||(ocal[0]&&ocal[3]&&ocal[6]==1)
			||(ocal[1]&&ocal[4]&&ocal[7]==1)
			||(ocal[2]&&ocal[5]&&ocal[8]==1)
			||(ocal[0]&&ocal[4]&&ocal[8]==1)
			||(ocal[2]&&ocal[4]&&ocal[6]==1)){
			win(0);
				for(j=0;j<9;j++){
				  ocal[j] = 0;
					xcal[j] = 0;
			}
				
			clear_LCD();
			s=0;
			
				CLK_SysTickDelay(150000);
		}
			
		if((xcal[0]&&xcal[1]&&xcal[2]==1)
			||(xcal[3]&&xcal[4]&&xcal[5]==1)
		  ||(xcal[6]&&xcal[7]&&xcal[8]==1)
			||(xcal[0]&&xcal[3]&&xcal[6]==1)
			||(xcal[1]&&xcal[4]&&xcal[7]==1)
			||(xcal[2]&&xcal[5]&&xcal[8]==1)
			||(xcal[0]&&xcal[4]&&xcal[8]==1)
			||(xcal[2]&&xcal[4]&&xcal[6]==1)){
			win(1);
				
		    
			clear_LCD();
			s=0;
			for(j=0;j<9;j++){
				xcal[j] = 0;
				ocal[j] = 0;
			}
		}
		if(s==9){
			
	    CLK_SysTickDelay(550000);
			clear_LCD();
			s=0;
			for(j=0;j<9;j++){
				ocal[j] = 0;
				xcal[j] = 0;
			}
				
		}
		
		s++;
		CLK_SysTickDelay(150000);
	}
}
void oxgameV2(void)
{
	int8_t x = 0, y = 0;
	int8_t ow = 4, xw = 2;
	int8_t keyin = 0;
	int8_t s=1,j=0;
	PB0=1;
	PB1=1;
	PB2=1;
	PB3=1;
	PB4=1;
	PB5=1;
	PB6=1;
	PB7=1;
	PB8=1;

	GPIO_SetMode(PB, BIT0, GPIO_MODE_QUASI);
  GPIO_SetMode(PB, BIT1, GPIO_MODE_QUASI);
	GPIO_SetMode(PB, BIT2, GPIO_MODE_QUASI);
  GPIO_SetMode(PB, BIT3, GPIO_MODE_QUASI);
	GPIO_SetMode(PB, BIT4, GPIO_MODE_QUASI);
  GPIO_SetMode(PB, BIT5, GPIO_MODE_QUASI);
	GPIO_SetMode(PB, BIT6, GPIO_MODE_QUASI);
	GPIO_SetMode(PB, BIT7, GPIO_MODE_QUASI);
	GPIO_SetMode(PB, BIT8, GPIO_MODE_QUASI);
	
	SYS_Init();	  
	init_LCD();
	clear_LCD();	
	OpenKeyPad();	
	PD14 = 0;
	
	while(1){
		if(cmd[0] == 'e'
	  		&&cmd[1] == 'n'
		    &&cmd[2] == 'd'){
					
					for(j=0;j<9;j++){
				  ocal[j] = 0;
					xcal[j] = 0;
			    }
					s = 0;
					Null_Cmd();
					break;
		  }
		while(1){
			
			if(cmd[0] == 'e'
	  		&&cmd[1] == 'n'
		    &&cmd[2] == 'd')
			{
					break;
		  }
			keyin = ScanKey();
			/*-----?????-----*/
		  if(keyin == 1){
		  	PB0 = 0;
		  }
		  else if(keyin == 2){
		  	PB1 = 0;
	  	}
		  else if(keyin == 3){
		  	PB2 = 0;
		  }
		  else if(keyin == 4){
		  	PB3 = 0;
		  }
		  else if(keyin == 5){
		  	PB4 = 0;
		  }
		  else if(keyin == 6){
		  	PB5 = 0;
		  }
		  else if(keyin == 7){
		  	PB6 = 0;
	  	}
		  else if(keyin == 8){
		  	PB7 = 0;
		  }
	  	else if(keyin == 9){
	   	  PB8 = 0;
	  	}
		
		  CLK_SysTickDelay(100000);
		  /*------???------*/
	    if(PB0 == 0){
	    	keyin=1;
	    }
	    else if(PB1 == 0){
	    	keyin=2;
	    }
	    else if(PB2 == 0){
	    	keyin=3;
    	}
	    else if(PB3 == 0){
	    	keyin=4;
	    }
	    else if(PB4 == 0){
	    	keyin=5;
	    }
	    else if(PB5 == 0){
	    	keyin=6;
	    }
	    else if(PB6 == 0){
	    	keyin=7;
	    }
	    else if(PB7 == 0){
	    	keyin=8;
	    }
	    else if(PB8 == 0){
	    	keyin=9;
	    }
			
			if(keyin!=0) {
				break; 
			}
		}
		CLK_SysTickDelay(100000);
		
		/*key_connect();
		connect();*/
		
		
		/*-----???-----*/
		switch(keyin){
		case 1:
			if(ocal[0] == 1 || xcal[0] == 1){
				s--;
				break;
			}
			if(s%2==1){
			  draw_Bmp16x16(0,0,FG_COLOR,BG_COLOR,o16);
				ocal[0]=1;
				Buzz();
			}
			else {
				draw_Bmp16x16(0,0,FG_COLOR,BG_COLOR,x16);
				xcal[0]=1;
				Buzz();
			}
			
		break;
		case 2:
			if(ocal[1] == 1 || xcal[1] == 1){
				s--;
				break;
			}
			if(s%2==1){
			  draw_Bmp16x16(16,0,FG_COLOR,BG_COLOR,o16);
				ocal[1]=1;
				Buzz();
			}
			else {
				draw_Bmp16x16(16,0,FG_COLOR,BG_COLOR,x16);
				xcal[1]=1;
				Buzz();
			}
			
		break;
		case 3:
			if(ocal[2] == 1 || xcal[2] == 1){
				s--;
				break;
			}
			if(s%2==1){
			  draw_Bmp16x16(32,0,FG_COLOR,BG_COLOR,o16);
			  ocal[2]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(32,0,FG_COLOR,BG_COLOR,x16);
				xcal[2]=1;
				Buzz();
			}
			
		break;
		case 4:
			if(ocal[3] == 1 || xcal[3] == 1){
				s--;
				break;
			}
			if(s%2==1){
			  draw_Bmp16x16(0,16,FG_COLOR,BG_COLOR,o16);
			  ocal[3]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(0,16,FG_COLOR,BG_COLOR,x16);
			  xcal[3]=1;
				Buzz();
			}
		break;
		case 5:
			if(ocal[4] == 1 || xcal[4] == 1){
				s--;
				break;
			}
			if(s%2==1){
			  draw_Bmp16x16(16,16,FG_COLOR,BG_COLOR,o16);
			  ocal[4]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(16,16,FG_COLOR,BG_COLOR,x16);
				xcal[4]=1;
				Buzz();
			}
			
		break;
		case 6:
			if(ocal[5] == 1 || xcal[5] == 1){
				s--;
				break;
			}
			if(s%2==1){
			  draw_Bmp16x16(32,16,FG_COLOR,BG_COLOR,o16);
				ocal[5]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(32,16,FG_COLOR,BG_COLOR,x16);
				xcal[5]=1;
				Buzz();
			}
			
		break;
		case 7:
			if(ocal[6] == 1 || xcal[6] == 1){
				s--;
				break;
			}
			if(s%2==1){
			  draw_Bmp16x16(0,32,FG_COLOR,BG_COLOR,o16);
			  ocal[6]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(0,32,FG_COLOR,BG_COLOR,x16);
			  xcal[6]=1;
				Buzz();
			}
		break;
		case 8:
			if(ocal[7] == 1 || xcal[7] == 1){
				s--;
				break;
			}
			if(s%2==1){
			  draw_Bmp16x16(16,32,FG_COLOR,BG_COLOR,o16);
				ocal[7]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(16,32,FG_COLOR,BG_COLOR,x16);
				xcal[7]=1;
				Buzz();
			}
			
		break;
		case 9:
			if(ocal[8] == 1 || xcal[8] == 1){
				s--;
				break;
			}
			if(s%2==1){
			  draw_Bmp16x16(32,32,FG_COLOR,BG_COLOR,o16);
				ocal[8]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(32,32,FG_COLOR,BG_COLOR,x16);
				xcal[8]=1;
				Buzz();
			}
		break;
	  }
		
		/*-------???-------*/
		if((ocal[0]&&ocal[1]&&ocal[2]==1)
			||(ocal[3]&&ocal[4]&&ocal[5]==1)
		  ||(ocal[6]&&ocal[7]&&ocal[8]==1)
			||(ocal[0]&&ocal[3]&&ocal[6]==1)
			||(ocal[1]&&ocal[4]&&ocal[7]==1)
			||(ocal[2]&&ocal[5]&&ocal[8]==1)
			||(ocal[0]&&ocal[4]&&ocal[8]==1)
			||(ocal[2]&&ocal[4]&&ocal[6]==1)){
			win(0);
				for(j=0;j<9;j++){
				  ocal[j] = 0;
					xcal[j] = 0;
			}
				
			clear_LCD();
			s=0;
			
				CLK_SysTickDelay(150000);
		}
			
		if((xcal[0]&&xcal[1]&&xcal[2]==1)
			||(xcal[3]&&xcal[4]&&xcal[5]==1)
		  ||(xcal[6]&&xcal[7]&&xcal[8]==1)
			||(xcal[0]&&xcal[3]&&xcal[6]==1)
			||(xcal[1]&&xcal[4]&&xcal[7]==1)
			||(xcal[2]&&xcal[5]&&xcal[8]==1)
			||(xcal[0]&&xcal[4]&&xcal[8]==1)
			||(xcal[2]&&xcal[4]&&xcal[6]==1)){
			win(1);
				
		    
			clear_LCD();
			s=0;
			for(j=0;j<9;j++){
				xcal[j] = 0;
				ocal[j] = 0;
			}
			
		}
			/*-------??-------*/
		if(s==9){
			
	    CLK_SysTickDelay(50000);
			clear_LCD();
			s=0;
			for(j=0;j<9;j++){
				ocal[j] = 0;
				xcal[j] = 0;
			}
				
		}
		
		s++;
		
		PB0=1;
		PB1=1;
		PB2=1;
		PB3=1;
		PB4=1;
		PB5=1;
		PB6=1;
		PB7=1;
		PB8=1;
		CLK_SysTickDelay(150000);
	}

}

void countDownTimer(void)
{
		uint16_t i,j=3;
	  uint16_t num,k;
	
    SYS_Init();
	  init_LCD();
	  clear_LCD();
	  PD14 =1;
    OpenSevenSegment();
	  OpenKeyPad();
		GPIO_SetMode(PB, BIT11, GPIO_MODE_OUTPUT);
	
	while(1){
	    i=ScanKey();
		  if(i!=0)
			 break;
	    }

	
	num=i*10;
  
	CLK_SysTickDelay(1000000);
	while(1){
	i=ScanKey();
		if(i!=0)
			break;
	}
	num+=i;

		for(;num>=0;num--){
			for(k=0;num>=10&&k<50;k++)	countDownTimer_Show(num);
			
			if(num<10){
				PC4 = 1;
				cal(num);
				countDownTimer_Buzz();
				//PC4=0;
			}
			if(num==0){
				PB11=0;
				break;
			}
		}
		while(1){
			i=ScanKey();
			if(i!=0){
				PB11 = 1;
				CLK_SysTickDelay(100000);
				PC4 = 0;
				PD14 =0;
				break;
			}
		}
}
