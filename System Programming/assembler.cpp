#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <iostream>
#include <cstdlib>

//SIC Assembler
char* DecToHex(int dec);
int HexToDec(const char* hexPoint);
char* stringAdd(const char*, const char*);
char* addZero(const char*, int);
using namespace std;

int main(void)
{
	string optable[8] = {"LDA", "LDS", "ADDR", "STA", "RESW", "WORD", "FIRST", "END"};
	string opcode[8] = {  "14", "18" , "90"  , "23" , "52"  , "53"  , "06"   , "08" };
	string symtable[9][2] = {""};
	string Hexloc[9];
	string objcode[9];
	string h[3]={"Loc", "Source statement", "Object Code"}; //最上方標示欄位 
	string zero4 = "0000", zero5 = "00000";
	string RS_code = "4", RA_code = "0";
	string codeLength_noZero, codeLength; //程式的長度 
	int locStart,locEnd;
	//int a=4567;
	int i, sym = 0; // sym:symtable 的 index 
	
	string a;
	string Addcode[9][3] = {"ADD"	, "START"	, "1000"	
	                        ,"FIRST", "LDA"		, "FIVE"	    
							,""		, "LDS"		, "TWO"
							,""		, "ADDR"	, "S,A"	
							,""		, "STA"		, "DATA"
							,"FIVE"	, "WORD"	,"5" 
							,"TWO"	, "WORD"	,"2"
							,"DATA"	, "RESW"	,"1"
							,""		, "END"		,"FIRST"};
	
	//Hecloc位址
	for(i = 0; i<9; i++){
		
		if(Addcode[i][1] == "START")
		{
			Hexloc[i] = Addcode[i][2];
			locStart = i; //Hexloc開始的index 
			Hexloc[i+1] = Addcode[i][2];
		}
		  
		//計算Hexloc 
		if(Addcode[locStart][1] == "START")
		{
			if(Addcode[i][1] == "LDA"){
				
				Hexloc[i+1] = DecToHex(HexToDec(Hexloc[i].c_str())+3);
			}
			else if(Addcode[i][1] == "LDS"){
				
				Hexloc[i+1] = DecToHex(HexToDec(Hexloc[i].c_str())+3);
			}
			else if(Addcode[i][1] == "ADDR"){
				
				Hexloc[i+1] = DecToHex(HexToDec(Hexloc[i].c_str())+3);
			}
			else if(Addcode[i][1] == "STA"){
				
				Hexloc[i+1] = DecToHex(HexToDec(Hexloc[i].c_str())+3);
			}
			else if(Addcode[i][1] == "WORD"){
				
				Hexloc[i+1] = DecToHex(HexToDec(Hexloc[i].c_str())+3);
			}
			else if(Addcode[i][1] == "RESW"){
				
				Hexloc[i+1] = DecToHex(HexToDec(Hexloc[i].c_str()) + HexToDec(Addcode[i][2].c_str())*3);
			}
		}
		if(Addcode[i][1] == "END"){
			
			locEnd = i;
		}
	} 
	//建立 symtable
	for(i = 0; i < 9 ; i++){
		
		if(Addcode[i][0] != ""){
			
			symtable[sym][0] = Addcode[i][0];
			symtable[sym][1] = Hexloc[i];
			sym++;
	    }
	}
	//建立  object code
	for(i = 0; i < 9; i++)
	{
		if(Addcode[i][1] == "LDA"){
			for(int j = 0; j < 9; j++){
				
			  if(Addcode[i][2] == symtable[j][0]){
				objcode[i] = stringAdd(opcode[0].c_str(), symtable[j][1].c_str());
			  }
		    }
		}
		else if(Addcode[i][1] == "LDS"){
			for(int j = 0; j < 9; j++){
				
			  if(Addcode[i][2] == symtable[j][0]){
				objcode[i] = stringAdd(opcode[1].c_str(), symtable[j][1].c_str());
			  }
		    }
		}
		else if(Addcode[i][1] == "STA"){
			for(int j = 0; j < 9; j++){
				
			  if(Addcode[i][2] == symtable[j][0]){
				objcode[i] = stringAdd(opcode[3].c_str(), symtable[j][1].c_str());
			  }
		    }
		}
		else if(Addcode[i][1] == "ADDR"){
			
			  if(Addcode[i][2] == "S,A"){
				objcode[i] = stringAdd(opcode[2].c_str(), RS_code.c_str());
				objcode[i] = stringAdd(opcode[2].c_str(), RA_code.c_str());
			  }
			  else if(Addcode[i][2] == "A,S"){
			  	objcode[i] = stringAdd(opcode[2].c_str(), RA_code.c_str());
				objcode[i] = stringAdd(opcode[2].c_str(), RS_code.c_str());
		      }
		}
		else if(Addcode[i][1] == "WORD"){
			
			if(6 - Addcode[i][2].size() == 5){
				
				objcode[i] = stringAdd(objcode[i].c_str(), zero5.c_str());
				objcode[i] = stringAdd(objcode[i].c_str(), Addcode[i][2].c_str());
			}
			else if(6 - Addcode[i][2].size() == 4){
				
				objcode[i] = stringAdd(objcode[i].c_str(), zero4.c_str());
				objcode[i] = stringAdd(objcode[i].c_str(), Addcode[i][2].c_str());
			}
			
		}
		
	}
	//印出 Assembly Program with Object Code
	printf("%-8s%-24s%-16s\n", h[0].c_str(), h[1].c_str(), h[2].c_str());
	printf("---------------------------------------------------\n");
	for(i = 0; i < 9; i++){
		
		printf("%-8s%-8s%-8s%-8s%-6s\n", Hexloc[i].c_str(), Addcode[i][0].c_str(), Addcode[i][1].c_str(), Addcode[i][2].c_str(), objcode[i].c_str());
	} 
	printf("---------------------------------------------------\n"); 
	codeLength_noZero = DecToHex(HexToDec(Hexloc[locEnd].c_str()) - HexToDec(Hexloc[locStart].c_str())); // 計算程式長度 
	//補零 
	codeLength = addZero(codeLength_noZero.c_str(), codeLength_noZero.size());
	Hexloc[locStart] = addZero( Hexloc[locStart].c_str(),  Hexloc[locStart].size());
	//印出 Object Program Fromat
	printf("H %-6s %-6s %-6s\n", Addcode[locStart][0].c_str(), Hexloc[locStart].c_str(), codeLength.c_str()); 
	printf("T %-6s %-2s", Hexloc[locStart].c_str(), codeLength_noZero.c_str());
	for(i = locStart+1; i < locEnd; i++){
		
		printf(" %-6s", objcode[i].c_str());
	}
	printf("\n");
	printf("E %-6s\n", Hexloc[locStart].c_str());
	//cout<<HexToDec(Hexloc[locEnd].c_str()) - HexToDec(Hexloc[locStart].c_str())<<endl;
}

// 幫字串補零
char* addZero(const char* s_in, int length)
{
	string zero0 = "", zero1 = "0", zero2 = "00", zero3 = "000", zero4 = "0000", zero5 = "00000";
	char output[16];
	if(6 - length == 5){
		return stringAdd(zero5.c_str(), s_in);
	}
	else if(6 - length == 4){
		return stringAdd(zero4.c_str(), s_in);
	}
	else if(6 - length == 3){
		return stringAdd(zero3.c_str(), s_in);
	}
	else if(6 - length == 2){
		return stringAdd(zero2.c_str(), s_in);
	}
	else if(6 - length == 1){
		return stringAdd(zero1.c_str(), s_in);
	}
	else
	  return stringAdd(zero0.c_str(), s_in);;
} 

//字串相連 
char* stringAdd(const char* sa, const char* sb)
{
	char *a;
	char *b;
	char final[9];
	a=const_cast<char*>(sa); //consr char* To char*
	b=const_cast<char*>(sb);
	strcat(a,b); //字串相連 
	return a;
}

//10進制 轉 16進制 
char* DecToHex(int dec)
{
	char Hex[9];
	sprintf(Hex, "%X", dec);
	return Hex;
}
//16進制 轉 10進制 
int HexToDec(const char* hexPoint)
{
	char hex[9];
	strncpy(hex, hexPoint, strlen(hexPoint) + 1);
    long long decimal, place;
    int i = 0, val, len;

    decimal = 0;
    place = 1;

    len = strlen(hex);
    len--;
    
    for(i=0; hex[i]!='\0'; i++){
    	
    // Find the decimal representation of hex[i]
    if(hex[i]>='0' && hex[i]<='9')
    {
    val = hex[i] - 48;
    }
    else if(hex[i]>='a' && hex[i]<='f')
    {
    val = hex[i] - 97 + 10;
    }
    else if(hex[i]>='A' && hex[i]<='F')
    {
    val = hex[i] - 65 + 10;
    }
   
    decimal += val * pow(16, len);
    len--;
    }
 
    return decimal;	
}

