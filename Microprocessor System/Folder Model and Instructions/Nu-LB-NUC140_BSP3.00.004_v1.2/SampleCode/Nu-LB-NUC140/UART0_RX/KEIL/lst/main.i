#line 1 "..\\main.c"







#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int __ARM_vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int __ARM_vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int __ARM_vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));
   








 

extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 1021 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"



 

#line 9 "..\\main.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) long long atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) long long strtoll(const char * __restrict  ,
                                  char ** __restrict  , int  )
                          __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned long long strtoull(const char * __restrict  ,
                                            char ** __restrict  , int  )
                                   __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 436 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 892 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"





 
#line 10 "..\\main.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"




 





 












 






   









 






#line 61 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 75 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   




 















 
#line 112 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











 





extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_dcmp4(double  , double  );
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_fcmp4(float  , float  );
    




 

extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassifyf(float  );
extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassify(double  );
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
    


 

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
     
     








#line 230 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   
  typedef float float_t;
  typedef double double_t;
#line 251 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"



extern const int math_errhandling;
#line 261 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

extern __declspec(__nothrow) double acos(double  );
    
    
    
extern __declspec(__nothrow) double asin(double  );
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double atan(double  );
    
    

extern __declspec(__nothrow) double atan2(double  , double  );
    
    
    
    

extern __declspec(__nothrow) double cos(double  );
    
    
    
    
extern __declspec(__nothrow) double sin(double  );
    
    
    
    

extern void __use_accurate_range_reduction(void);
    
    

extern __declspec(__nothrow) double tan(double  );
    
    
    
    

extern __declspec(__nothrow) double cosh(double  );
    
    
    
    
extern __declspec(__nothrow) double sinh(double  );
    
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double tanh(double  );
    
    

extern __declspec(__nothrow) double exp(double  );
    
    
    
    
    

extern __declspec(__nothrow) double frexp(double  , int *  ) __attribute__((__nonnull__(2)));
    
    
    
    
    
    

extern __declspec(__nothrow) double ldexp(double  , int  );
    
    
    
    
extern __declspec(__nothrow) double log(double  );
    
    
    
    
    
extern __declspec(__nothrow) double log10(double  );
    
    
    
extern __declspec(__nothrow) double modf(double  , double *  ) __attribute__((__nonnull__(2)));
    
    
    
    

extern __declspec(__nothrow) double pow(double  , double  );
    
    
    
    
    
    
extern __declspec(__nothrow) double sqrt(double  );
    
    
    




    __inline double _sqrt(double __x) { return sqrt(__x); }




    __inline float _sqrtf(float __x) { return (float)sqrt(__x); }

    



 

extern __declspec(__nothrow) __attribute__((const)) double ceil(double  );
    
    
extern __declspec(__nothrow) __attribute__((const)) double fabs(double  );
    
    

extern __declspec(__nothrow) __attribute__((const)) double floor(double  );
    
    

extern __declspec(__nothrow) double fmod(double  , double  );
    
    
    
    
    

    









 



extern __declspec(__nothrow) double acosh(double  );
    

 
extern __declspec(__nothrow) double asinh(double  );
    

 
extern __declspec(__nothrow) double atanh(double  );
    

 
extern __declspec(__nothrow) double cbrt(double  );
    

 
__inline __declspec(__nothrow) __attribute__((const)) double copysign(double __x, double __y)
    

 
{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
__inline __declspec(__nothrow) __attribute__((const)) float copysignf(float __x, float __y)
    

 
{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __declspec(__nothrow) double erf(double  );
    

 
extern __declspec(__nothrow) double erfc(double  );
    

 
extern __declspec(__nothrow) double expm1(double  );
    

 



    

 






#line 479 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"


extern __declspec(__nothrow) double hypot(double  , double  );
    




 
extern __declspec(__nothrow) int ilogb(double  );
    

 
extern __declspec(__nothrow) int ilogbf(float  );
    

 
extern __declspec(__nothrow) int ilogbl(long double  );
    

 







    

 





    



 





    



 





    

 





    



 





    



 





    



 





    

 





    

 





    


 

extern __declspec(__nothrow) double lgamma (double  );
    


 
extern __declspec(__nothrow) double log1p(double  );
    

 
extern __declspec(__nothrow) double logb(double  );
    

 
extern __declspec(__nothrow) float logbf(float  );
    

 
extern __declspec(__nothrow) long double logbl(long double  );
    

 
extern __declspec(__nothrow) double nextafter(double  , double  );
    


 
extern __declspec(__nothrow) float nextafterf(float  , float  );
    


 
extern __declspec(__nothrow) long double nextafterl(long double  , long double  );
    


 
extern __declspec(__nothrow) double nexttoward(double  , long double  );
    


 
extern __declspec(__nothrow) float nexttowardf(float  , long double  );
    


 
extern __declspec(__nothrow) long double nexttowardl(long double  , long double  );
    


 
extern __declspec(__nothrow) double remainder(double  , double  );
    

 
extern __declspec(__nothrow) __attribute__((const)) double rint(double  );
    

 
extern __declspec(__nothrow) double scalbln(double  , long int  );
    

 
extern __declspec(__nothrow) float scalblnf(float  , long int  );
    

 
extern __declspec(__nothrow) long double scalblnl(long double  , long int  );
    

 
extern __declspec(__nothrow) double scalbn(double  , int  );
    

 
extern __declspec(__nothrow) float scalbnf(float  , int  );
    

 
extern __declspec(__nothrow) long double scalbnl(long double  , int  );
    

 




    

 



 
extern __declspec(__nothrow) __attribute__((const)) float _fabsf(float);  
__inline __declspec(__nothrow) __attribute__((const)) float fabsf(float __f) { return _fabsf(__f); }
extern __declspec(__nothrow) float sinf(float  );
extern __declspec(__nothrow) float cosf(float  );
extern __declspec(__nothrow) float tanf(float  );
extern __declspec(__nothrow) float acosf(float  );
extern __declspec(__nothrow) float asinf(float  );
extern __declspec(__nothrow) float atanf(float  );
extern __declspec(__nothrow) float atan2f(float  , float  );
extern __declspec(__nothrow) float sinhf(float  );
extern __declspec(__nothrow) float coshf(float  );
extern __declspec(__nothrow) float tanhf(float  );
extern __declspec(__nothrow) float expf(float  );
extern __declspec(__nothrow) float logf(float  );
extern __declspec(__nothrow) float log10f(float  );
extern __declspec(__nothrow) float powf(float  , float  );
extern __declspec(__nothrow) float sqrtf(float  );
extern __declspec(__nothrow) float ldexpf(float  , int  );
extern __declspec(__nothrow) float frexpf(float  , int *  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) __attribute__((const)) float ceilf(float  );
extern __declspec(__nothrow) __attribute__((const)) float floorf(float  );
extern __declspec(__nothrow) float fmodf(float  , float  );
extern __declspec(__nothrow) float modff(float  , float *  ) __attribute__((__nonnull__(2)));

 
 













 
__declspec(__nothrow) long double acosl(long double );
__declspec(__nothrow) long double asinl(long double );
__declspec(__nothrow) long double atanl(long double );
__declspec(__nothrow) long double atan2l(long double , long double );
__declspec(__nothrow) long double ceill(long double );
__declspec(__nothrow) long double cosl(long double );
__declspec(__nothrow) long double coshl(long double );
__declspec(__nothrow) long double expl(long double );
__declspec(__nothrow) long double fabsl(long double );
__declspec(__nothrow) long double floorl(long double );
__declspec(__nothrow) long double fmodl(long double , long double );
__declspec(__nothrow) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double ldexpl(long double , int );
__declspec(__nothrow) long double logl(long double );
__declspec(__nothrow) long double log10l(long double );
__declspec(__nothrow) long double modfl(long double  , long double *  ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double powl(long double , long double );
__declspec(__nothrow) long double sinl(long double );
__declspec(__nothrow) long double sinhl(long double );
__declspec(__nothrow) long double sqrtl(long double );
__declspec(__nothrow) long double tanl(long double );
__declspec(__nothrow) long double tanhl(long double );





 
extern __declspec(__nothrow) float acoshf(float  );
__declspec(__nothrow) long double acoshl(long double );
extern __declspec(__nothrow) float asinhf(float  );
__declspec(__nothrow) long double asinhl(long double );
extern __declspec(__nothrow) float atanhf(float  );
__declspec(__nothrow) long double atanhl(long double );
__declspec(__nothrow) long double copysignl(long double , long double );
extern __declspec(__nothrow) float cbrtf(float  );
__declspec(__nothrow) long double cbrtl(long double );
extern __declspec(__nothrow) float erff(float  );
__declspec(__nothrow) long double erfl(long double );
extern __declspec(__nothrow) float erfcf(float  );
__declspec(__nothrow) long double erfcl(long double );
extern __declspec(__nothrow) float expm1f(float  );
__declspec(__nothrow) long double expm1l(long double );
extern __declspec(__nothrow) float log1pf(float  );
__declspec(__nothrow) long double log1pl(long double );
extern __declspec(__nothrow) float hypotf(float  , float  );
__declspec(__nothrow) long double hypotl(long double , long double );
extern __declspec(__nothrow) float lgammaf(float  );
__declspec(__nothrow) long double lgammal(long double );
extern __declspec(__nothrow) float remainderf(float  , float  );
__declspec(__nothrow) long double remainderl(long double , long double );
extern __declspec(__nothrow) float rintf(float  );
__declspec(__nothrow) long double rintl(long double );



#line 875 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"





#line 896 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 1087 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











#line 1317 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"





 
#line 11 "..\\main.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 12 "..\\main.c"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
 









 




















 








 




 



 

typedef enum IRQn
{
     
    NonMaskableInt_IRQn         = -14,     
    HardFault_IRQn              = -13,     
    SVCall_IRQn                 = -5,      
    PendSV_IRQn                 = -2,      
    SysTick_IRQn                = -1,      

     
    BOD_IRQn                  = 0,         
    WDT_IRQn                  = 1,         
    EINT0_IRQn                = 2,         
    EINT1_IRQn                = 3,         
    GPAB_IRQn                 = 4,         
    GPCDEF_IRQn               = 5,         
    PWMA_IRQn                 = 6,         
    PWMB_IRQn                 = 7,         
    TMR0_IRQn                 = 8,         
    TMR1_IRQn                 = 9,         
    TMR2_IRQn                 = 10,        
    TMR3_IRQn                 = 11,        
    UART02_IRQn               = 12,        
    UART1_IRQn                = 13,        
    SPI0_IRQn                 = 14,        
    SPI1_IRQn                 = 15,        
    SPI2_IRQn                 = 16,        
    SPI3_IRQn                 = 17,        
    I2C0_IRQn                 = 18,        
    I2C1_IRQn                 = 19,        
    CAN0_IRQn                 = 20,        
    CAN1_IRQn                 = 21,        
    SC012_IRQn                = 22,        
    USBD_IRQn                 = 23,        
    PS2_IRQn                  = 24,        
    ACMP_IRQn                 = 25,        
    PDMA_IRQn                 = 26,        
    I2S_IRQn                  = 27,        
    PWRWU_IRQn                = 28,        
    ADC_IRQn                  = 29,        
    IRC_IRQn                  = 30,        
    RTC_IRQn                  = 31         
} IRQn_Type;






 

 





   


#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"
 




















 













 












 




 


 

 













#line 89 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"


 







#line 114 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 116 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"
#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"
 




















 






 


 



 


 









 







 







 






 








 







 







 









 









 
__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 
__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}









 



#line 268 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"



#line 619 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"

   

   

#line 117 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"
#line 1 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"
 




















 






 

 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}


#line 260 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"


#line 296 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"


#line 615 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"

 

   

#line 118 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"








 
#line 143 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"

 






 
#line 159 "..\\..\\..\\..\\Library\\CMSIS\\Include\\core_cm0.h"

 










 


 





 


 
typedef union
{
  struct
  {

    uint32_t _reserved0:27;               





    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       

    uint32_t _reserved0:15;               





    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 


 
typedef struct
{
  volatile uint32_t ISER[1];                  
       uint32_t RESERVED0[31];
  volatile uint32_t ICER[1];                  
       uint32_t RSERVED1[31];
  volatile uint32_t ISPR[1];                  
       uint32_t RESERVED2[31];
  volatile uint32_t ICPR[1];                  
       uint32_t RESERVED3[31];
       uint32_t RESERVED4[64];
  volatile uint32_t IP[8];                    
}  NVIC_Type;

 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
       uint32_t RESERVED0;
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
       uint32_t RESERVED1;
  volatile uint32_t SHP[2];                   
  volatile uint32_t SHCSR;                    
} SCB_Type;

 















 



























 















 









 






 



 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 












 



 



 









 








 
 






 

 










 









 

 



 




 

 
 










 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}







 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}











 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));
}







 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}







 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] = (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] = (((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
}












 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) >> (8 - 2)));  }  
  else {
    return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[ ( ((uint32_t)(IRQn) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) >> (8 - 2)));  }  
}





 
static __inline void NVIC_SystemReset(void)
{
  __dsb(0xF);                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (1UL << 2));
  __dsb(0xF);                                                      
  while(1);                                                     
}

 



 




 

















 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if (ticks > (0xFFFFFFUL << 0))  return (1);             

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (ticks & (0xFFFFFFUL << 0)) - 1;       
  NVIC_SetPriority (SysTick_IRQn, (1<<2) - 1);   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                     
  return (0);                                                   
}



 








   

#line 113 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\system_NUC100Series.h"
 









 






 
 
 

 




 






extern uint32_t SystemCoreClock;     
extern uint32_t CyclesPerUs;         
extern uint32_t PllClock;            









 
extern void SystemInit(void);










 
extern void SystemCoreClockUpdate(void);





#line 114 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"


#pragma anon_unions



 



 

 



 



typedef struct
{











































 

    volatile uint32_t CMPCR[2];       
    volatile uint32_t CMPSR;          

} ACMP_T;






 


 












 












   
   




 



 


typedef struct
{


















































































































































































































 

    volatile const  uint32_t ADDR[8];        
    volatile uint32_t ADCR;           
    volatile uint32_t ADCHER;         
    volatile uint32_t ADCMPR[2];      
    volatile uint32_t ADSR;           
    volatile const  uint32_t RESERVE0[3];  
    volatile const  uint32_t ADPDMA;         

} ADC_T;






 

 









 






























 






 


















 





















 



   
   



 



 


typedef struct
{








































































































































































































































































































































































































































































































 

    volatile uint32_t PWRCON;         
    volatile uint32_t AHBCLK;         
    volatile uint32_t APBCLK;         
    volatile uint32_t CLKSTATUS;      
    volatile uint32_t CLKSEL0;        
    volatile uint32_t CLKSEL1;        
    volatile uint32_t CLKDIV;         
    volatile uint32_t CLKSEL2;        
    volatile uint32_t PLLCON;         
    volatile uint32_t FRQDIV;         
    volatile uint32_t RESERVE[2];   
    volatile uint32_t APBCLK1;        
    volatile uint32_t CLKSEL3;        
    volatile uint32_t CLKDIV1;        

} CLK_T;






 

 































 










 











































































 









 






















 






 







































 



































 









 












 









 





















 






   
   



 



 


typedef struct
{













































































































































































 

    volatile uint32_t CTL;            
    volatile uint32_t DMASAR;         
    volatile const  uint32_t RESERVED0;    
    volatile uint32_t DMABCR ;        
    volatile const  uint32_t RESERVED1;    
    volatile const  uint32_t DMACSAR;        
    volatile const  uint32_t RESERVED2;    
    volatile const  uint32_t DMACBCR;        
    volatile uint32_t DMAIER ;        
    volatile uint32_t DMAISR;         
    volatile const  uint32_t RESERVED3[22];
    volatile uint32_t WDATA;          
    volatile uint32_t SEED;           
    volatile const  uint32_t CHECKSUM;       

} CRC_T;







 

 



























 



 



 



 



 






 






 



 



 


   
   



 



 



typedef struct
{




















































 

    volatile uint32_t EBICON;         
    volatile uint32_t EXTIME;         
    volatile uint32_t EBICON2;        

} EBI_T;






 

 












 












 








   
   



 



 


typedef struct
{

























































































































































 

    volatile uint32_t ISPCON;         
    volatile uint32_t ISPADR;         
    volatile uint32_t ISPDAT;         
    volatile uint32_t ISPCMD;         
    volatile uint32_t ISPTRG;         
    volatile const  uint32_t DFBADR;         
    volatile uint32_t FATCON;         
    volatile const  uint32_t RESERVED[9];  
    volatile uint32_t ISPSTA;         

} FMC_T;






 

 
























 



 



 









 



 



 
























   
   




 



 


typedef struct
{

































































































































 

    volatile uint32_t PMD;            
    volatile uint32_t OFFD;           
    volatile uint32_t DOUT;           
    volatile uint32_t DMASK;          
    volatile const  uint32_t PIN;            
    volatile uint32_t DBEN;           
    volatile uint32_t IMD;            
    volatile uint32_t IEN;            
    volatile uint32_t ISRC;           

} GPIO_T;





typedef struct
{
































 

    volatile uint32_t DBNCECON;       

} GPIO_DBNCECON_T;






 


 
















































 



 



 



 



 



 



 






 



 








   
   




 



 


typedef struct
{
























































































































































































































 

    volatile uint32_t I2CON;          
    volatile uint32_t I2CADDR0;       
    volatile uint32_t I2CDAT;         
    volatile const  uint32_t I2CSTATUS;      
    volatile uint32_t I2CLK;          
    volatile uint32_t I2CTOC;         
    volatile uint32_t I2CADDR1;       
    volatile uint32_t I2CADDR2;       
    volatile uint32_t I2CADDR3;       
    volatile uint32_t I2CADM0;        
    volatile uint32_t I2CADM1;        
    volatile uint32_t I2CADM2;        
    volatile uint32_t I2CADM3;        
    volatile const  uint32_t RESERVED0[2];
    volatile uint32_t I2CWKUPCON;     
    volatile uint32_t I2CWKUPSTS;     

} I2C_T;







 

 


















 






 



 



 



 









 



 



 



   
   



 



 


typedef struct
{





























































































































































































































































































 

    volatile uint32_t CON;            
    volatile uint32_t CLKDIV;         
    volatile uint32_t IE;             
    volatile uint32_t STATUS;         
    volatile  uint32_t TXFIFO;         
    volatile const  uint32_t RXFIFO;         

} I2S_T;







 

 






















































                                                  






                                                      

























 

























































   
   



 



 


typedef struct
{









































































































































 

    volatile uint32_t CSR;            
    volatile uint32_t SAR;            
    volatile uint32_t DAR;            
    volatile uint32_t BCR;            
    volatile const  uint32_t POINT;          
    volatile const  uint32_t CSAR;           
    volatile const  uint32_t CDAR;           
    volatile const  uint32_t CBCR;           
    volatile uint32_t IER;            
    volatile uint32_t ISR;            
    volatile const  uint32_t RESERVE[22];  
    volatile const  uint32_t SBUF;           

} PDMA_T;





typedef struct
{




































































































































































































 

    volatile uint32_t GCRCSR;         
    volatile uint32_t PDSSR0;         
    volatile uint32_t PDSSR1;         
    volatile uint32_t GCRISR;         
    volatile uint32_t PDSSR2;         

} PDMA_GCR_T;






 


 





















 



 



 




 






 






 






























 
























 















 

































 





   
   



 



 


typedef struct
{









































































































































































 

    volatile uint32_t PS2CON;         
    volatile uint32_t PS2TXDATA0;     
    volatile uint32_t PS2TXDATA1;     
    volatile uint32_t PS2TXDATA2;     
    volatile uint32_t PS2TXDATA3;     
    volatile uint32_t PS2RXDATA;      
    volatile uint32_t PS2STATUS;      
    volatile uint32_t PS2INTID;       

} PS2_T;







 

 



























 



 



























 


                                                                                                    


   
   


 



 


typedef struct
{
























































































































































































































































































































































































































































































































































































































































































































































































































 

    volatile uint32_t PPR;            
    volatile uint32_t CSR;            
    volatile uint32_t PCR;            
    volatile uint32_t CNR0;           
    volatile uint32_t CMR0;           
    volatile const  uint32_t PDR0;           
    volatile uint32_t CNR1;           
    volatile uint32_t CMR1;           
    volatile const  uint32_t PDR1;           
    volatile uint32_t CNR2;           
    volatile uint32_t CMR2;           
    volatile const  uint32_t PDR2;           
    volatile uint32_t CNR3;           
    volatile uint32_t CMR3;           
    volatile const  uint32_t PDR3;           
    volatile uint32_t PBCR;           
    volatile uint32_t PIER;           
    volatile uint32_t PIIR;           
    volatile const  uint32_t RESERVE1[2];  
    volatile uint32_t CCR0;           
    volatile uint32_t CCR2;           
    volatile uint32_t CRLR0;          
    volatile uint32_t CFLR0;          
    volatile uint32_t CRLR1;          
    volatile uint32_t CFLR1;          
    volatile uint32_t CRLR2;          
    volatile uint32_t CFLR2;          
    volatile uint32_t CRLR3;          
    volatile uint32_t CFLR3;          
    volatile uint32_t CAPENR;         
    volatile uint32_t POE;            
    volatile uint32_t TCON;           
    volatile uint32_t TSTATUS;        
    volatile uint32_t SYNCBUSY0;      
    volatile uint32_t SYNCBUSY1;      
    volatile uint32_t SYNCBUSY2;      
    volatile uint32_t SYNCBUSY3;      

} PWM_T;






 

 












 












 




























































 


                                                                                            
                                                          


                                                                                            
                                                          



 



 































 
























 










































 










































 



 



 












 












 













 













 



 



 



 


   
   





 



 


typedef struct
{


































































































































































































































 

    volatile uint32_t INIR;           
    volatile uint32_t AER;            
    volatile uint32_t FCR;            
    volatile uint32_t TLR;            
    volatile uint32_t CLR;            
    volatile uint32_t TSSR;           
    volatile uint32_t DWR;            
    volatile uint32_t TAR;            
    volatile uint32_t CAR;            
    volatile const  uint32_t LIR;            
    volatile uint32_t RIER;           
    volatile uint32_t RIIR;           
    volatile uint32_t TTR;            
    volatile const  uint32_t RESERVED[2];  
    volatile uint32_t SPRCTL;         
    volatile uint32_t SPR[20];        

} RTC_T;






 

 






 






 






 


















 


















 



 



 


















 


















 



 









 









 



 

















   
   




 



 


typedef struct
{


    































































































































































































































































































































































































































































































































































































































































 

    union {
    volatile const  uint32_t RBR;            
    volatile  uint32_t THR;            
    };
    volatile uint32_t CTL;            
    volatile uint32_t ALTCTL;         
    volatile uint32_t EGTR;           
    volatile uint32_t RFTMR;          
    volatile uint32_t ETUCR;          
    volatile uint32_t IER;            
    volatile uint32_t ISR;            
    volatile uint32_t TRSR;           
    volatile uint32_t PINCSR;         
    volatile uint32_t TMR0;           
    volatile uint32_t TMR1;           
    volatile uint32_t TMR2;           
    volatile const  uint32_t RESERVED0;    
    volatile const  uint32_t TDRA;           
    volatile const  uint32_t TDRB;           

} SC_T;






 

 



 



 













































 










































 



 



 






 

































 


































 



















































 







































 






 






 






 



 





   
   




 



 


typedef struct
{





































































































































































































































































































































































































































 

    volatile uint32_t CNTRL;          
    volatile uint32_t DIVIDER;        
    volatile uint32_t SSR;            
    volatile const  uint32_t RESERVE0;     
    volatile const  uint32_t RX[2];          
    volatile const  uint32_t RESERVE1;     
    volatile const  uint32_t RESERVE2;     
    volatile  uint32_t TX[2];          
    volatile const  uint32_t RESERVE3;     
    volatile const  uint32_t RESERVE4;     
    volatile const  uint32_t RESERVE5;     
    volatile uint32_t VARCLK;         
    volatile uint32_t DMA;            
    volatile uint32_t CNTRL2;         
    volatile uint32_t FIFO_CTL;       
    volatile uint32_t STATUS;         
    
} SPI_T;






 

 






















































 






 















 









 
























 
























 



































   
   




 



 



typedef struct
{














































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 

    volatile const  uint32_t PDID;           
    volatile uint32_t RSTSRC;         
    volatile uint32_t IPRSTC1;        
    volatile uint32_t IPRSTC2;        
    volatile uint32_t IPRSTC3;        
    volatile const  uint32_t RESERVE0;
    volatile uint32_t BODCR;          
    volatile uint32_t TEMPCR;         
    volatile const  uint32_t RESERVE1;
    volatile uint32_t PORCR;          
    volatile const  uint32_t RESERVE2[2];
    volatile uint32_t GPA_MFP;        
    volatile uint32_t GPB_MFP;        
    volatile uint32_t GPC_MFP;        
    volatile uint32_t GPD_MFP;        
    volatile uint32_t GPE_MFP;        
    volatile uint32_t GPF_MFP;        
    volatile const  uint32_t RESERVE3[2];
    volatile uint32_t ALT_MFP;        
    volatile const  uint32_t RESERVE4;
    volatile uint32_t ALT_MFP1;       
    volatile uint32_t ALT_MFP2;       
    volatile const  uint32_t RESERVE5[8];
    volatile uint32_t IRCTRIMCTL;     
    volatile uint32_t IRCTRIMIEN;     
    volatile uint32_t IRCTRIMINT;     
    volatile const  uint32_t RESERVE6[29];   
    volatile uint32_t REGWRPROT;      

} GCR_T;







 

 





















 












 































































 









 





















 



 



 







 






 






 






 












 















 




























































 













































 












 






 









 








typedef struct
{

    











































































 

    volatile const  uint32_t IRQSRC[32];    
    volatile uint32_t NMISEL;        
    volatile uint32_t MCUIRQ;        
    
} GCR_INT_T;



 



 






 


   
   




 



 


typedef struct
{

























































































































































 

    volatile uint32_t TCSR;           
    volatile uint32_t TCMPR;          
    volatile uint32_t TISR;           
    volatile const  uint32_t TDR;            
    volatile const  uint32_t TCAP;           
    volatile uint32_t TEXCON;         
    volatile uint32_t TEXISR;         

} TIMER_T;






 

 






























 



 






 



 



 





















 


   
   



 



 


typedef struct
{















































































































































































































































































































































































































































































































































































































 

    union
    {
        volatile uint32_t DATA;           
        volatile uint32_t THR;            
        volatile uint32_t RBR;            
    };
    volatile uint32_t IER;            
    volatile uint32_t FCR;            
    volatile uint32_t LCR;            
    volatile uint32_t MCR;            
    volatile uint32_t MSR;            
    volatile uint32_t FSR;            
    volatile uint32_t ISR;            
    volatile uint32_t TOR;            
    volatile uint32_t BAUD;           
    volatile uint32_t IRCR;           
    volatile uint32_t ALT_CSR;        
    volatile uint32_t FUN_SEL;        
    volatile uint32_t LIN_CTL;        
    volatile uint32_t LIN_SR;         
    

} UART_T;







 

 



 



 








 






























 















 


















 









 










 







































 



































































 






 


                                                                                     


                                                                                     


                                                                                     



 









 
























 



 










































 

















   
   



 



 



typedef struct
{










































































 

    volatile uint32_t BUFSEG;         
    volatile uint32_t MXPLD;          
    volatile uint32_t CFG;            
    volatile uint32_t CFGP;           

} USBD_EP_T;







typedef struct
{

















































































































































































































 

    volatile uint32_t INTEN;          
    volatile uint32_t INTSTS;         
    volatile uint32_t FADDR;          
    volatile const  uint32_t EPSTS;          
    volatile uint32_t ATTR;           
    volatile const  uint32_t FLDET;          
    volatile uint32_t STBUFSEG;       
    volatile const  uint32_t RESERVE0;   
    USBD_EP_T     EP[6];          
    volatile const  uint32_t RESERVE1[4];  
    volatile uint32_t DRVSE0;         

} USBD_T;







 

 


















                                           


















                                            



                                            





















                                             






























                                            



 



 



                                            



                                              















                                             






                                           



   
   




 



 


typedef struct
{




















































































 

    volatile uint32_t WTCR;           
    volatile uint32_t WTCRALT;        

} WDT_T;






 

 






























                                                  


   
   


 



 


typedef struct
{













































































 

    volatile uint32_t WWDTRLD;        
    volatile uint32_t WWDTCR;         
    volatile uint32_t WWDTSR;         
    volatile const  uint32_t WWDTCVR;        

} WWDT_T;






 

 



                                                   















                                                   






                                                  


   
   
   


 
 
 



 
 






 
#line 10743 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"










































#line 10794 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"















   

 
 
 




 
#line 10826 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"










































#line 10877 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
















   











 

typedef volatile unsigned char  vu8;        
typedef volatile unsigned short vu16;       
typedef volatile unsigned long  vu32;       





 







 







 








 







 








 







 







 






 








 







 








 







 







 






 


   







 













 
#line 11087 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"

 










   

   


 
 
 
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SYS.h"
 









 










 



 



 


 
 
 
#line 62 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SYS.h"


 
 
 
#line 73 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SYS.h"


 
 
 







 



































    


































































































































































































































































































































































































































































































































































































































































































































































































































































































































































    






























































































































































































































































   



 







 







 







 







 








 









 







 







 







 











 








 








 








 








 








 








 








 







 







 







 







 














 









 
static __inline void SYS_LockReg(void)
{
    ((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->REGWRPROT = 0;
}








 
static __inline void SYS_UnlockReg(void)
{
    while(((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->REGWRPROT != (1ul << 0))
    {
 			((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->REGWRPROT = 0x59;
        ((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->REGWRPROT = 0x16;
        ((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->REGWRPROT = 0x88;
    }
}


void SYS_ClearResetSrc(uint32_t u32Src);
uint32_t SYS_GetBODStatus(void);
uint32_t SYS_GetResetSrc(void);
uint32_t SYS_IsRegLocked(void);
uint32_t  SYS_ReadPDID(void);
void SYS_ResetChip(void);
void SYS_ResetCPU(void);
void SYS_ResetModule(uint32_t u32ModuleIndex);
void SYS_EnableBOD(int32_t i32Mode, uint32_t u32BODLevel);
void SYS_DisableBOD(void);


   

   

   








 
#line 11108 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ADC.h"
 









 












 



 



 
 
 
 
























 
 
 




 
 
 
#line 76 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ADC.h"

 
 
 




 
 
 




 
 
 





 
 
 



 
 
 





   



 











 








 







 








 












 












 








 









 









 








 







 
















 
#line 254 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ADC.h"






 
















 
#line 287 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ADC.h"






 










 










 







 








 


void ADC_Open(ADC_T *adc,
              uint32_t u32InputMode,
              uint32_t u32OpMode,
              uint32_t u32ChMask);
void ADC_Close(ADC_T *adc);
void ADC_EnableHWTrigger(ADC_T *adc,
                         uint32_t u32Source,
                         uint32_t u32Param);
void ADC_DisableHWTrigger(ADC_T *adc);
void ADC_EnableInt(ADC_T *adc, uint32_t u32Mask);
void ADC_DisableInt(ADC_T *adc, uint32_t u32Mask);



   

   

   







 
#line 11109 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\FMC.h"
 









 












 



 



 


 
 
 







 
 
 



 
 
 
#line 61 "..\\..\\..\\..\\Library\\StdDriver\\inc\\FMC.h"


   



 

 
 
 









 












 













 













 














 











 













 












 













 















 














 



 
 
 











 
static __inline void FMC_Write(uint32_t u32addr, uint32_t u32data)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x21;    
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = u32addr;               
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT = u32data;               
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = 0x1;                   
    __isb(0xF);                             
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG);                  
}










 
static __inline uint32_t FMC_Read(uint32_t u32addr)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x00;  
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = u32addr;          
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = 0x1;              
    __isb(0xF);                        
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG);             

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}













 
static __inline int32_t FMC_Erase(uint32_t u32addr)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x22;  
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = u32addr;                
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = 0x1;                    
    __isb(0xF);                              
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG);                   

     
    if(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCON & (1ul << 6))
    {
        ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCON |= (1ul << 6);
        return -1;
    }
    return 0;
}










 
static __inline uint32_t FMC_ReadUID(uint8_t u8index)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x04;  
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = (u8index << 2);       
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = 0x1;                  
    __isb(0xF);                            
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG);                 

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}











 
static __inline uint32_t FMC_ReadCID(void)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x0B;            
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = 0x0;                            
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = (1ul << 0);           
    __isb(0xF);                                      
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG & (1ul << 0)) ;   

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}










 
static __inline uint32_t FMC_ReadPID(void)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x0C;           
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = 0x04;                          
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = (1ul << 0);          
    __isb(0xF);                                     
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG & (1ul << 0));   

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}










 
static __inline uint32_t FMC_ReadUCID(uint32_t u32Index)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x04;           
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = (0x04 * u32Index) + 0x10;      
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = (1ul << 0);          
    __isb(0xF);                                     
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG & (1ul << 0));   

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}















 
static __inline void FMC_SetVectorPageAddr(uint32_t u32PageAddr)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x2e;  
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = u32PageAddr;        
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = 0x1;                
    __isb(0xF);                          
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG);               
}














 
static __inline uint32_t FMC_GetVECMAP(void)
{
    return (((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPSTA & (0xFFFul << 9));
}

extern void FMC_Open(void);
extern void FMC_Close(void);
extern void FMC_EnableAPUpdate(void);
extern void FMC_DisableAPUpdate(void);
extern void FMC_EnableConfigUpdate(void);
extern void FMC_DisableConfigUpdate(void);
extern void FMC_EnableLDUpdate(void);
extern void FMC_DisableLDUpdate(void);
extern int32_t FMC_ReadConfig(uint32_t *u32Config, uint32_t u32Count);
extern int32_t FMC_WriteConfig(uint32_t *u32Config, uint32_t u32Count);
extern void FMC_SetBootSource(int32_t i32BootSrc);
extern int32_t FMC_GetBootSource(void);
extern uint32_t FMC_ReadDataFlashBaseAddr(void);

   

   

   








#line 11110 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\GPIO.h"
 









 











 



 



 


 
 
 





 
 
 






 
 
 



 
 
 






#line 82 "..\\..\\..\\..\\Library\\StdDriver\\inc\\GPIO.h"















 
#line 183 "..\\..\\..\\..\\Library\\StdDriver\\inc\\GPIO.h"


   




 












 













 













 













 













 













 













 














 



















 










 











 










 















 














 
















 














 



void GPIO_SetMode(GPIO_T *port, uint32_t u32PinMask, uint32_t u32Mode);
void GPIO_EnableInt(GPIO_T *port, uint32_t u32Pin, uint32_t u32IntAttribs);
void GPIO_DisableInt(GPIO_T *port, uint32_t u32Pin);


   

   

   







 
#line 11111 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\I2C.h"
 









 












 



 



 

 
 
 
#line 46 "..\\..\\..\\..\\Library\\StdDriver\\inc\\I2C.h"




   



 









 










 










 










 











 










 











 











 










 


 
 
 









 
static __inline void I2C_STOP(I2C_T *i2c)
{
    (i2c)->I2CON |= ((1ul << 3) | (1ul << 4));
    while((i2c)->I2CON & (1ul << 4));
}

void I2C_ClearTimeoutFlag(I2C_T *i2c);
void I2C_Close(I2C_T *i2c);
void I2C_Trigger(I2C_T *i2c, uint8_t u8Start, uint8_t u8Stop, uint8_t u8Si, uint8_t u8Ack);
void I2C_DisableInt(I2C_T *i2c);
void I2C_EnableInt(I2C_T *i2c);
uint32_t I2C_GetBusClockFreq(I2C_T *i2c);
uint32_t I2C_SetBusClockFreq(I2C_T *i2c, uint32_t u32BusClock);
uint32_t I2C_GetIntFlag(I2C_T *i2c);
uint32_t I2C_GetStatus(I2C_T *i2c);
uint32_t I2C_Open(I2C_T *i2c, uint32_t u32BusClock);
uint8_t I2C_GetData(I2C_T *i2c);
void I2C_SetSlaveAddr(I2C_T *i2c, uint8_t u8SlaveNo, uint8_t u8SlaveAddr, uint8_t u8GCMode);
void I2C_SetSlaveAddrMask(I2C_T *i2c, uint8_t u8SlaveNo, uint8_t u8SlaveAddrMask);
void I2C_EnableTimeout(I2C_T *i2c, uint8_t u8LongTimeout);
void I2C_DisableTimeout(I2C_T *i2c);
void I2C_EnableWakeup(I2C_T *i2c);
void I2C_DisableWakeup(I2C_T *i2c);
void I2C_SetData(I2C_T *i2c, uint8_t u8Data);

   

   

   

#line 11112 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PWM.h"
 








 











 



 



 
#line 43 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PWM.h"
 
 
 






   




 











 
#line 79 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PWM.h"









 










 













 

















 













 














 
















 
#line 186 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PWM.h"


uint32_t PWM_ConfigCaptureChannel(PWM_T *pwm,
                                  uint32_t u32ChannelNum,
                                  uint32_t u32UnitTimeNsec,
                                  uint32_t u32CaptureEdge);
uint32_t PWM_ConfigOutputChannel(PWM_T *pwm,
                                 uint32_t u32ChannelNum,
                                 uint32_t u32Frequncy,
                                 uint32_t u32DutyCycle);
void PWM_Start(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_Stop(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_ForceStop(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_EnableADCTrigger(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Condition);
void PWM_DisableADCTrigger(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearADCTriggerFlag(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Condition);
uint32_t PWM_GetADCTriggerFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableCapture(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_DisableCapture(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_EnableOutput(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_DisableOutput(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_EnableDeadZone(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Duration);
void PWM_DisableDeadZone(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableCaptureInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void PWM_DisableCaptureInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void PWM_ClearCaptureIntFlag(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Edge);
uint32_t PWM_GetCaptureIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableDutyInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32IntDutyType);
void PWM_DisableDutyInt(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearDutyIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
uint32_t PWM_GetDutyIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnablePeriodInt(PWM_T *pwm, uint32_t u32ChannelNum,  uint32_t u32IntPeriodType);
void PWM_DisablePeriodInt(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearPeriodIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
uint32_t PWM_GetPeriodIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);



   

   

   







 
#line 11113 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SPI.h"
 









 











 



 



 














#line 52 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SPI.h"









   




 






 







 







 







 







 







 







 








 







 







 







 







 







 








 








 








 







 







 








 








 










 







 







 







 







 







 







 










 







 







 








 








 









 




 
uint32_t SPI_Open(SPI_T *spi, uint32_t u32MasterSlave, uint32_t u32SPIMode, uint32_t u32DataWidth, uint32_t u32BusClock);
void SPI_Close(SPI_T *spi);
void SPI_ClearRxFIFO(SPI_T *spi);
void SPI_ClearTxFIFO(SPI_T *spi);
void SPI_DisableAutoSS(SPI_T *spi);
void SPI_EnableAutoSS(SPI_T *spi, uint32_t u32SSPinMask, uint32_t u32ActiveLevel);
uint32_t SPI_SetBusClock(SPI_T *spi, uint32_t u32BusClock);
void SPI_EnableFIFO(SPI_T *spi, uint32_t u32TxThreshold, uint32_t u32RxThreshold);
void SPI_DisableFIFO(SPI_T *spi);
uint32_t SPI_GetBusClock(SPI_T *spi);
void SPI_EnableInt(SPI_T *spi, uint32_t u32Mask);
void SPI_DisableInt(SPI_T *spi, uint32_t u32Mask);
uint32_t SPI_GetIntFlag(SPI_T *spi, uint32_t u32Mask);
void SPI_ClearIntFlag(SPI_T *spi, uint32_t u32Mask);
uint32_t SPI_GetStatus(SPI_T *spi, uint32_t u32Mask);





 



 



 




#line 11114 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CRC.h"
 








 











 



 



 
 
 
 





 
 
 





 
 
 




   




 









 










 










 










 













 










 










 



 
void CRC_Open(uint32_t u32Mode, uint32_t u32Attribute, uint32_t u32Seed, uint32_t u32DataLen);
void CRC_StartDMATransfer(uint32_t u32SrcAddr, uint32_t u32ByteCount);
uint32_t CRC_GetChecksum(void);

   

   

   







 
#line 11115 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\TIMER.h"
 








 











 



 



 

#line 43 "..\\..\\..\\..\\Library\\StdDriver\\inc\\TIMER.h"

   




 










 












 











 










 
static __inline void TIMER_Start(TIMER_T *timer)
{
    timer->TCSR |= (1ul << 30);
}









 
static __inline void TIMER_Stop(TIMER_T *timer)
{
    timer->TCSR &= ~(1ul << 30);
}










 
static __inline void TIMER_EnableWakeup(TIMER_T *timer)
{
    timer->TCSR |= (1ul << 23);
}









 
static __inline void TIMER_DisableWakeup(TIMER_T *timer)
{
    timer->TCSR &= ~(1ul << 23);
}









 
static __inline void TIMER_EnableCaptureDebounce(TIMER_T *timer)
{
    timer->TEXCON |= (1ul << 6);
}









 
static __inline void TIMER_DisableCaptureDebounce(TIMER_T *timer)
{
    timer->TEXCON &= ~(1ul << 6);
}









 
static __inline void TIMER_EnableEventCounterDebounce(TIMER_T *timer)
{
    timer->TEXCON |= (1ul << 7);
}









 
static __inline void TIMER_DisableEventCounterDebounce(TIMER_T *timer)
{
    timer->TEXCON &= ~(1ul << 7);
}









 
static __inline void TIMER_EnableInt(TIMER_T *timer)
{
    timer->TCSR |= (1ul << 29);
}









 
static __inline void TIMER_DisableInt(TIMER_T *timer)
{
    timer->TCSR &= ~(1ul << 29);
}









 
static __inline void TIMER_EnableCaptureInt(TIMER_T *timer)
{
    timer->TEXCON |= (1ul << 5);
}









 
static __inline void TIMER_DisableCaptureInt(TIMER_T *timer)
{
    timer->TEXCON &= ~(1ul << 5);
}










 
static __inline uint32_t TIMER_GetIntFlag(TIMER_T *timer)
{
    return (timer->TISR & (1ul << 0) ? 1 : 0);
}









 
static __inline void TIMER_ClearIntFlag(TIMER_T *timer)
{
    timer->TISR = (1ul << 0);
}










 
static __inline uint32_t TIMER_GetCaptureIntFlag(TIMER_T *timer)
{
    return timer->TEXISR;
}









 
static __inline void TIMER_ClearCaptureIntFlag(TIMER_T *timer)
{
    timer->TEXISR = (1ul << 0);
}










 
static __inline uint32_t TIMER_GetWakeupFlag(TIMER_T *timer)
{
    return (timer->TISR & (1ul << 1) ? 1 : 0);
}









 
static __inline void TIMER_ClearWakeupFlag(TIMER_T *timer)
{
    timer->TISR = (1ul << 1);
}









 
static __inline uint32_t TIMER_GetCaptureData(TIMER_T *timer)
{
    return timer->TCAP;
}









 
static __inline uint32_t TIMER_GetCounter(TIMER_T *timer)
{
    return timer->TDR;
}

uint32_t TIMER_Open(TIMER_T *timer, uint32_t u32Mode, uint32_t u32Freq);
void TIMER_Close(TIMER_T *timer);
void TIMER_Delay(TIMER_T *timer, uint32_t u32Usec);
void TIMER_EnableCapture(TIMER_T *timer, uint32_t u32CapMode, uint32_t u32Edge);
void TIMER_DisableCapture(TIMER_T *timer);
void TIMER_EnableEventCounter(TIMER_T *timer, uint32_t u32Edge);
void TIMER_DisableEventCounter(TIMER_T *timer);
uint32_t TIMER_GetModuleClock(TIMER_T *timer);

   

   

   







 
#line 11116 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\WDT.h"
 








 











 



 



 
 
 
 
#line 42 "..\\..\\..\\..\\Library\\StdDriver\\inc\\WDT.h"

 
 
 





   




 









 










 










 











 











 











 












 










 
static __inline void WDT_Close(void)
{
    ((WDT_T *) ((( uint32_t)0x40000000) + 0x4000))->WTCR = 0;
    return;
}









 
static __inline void WDT_EnableInt(void)
{
    ((WDT_T *) ((( uint32_t)0x40000000) + 0x4000))->WTCR |= (1ul << 6);
    return;
}









 
static __inline void WDT_DisableInt(void)
{
    
    ((WDT_T *) ((( uint32_t)0x40000000) + 0x4000))->WTCR &= ~((1ul << 6) | (1ul << 2) | (1ul << 3) | (1ul << 5));
    return;
}

void WDT_Open(uint32_t u32TimeoutInterval, uint32_t u32ResetDelay, uint32_t u32EnableReset, uint32_t u32EnableWakeup);

   

   

   







 
#line 11117 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\WWDT.h"
 








 











 



 



 
 
 
 
#line 50 "..\\..\\..\\..\\Library\\StdDriver\\inc\\WWDT.h"



   




 









 










 











 











 










 












 


void WWDT_Open(uint32_t u32PreScale, uint32_t u32CmpValue, uint32_t u32EnableInt);

   

   

   







 
#line 11118 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\RTC.h"
 








 











 



 



 















#line 54 "..\\..\\..\\..\\Library\\StdDriver\\inc\\RTC.h"

#line 62 "..\\..\\..\\..\\Library\\StdDriver\\inc\\RTC.h"







   




 


 
typedef struct
{
    uint32_t u32Year;            
    uint32_t u32Month;           
    uint32_t u32Day;             
    uint32_t u32DayOfWeek;       
    uint32_t u32Hour;            
    uint32_t u32Minute;          
    uint32_t u32Second;          
    uint32_t u32TimeScale;       
    uint32_t u32AmPm;            
} S_RTC_TIME_DATA_T;

   




 










 










 










 











 











 










 











 












 













 










 
static __inline void RTC_WaitAccessEnable(void)
{
     
    while((((RTC_T *) ((( uint32_t)0x40000000) + 0x08000))->AER & (1ul << 16)) == (1ul << 16));
    ((RTC_T *) ((( uint32_t)0x40000000) + 0x08000))->AER = 0x0000A965UL;

     
    while((((RTC_T *) ((( uint32_t)0x40000000) + 0x08000))->AER & (1ul << 16)) == 0x0);
}

void RTC_Open(S_RTC_TIME_DATA_T *sPt);
void RTC_Close(void);
void RTC_32KCalibration(int32_t i32FrequencyX100);
void RTC_GetDateAndTime(S_RTC_TIME_DATA_T *sPt);
void RTC_GetAlarmDateAndTime(S_RTC_TIME_DATA_T *sPt);
void RTC_SetDateAndTime(S_RTC_TIME_DATA_T *sPt);
void RTC_SetAlarmDateAndTime(S_RTC_TIME_DATA_T *sPt);
void RTC_SetDate(uint32_t u32Year, uint32_t u32Month, uint32_t u32Day, uint32_t u32DayOfWeek);
void RTC_SetTime(uint32_t u32Hour, uint32_t u32Minute, uint32_t u32Second, uint32_t u32TimeMode, uint32_t u32AmPm);
void RTC_SetAlarmDate(uint32_t u32Year, uint32_t u32Month, uint32_t u32Day);
void RTC_SetAlarmTime(uint32_t u32Hour, uint32_t u32Minute, uint32_t u32Second, uint32_t u32TimeMode, uint32_t u32AmPm);
uint32_t RTC_GetDayOfWeek(void);
void RTC_SetTickPeriod(uint32_t u32TickSelection);
void RTC_EnableInt(uint32_t u32IntFlagMask);
void RTC_DisableInt(uint32_t u32IntFlagMask);
void RTC_EnableSpareRegister(void);
void RTC_DisableSpareRegister(void);
void RTC_EnableSnooperDetection(uint32_t u32PinCondition);
void RTC_DisableSnooperDetection(void);

   

   

   







 
#line 11119 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\UART.h"
 









 












 



 



 
    
 
 
 




  
 
 
 

#line 53 "..\\..\\..\\..\\Library\\StdDriver\\inc\\UART.h"

#line 61 "..\\..\\..\\..\\Library\\StdDriver\\inc\\UART.h"

 
 
 
















 
 
 



 
 
 



 
 
 





 
 
 
#line 120 "..\\..\\..\\..\\Library\\StdDriver\\inc\\UART.h"

 
 
 




   




 











 











 












 










 












 












 











 











 











 












 











 












 












 




















 



















 



































 











 
static __inline void UART_CLEAR_RTS(UART_T* uart)
{
    (uart)->MCR |= (1ul << 9);
    (uart)->MCR &= ~(1ul << 1);
}









 
static __inline void UART_SET_RTS(UART_T* uart)
{
    (uart)->MCR |= (1ul << 9) | (1ul << 1);
}










 












 



void UART_ClearIntFlag(UART_T* uart , uint32_t u32InterruptFlag);
void UART_Close(UART_T* uart);
void UART_DisableFlowCtrl(UART_T* uart);
void UART_DisableInt(UART_T*  uart, uint32_t u32InterruptFlag);
void UART_EnableFlowCtrl(UART_T* uart);
void UART_EnableInt(UART_T*  uart, uint32_t u32InterruptFlag);
void UART_Open(UART_T* uart, uint32_t u32baudrate);
uint32_t UART_Read(UART_T* uart, uint8_t *pu8RxBuf, uint32_t u32ReadBytes);
void UART_SetLine_Config(UART_T* uart, uint32_t u32baudrate, uint32_t u32data_width, uint32_t u32parity, uint32_t  u32stop_bits);
void UART_SetTimeoutCnt(UART_T* uart, uint32_t u32TOC);
void UART_SelectIrDAMode(UART_T* uart, uint32_t u32Buadrate, uint32_t u32Direction);
void UART_SelectRS485Mode(UART_T* uart, uint32_t u32Mode, uint32_t u32Addr);
void UART_SelectLINMode(UART_T* uart, uint32_t u32Mode, uint32_t u32BreakLength);
uint32_t UART_Write(UART_T* uart, uint8_t *pu8TxBuf, uint32_t u32WriteBytes);


   

   

   







 

#line 11120 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\I2S.h"
 








 











 



 



 





 



 



 



 
#line 57 "..\\..\\..\\..\\Library\\StdDriver\\inc\\I2S.h"

#line 66 "..\\..\\..\\..\\Library\\StdDriver\\inc\\I2S.h"

 



 



   



 
 
 
 








 
static __inline void I2S_ENABLE_TX_ZCD(I2S_T *i2s, uint32_t u32ChMask)
{
    if(u32ChMask == 0)
        i2s->CON |= (1ul << 16);
    else
        i2s->CON |= (1ul << 17);
}









 
static __inline void I2S_DISABLE_TX_ZCD(I2S_T *i2s, uint32_t u32ChMask)
{
    if(u32ChMask == 0)
        i2s->CON &= ~(1ul << 16);
    else
        i2s->CON &= ~(1ul << 17);
}






 







 







 







 







 







 







 







 







 







 







 







 










 
static __inline void I2S_SET_MONO_RX_CHANNEL(I2S_T *i2s, uint32_t u32Ch)
{
    u32Ch == (1ul << 23) ?
    (i2s->CON |= (1ul << 23)) :
    (i2s->CON &= ~(1ul << 23));
}







 







 








 








 







 







 



 
uint32_t I2S_Open(I2S_T *i2s, uint32_t u32MasterSlave, uint32_t u32SampleRate, uint32_t u32WordWidth, uint32_t u32Channels, uint32_t u32DataFormat);
void I2S_Close(I2S_T *i2s);
void I2S_EnableInt(I2S_T *i2s, uint32_t u32Mask);
void I2S_DisableInt(I2S_T *i2s, uint32_t u32Mask);
uint32_t I2S_EnableMCLK(I2S_T *i2s, uint32_t u32BusClock);
void I2S_DisableMCLK(I2S_T *i2s);

   


   

   



 

#line 11121 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\USBD.h"
 









 







 



 



 


typedef struct s_usbd_info
{
    const uint8_t *gu8DevDesc;             
    const uint8_t *gu8ConfigDesc;          
    const uint8_t **gu8StringDesc;         
    const uint8_t *gu8HidReportDesc;       

} S_USBD_INFO_T;

extern const S_USBD_INFO_T gsInfo;

   





 







#line 61 "..\\..\\..\\..\\Library\\StdDriver\\inc\\USBD.h"


 




 
#line 80 "..\\..\\..\\..\\Library\\StdDriver\\inc\\USBD.h"

 
#line 89 "..\\..\\..\\..\\Library\\StdDriver\\inc\\USBD.h"

 



 
#line 101 "..\\..\\..\\..\\Library\\StdDriver\\inc\\USBD.h"

 







 



 
 
 














#line 142 "..\\..\\..\\..\\Library\\StdDriver\\inc\\USBD.h"




























   





 










 












 












 











 











 











 











 











 











 











 














 











 














 











 















 












 











 












 












 













 











 













 













 











 










 










 












 















 
static __inline void USBD_MemCopy(uint8_t *dest, uint8_t *src, int32_t size)
{
    while(size--) *dest++ = *src++;
}











 
static __inline void USBD_SetStall(uint8_t epnum)
{
    uint32_t u32CfgAddr;
    uint32_t u32Cfg;
    int i;

    for(i = 0; i < 6; i++)
    {
        u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[0].CFG;  
        u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

        if((u32Cfg & 0xf) == epnum)
        {
            u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[0].CFGP;  
            u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

            *((volatile uint32_t *)(u32CfgAddr)) = (u32Cfg | (1ul << 1));
            break;
        }
    }
}









 
static __inline void USBD_ClearStall(uint8_t epnum)
{
    uint32_t u32CfgAddr;
    uint32_t u32Cfg;
    int i;

    for(i = 0; i < 6; i++)
    {
        u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[0].CFG;  
        u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

        if((u32Cfg & 0xf) == epnum)
        {
            u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[0].CFGP;  
            u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

            *((volatile uint32_t *)(u32CfgAddr)) = (u32Cfg & ~(1ul << 1));
            break;
        }
    }
}











 
static __inline uint32_t USBD_GetStall(uint8_t epnum)
{
    uint32_t u32CfgAddr;
    uint32_t u32Cfg;
    int i;

    for(i = 0; i < 6; i++)
    {
        u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[0].CFG;  
        u32Cfg = *((volatile uint32_t *)(u32CfgAddr));

        if((u32Cfg & 0xf) == epnum)
        {
            u32CfgAddr = (uint32_t)(i << 4) + (uint32_t)&((USBD_T *) ((( uint32_t)0x40000000) + 0x60000))->EP[0].CFGP;  
            break;
        }
    }

    return ((*((volatile uint32_t *)(u32CfgAddr))) & (1ul << 1));
}


extern volatile uint8_t g_usbd_RemoteWakeupEn;
typedef void (*VENDOR_REQ)(void);            
typedef void (*CLASS_REQ)(void);             
typedef void (*SET_INTERFACE_REQ)(void);     
typedef void (*SET_CONFIG_CB)(void);        

 
void USBD_Open(const S_USBD_INFO_T *param, CLASS_REQ pfnClassReq, SET_INTERFACE_REQ pfnSetInterface);
void USBD_Start(void);
void USBD_GetSetupPacket(uint8_t *buf);
void USBD_ProcessSetupPacket(void);
void USBD_StandardRequest(void);
void USBD_PrepareCtrlIn(uint8_t *pu8Buf, uint32_t u32Size);
void USBD_CtrlIn(void);
void USBD_PrepareCtrlOut(uint8_t *pu8Buf, uint32_t u32Size);
void USBD_CtrlOut(void);
void USBD_SwReset(void);
void USBD_SetVendorRequest(VENDOR_REQ pfnVendorReq);
void USBD_SetConfigCallback(SET_CONFIG_CB pfnSetConfigCallback);
void USBD_LockEpStall(uint32_t u32EpBitmap);

   

   

   




 
#line 11122 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PDMA.h"
 









 







 



 



 

 
 
 




 
 
 





 
 
 
#line 63 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PDMA.h"


   



 









 










 











 











 











 











 












 
#line 160 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PDMA.h"









 


void PDMA_Open(uint32_t u32Mask);
void PDMA_Close(void);
void PDMA_SetTransferCnt(uint32_t u32Ch, uint32_t u32Width, uint32_t u32TransCount);
void PDMA_SetTransferAddr(uint32_t u32Ch, uint32_t u32SrcAddr, uint32_t u32SrcCtrl, uint32_t u32DstAddr, uint32_t u32DstCtrl);
void PDMA_SetTransferMode(uint32_t u32Ch, uint32_t u32Periphral, uint32_t u32ScatterEn, uint32_t u32DescAddr);
void PDMA_Trigger(uint32_t u32Ch);
void PDMA_EnableInt(uint32_t u32Ch, uint32_t u32Mask);
void PDMA_DisableInt(uint32_t u32Ch, uint32_t u32Mask);




 



 



 



#line 11123 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SC.h"
 








 











 



 



 
#line 37 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SC.h"

#line 48 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SC.h"


   




 





















 






















 











 
#line 121 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SC.h"











 
#line 141 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SC.h"










 
#line 160 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SC.h"










 
#line 179 "..\\..\\..\\..\\Library\\StdDriver\\inc\\SC.h"







 









 









 








 
static __inline void SC_SetTxRetry(SC_T *sc, uint32_t u32Count)
{
    while((sc)->CTL & (1ul << 30));
    if((u32Count) == 0)         
    {
        (sc)->CTL &= ~((7ul << 20) | (1ul << 23));
    }
    else
    {
        (sc)->CTL = ((sc)->CTL & ~(7ul << 20)) | (((u32Count) - 1) << 20) | (1ul << 23);
    }
}







 
static __inline void  SC_SetRxRetry(SC_T *sc, uint32_t u32Count)
{
    while((sc)->CTL & (1ul << 30));
    if((u32Count) == 0)         
    {
        (sc)->CTL &= ~((7ul << 16) | (1ul << 19));
    }
    else
    {
        (sc)->CTL = ((sc)->CTL & ~(7ul << 16)) | (((u32Count) - 1) << 16) | (1ul << 19);
    }
}


uint32_t SC_IsCardInserted(SC_T *sc);
void SC_ClearFIFO(SC_T *sc);
void SC_Close(SC_T *sc);
void SC_Open(SC_T *sc, uint32_t u32CardDet, uint32_t u32PWR);
void SC_ResetReader(SC_T *sc);
void SC_SetBlockGuardTime(SC_T *sc, uint32_t u32BGT);
void SC_SetCharGuardTime(SC_T *sc, uint32_t u32CGT);
void SC_StopAllTimer(SC_T *sc);
void SC_StartTimer(SC_T *sc, uint32_t u32TimerNum, uint32_t u32Mode, uint32_t u32ETUCount);
void SC_StopTimer(SC_T *sc, uint32_t u32TimerNum);


   

   

   







 
#line 11124 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\PS2.h"
 








 











 



 




 

 
 
 










 











 











 












 
static __inline void PS2_CLEAR_TX_FIFO(void)
{
    ((PS2_T *) ((( uint32_t)0x40100000) + 0x00000))->PS2CON |= (1ul << 8);
    ((PS2_T *) ((( uint32_t)0x40100000) + 0x00000))->PS2CON &= ~(1ul << 8);
}









 










 











 










 










 










 










 










 










 










 










 










 



 
 
 

void PS2_Open(void);
void PS2_Close(void);
uint8_t PS2_Read(void);
int32_t PS2_Write(uint32_t *pu32Buf, uint32_t u32ByteCount);
void PS2_EnableInt(uint32_t u32Mask);
void PS2_DisableInt(uint32_t u32Mask);


   

   

   







 

#line 11125 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"
 









 










 



 



 







 
 
 






#line 53 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"


 
 
 









#line 75 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

#line 100 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"





#line 115 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

#line 126 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

 
 
 










#line 160 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

#line 171 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

#line 182 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

#line 193 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

#line 204 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"








 
 
 
#line 227 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"


 
 
 






 
 
 





 
 
 










#line 269 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"








 
 
 

 

#line 293 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

#line 302 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"


#line 400 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"


#line 422 "..\\..\\..\\..\\Library\\StdDriver\\inc\\CLK.h"

   




 







 
static __inline uint32_t CLK_GetPLLClockFreq(void)
{
    uint32_t u32PllFreq = 0, u32PllReg;
    uint32_t u32FIN, u32NF, u32NR, u32NO;
    uint8_t au8NoTbl[4] = {1, 2, 2, 4};

    u32PllReg = ((CLK_T *) ((( uint32_t)0x50000000) + 0x00200))->PLLCON;

    if(u32PllReg & ((1ul << 16) | (1ul << 18)))
        return 0;            

    if(u32PllReg & 0x00080000UL)
        u32FIN = (22118400UL);     
    else
        u32FIN = (12000000UL);      

    if(u32PllReg & (1ul << 17))
        return u32FIN;       

     
    u32NO = au8NoTbl[((u32PllReg & (3ul << 14)) >> 14)];
    u32NF = ((u32PllReg & (0x1FFul << 0)) >> 0) + 2;
    u32NR = ((u32PllReg & (0x1Ful << 9)) >> 9) + 2;

     
    u32PllFreq = (((u32FIN >> 2) * u32NF) / (u32NR * u32NO) << 2);

    return u32PllFreq;
}









 
static __inline void CLK_SysTickDelay(uint32_t us)
{
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = us * CyclesPerUs;
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL  = (0x00);
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2) | (1UL << 0);

     
    while((((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL & (1UL << 16)) == 0);
    
     
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = 0;    
}








 

static __inline void CLK_SysTickLongDelay(uint32_t us)
{
    uint32_t delay;
        
     
    delay = 335544UL;

    do
    {
        if(us > delay)
        {
            us -= delay;
        }
        else
        {
            delay = us;
            us = 0UL;
        }        
        
        ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = delay * CyclesPerUs;
        ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL  = (0x0UL);
        ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2) | (1UL << 0);

         
        while((((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL & (1UL << 16)) == 0UL);

         
        ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = 0UL;
    
    }while(us > 0UL);
    
}


void CLK_DisableCKO(void);
void CLK_EnableCKO(uint32_t u32ClkSrc, uint32_t u32ClkDiv, uint32_t u32ClkDivBy1En);
void CLK_PowerDown(void);
void CLK_Idle(void);
uint32_t CLK_GetHXTFreq(void);
uint32_t CLK_GetLXTFreq(void);
uint32_t CLK_GetHCLKFreq(void);
uint32_t CLK_GetPCLKFreq(void);
uint32_t CLK_GetCPUFreq(void);
uint32_t CLK_SetCoreClock(uint32_t u32Hclk);
void CLK_SetHCLK(uint32_t u32ClkSrc, uint32_t u32ClkDiv);
void CLK_SetModuleClock(uint32_t u32ModuleIdx, uint32_t u32ClkSrc, uint32_t u32ClkDiv);
void CLK_SetSysTickClockSrc(uint32_t u32ClkSrc);
void CLK_EnableXtalRC(uint32_t u32ClkMask);
void CLK_DisableXtalRC(uint32_t u32ClkMask);
void CLK_EnableModuleClock(uint32_t u32ModuleIdx);
void CLK_DisableModuleClock(uint32_t u32ModuleIdx);
uint32_t CLK_EnablePLL(uint32_t u32PllClkSrc, uint32_t u32PllFreq);
void CLK_DisablePLL(void);
uint32_t CLK_WaitClockReady(uint32_t u32ClkMask);
void CLK_EnableSysTick(uint32_t u32ClkSrc, uint32_t u32Count);
void CLK_DisableSysTick(void);


   

   

   







 
#line 11126 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"
#line 1 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ACMP.h"
 








 











 



 



 

 
 
 
#line 43 "..\\..\\..\\..\\Library\\StdDriver\\inc\\ACMP.h"

   




 










 








 








 








 








 









 








 








 








 








 



 
void ACMP_Open(ACMP_T *, uint32_t u32ChNum, uint32_t u32NegSrc, uint32_t u32HysteresisEn);
void ACMP_Close(ACMP_T *, uint32_t u32ChNum);

   

   

   







 
#line 11127 "..\\..\\..\\..\\Library\\Device\\Nuvoton\\NUC100Series\\Include\\NUC100Series.h"






#line 13 "..\\main.c"
#line 1 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\MCU_init.h"







#line 14 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\MCU_init.h"







#line 14 "..\\main.c"
#line 1 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\SYS_init.h"






#line 39 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\SYS_init.h"


#line 48 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\SYS_init.h"








#line 69 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\SYS_init.h"


#line 77 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\SYS_init.h"


#line 88 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\SYS_init.h"















































#line 141 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\SYS_init.h"



















































#line 198 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\SYS_init.h"

#line 207 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\SYS_init.h"















































































































































































































































extern void SYS_Init(void);

#line 15 "..\\main.c"
#line 1 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\LCD.h"
 





extern void init_LCD(void);

extern void clear_LCD(void);

extern void printC(int16_t x, int16_t y, unsigned char ascii_code);

extern void printC_5x7(int16_t x, int16_t y, unsigned char ascii_code);

extern void print_Line(int8_t line, char text[]);

extern void printS(int16_t x, int16_t y, char text[]);

extern void printS_5x7(int16_t x, int16_t y, char text[]);

extern void draw_Bmp8x8(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);
extern void draw_Bmp32x8(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);
extern void draw_Bmp120x8(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);
extern void draw_Bmp8x16(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);
extern void draw_Bmp16x8(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);
extern void draw_Bmp16x16(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);
extern void draw_Bmp16x24(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);
extern void draw_Bmp16x32(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);
extern void draw_Bmp16x40(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);
extern void draw_Bmp16x48(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);
extern void draw_Bmp16x64(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);
extern void draw_Bmp32x16(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);
extern void draw_Bmp32x32(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);
extern void draw_Bmp32x48(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);
extern void draw_Bmp32x64(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);
extern void draw_Bmp64x64(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor, unsigned char bitmap[]);

extern void draw_Pixel(int16_t x, int16_t y, uint16_t fgColor, uint16_t bgColor);

extern void draw_LCD(unsigned char *buffer);


#line 16 "..\\main.c"
#line 1 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\Seven_Segment.h"



extern void OpenSevenSegment(void);
extern void ShowSevenSegment(uint8_t no, uint8_t number);
extern void CloseSevenSegment(void);
#line 17 "..\\main.c"
#line 1 "..\\..\\..\\..\\Library\\Nu-LB-NUC140\\Include\\Scankey.h"



void OpenKeyPad(void);
void CloseKeyPad(void);
uint8_t ScanKey(void);



#line 18 "..\\main.c"

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
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((4)<<2)))) = 1;
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((5)<<2)))) = 0;
	switch(led4){
		
		case 0:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 1;
			
		break;
		case 1:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 1;
			
		break;
		case 2:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 3:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 4:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 5:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 6:
		  (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 7:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 1;
			
		break;
		case 8:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 9:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
		
		break;
	}
	CLK_SysTickDelay(5000);
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((4)<<2)))) = 0;
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((5)<<2)))) = 1;
	switch(led5){
		
		case 0:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 1;
			
		break;
		case 1:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 1;
			
		break;
		case 2:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 3:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 4:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 5:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 6:
		  (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 7:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 1;
			
		break;
		case 8:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 9:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
	}
	CLK_SysTickDelay(5000);

	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((5)<<2)))) = 0;
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((6)<<2)))) = 1;
	
	switch(led6){
		
		case 0:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 1;
			
		break;
		case 1:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 1;
			
		break;
		case 2:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 3:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 4:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 5:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 6:
		  (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 7:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 1;
			
		break;
		case 8:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 9:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
	}
	CLK_SysTickDelay(5000);
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((6)<<2)))) = 0;
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((7)<<2)))) = 1;
	switch(led7){
		
		case 0:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 1;
			
		break;
		case 1:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 1;
			
		break;
		case 2:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 3:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 4:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 5:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 6:
		  (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 7:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 1;
			
		break;
		case 8:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 9:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
	}

	CLK_SysTickDelay(5000);
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((6)<<2)))) = 0;
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((7)<<2)))) = 0;
}

void UART02_IRQHandler(void)
{
	uint8_t c, i;
	uint32_t u32IntSts = ((UART_T *) ((( uint32_t)0x40000000) + 0x50000))->ISR;
	
	if(u32IntSts & (((((UART_T *) ((( uint32_t)0x40000000) + 0x50000)))->ISR & (1ul << 0))>>0)) 
  {
		while (!(((UART_T *) ((( uint32_t)0x40000000) + 0x50000))->FSR & (1ul << 14)))
		{ 
			c = ((((UART_T *) ((( uint32_t)0x40000000) + 0x50000)))->RBR); 
			if (c!='z')
			{        
				comRbuf[comRbytes] = c;
				comRbytes++;
			}
			else
			{
				
				for (i=0; i<comRbytes; i++){
					cmd[i]=comRbuf[i]; 
				}
				for (i=comRbytes; i<32; i++){
					comRbuf[i] = ' '; 
				}
				cmd[comRbytes] = '\0';
				comRbytes=0;
				RX_Flag=1;	                 
				
				break;
			}
		}
	}
	
}

void Init_UART0(void)
{ 
  UART_Open(((UART_T *) ((( uint32_t)0x40000000) + 0x50000)), 9600);                     
  ((((UART_T *) ((( uint32_t)0x40000000) + 0x50000)))->IER |= ((1ul << 0))); 
  NVIC_EnableIRQ(UART02_IRQn);		              
}





















 
void lab2(void);
void oxgame(void);
void oxgameV2(void);
void countDownTimer(void);
 
void Buzz()
{  
  (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((11)<<2)))) =0; 
  CLK_SysTickDelay(40000);  
  (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((11)<<2)))) =1; 
  CLK_SysTickDelay(40000);  
}
void countDownTimer_Buzz(void)
{
    (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((11)<<2)))) =0; 
    CLK_SysTickDelay(500000);  
    (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((11)<<2)))) =1; 
    CLK_SysTickDelay(500000);  
}
 
void Null_Cmd(void)
{
	int i=0;
  for( i=0; i<32; i++){
		
		cmd[i]=' ';
	}
}

 
void Null_mkdirFolder(void)
{
	int i;
  for( i=0; i<32; ){
		
		mkdirFolder[i]=' ';
		i++;
	}
}
 
void Null_cdFolder(void)
{
	int i;
  for( i=0; i<32; ){
		
		cdFolder[i]=' ';
		i++;
	}
}
 
void Null_playFolder(void)
{
	int i;
  for( i=0; i<32; ){
		
		playFolder[i]=' ';
		i++;
	}
}
 
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
	
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((11)<<2)))) = 0;
	CLK_SysTickDelay(100000);
	while(1){
			key = ScanKey();
		  qq=key;
			if(qq!=0){
				(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((11)<<2)))) = 1;
				break;
			}
		}
	CLK_SysTickDelay(100000);
}
 
 
void cal(int v){
	
	switch(v){
		
		case 0:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 1;
			
		break;
		case 1:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 1;
			
		break;
		case 2:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 3:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 4:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 5:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 6:
		  (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 7:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 1;
			
		break;
		case 8:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
			
		break;
		case 9:
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((0)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((1)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((2)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((3)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((4)<<2)))) = 0;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((5)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((6)<<2)))) = 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(4))) + ((7)<<2)))) = 0;
		
		break;
		
	}
	
}
void countDownTimer_Show(uint16_t x)
{
  int led4,led5,led6,led7;
	led4 = x%10;
	led5 = (x/10);
	  (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((4)<<2))))=1;
    (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((5)<<2))))=0;
		cal(led4);
		CLK_SysTickDelay(5000);
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((4)<<2)))) = 0;
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((5)<<2)))) = 1;
		cal(led5);
		CLK_SysTickDelay(5000);
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((4)<<2)))) = 0;
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((5)<<2)))) = 0;
	  
}
 

 












 







 
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

	SYS_Init();   
  init_LCD();   
  clear_LCD();  
	OpenSevenSegment();
	OpenKeyPad();
	
	GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000800, 0x1UL);
	GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0080)), 0x00002000, 0x1UL); 

  root = malloc(sizeof(Folder));
	strcpy(root->name,"root");
	root->subNum = 0; 
	
	
	root->subFolder[root->subNum] = malloc(sizeof(Folder));
	strcpy(root->subFolder[root->subNum]->name, "user1");
	root->subFolder[root->subNum]->subNum = 0;
	root->subNum += 1;
	
	user1 = root->subFolder[0];
	
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
	
	
	Init_UART0(); 
	
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(3))) + ((14)<<2)))) = 0;
  
  while(1)
	{
			
		
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
				  	if(!(strcmp(cdFolder , nowFolder->subFolder[index]->name))) 
				  	{
							nowFolder->subFolder[index]->previousFolder = nowFolder; 
				  		nowFolder = nowFolder->subFolder[index]; 
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
				  
			    while(cmd[mkdir_cmd_index] != ' ')
				  {
				  	 mkdirFolder[index] = cmd[mkdir_cmd_index];
				     index++;
				     mkdir_cmd_index++;
			    }
			  	nowFolder->subFolder[nowFolder->subNum] = malloc(sizeof(Folder));
				  strcpy(nowFolder->subFolder[nowFolder->subNum]->name,mkdirFolder); 
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
			














 
			if(cmd[0] == 'c'
			  &&cmd[1] == 'l'
		    &&cmd[2] == 'e'
		    &&cmd[3] == 'a'
		    &&cmd[4] == 'n'){
					
					(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((4)<<2)))) = 0;
					(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((5)<<2)))) = 0;
					(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((6)<<2)))) = 0;
					(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((7)<<2)))) = 0;
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
					
					(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((14)<<2)))) = 0;
					CLK_SysTickDelay(100000);
			}
		   
	  		
		  	Null_Cmd();
			  init_LCD();
			  clear_LCD();
		    
	  		RX_Flag=0;
  			CLK_SysTickDelay(1000000);
    }
		 
		index = 0;
		keyin = ScanKey();
		
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
	  (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(3))) + ((14)<<2)))) =1;
		




 
	
	 
	  while(1)
		{
			  for(k=0;k<10;k++)
		    {
			    ShowSevenSegment(0,k);
			    
					switch(k)
					{
						case 0:
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((12)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((13)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((14)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((15)<<2))))=1;
						  CLK_SysTickDelay(1000000);
						break;
						case 1:
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((12)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((13)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((14)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((15)<<2))))=0;
						  CLK_SysTickDelay(1000000);
						break;
						case 2:
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((12)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((13)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((14)<<2))))=0;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((15)<<2))))=1;
						  CLK_SysTickDelay(1000000);
						break;
						case 3:
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((12)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((13)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((14)<<2))))=0;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((15)<<2))))=0;
						  CLK_SysTickDelay(1000000);
						break;
						case 4:
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((12)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((13)<<2))))=0;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((14)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((15)<<2))))=1;
						  CLK_SysTickDelay(1000000);
						break;
						case 5:
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((12)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((13)<<2))))=0;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((14)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((15)<<2))))=0;
						  CLK_SysTickDelay(1000000);
						break;
						case 6:
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((12)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((13)<<2))))=0;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((14)<<2))))=0;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((15)<<2))))=1;
						  CLK_SysTickDelay(1000000);
						break;
						case 7:
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((12)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((13)<<2))))=0;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((14)<<2))))=0;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((15)<<2))))=0;
						  CLK_SysTickDelay(1000000);
						break;
						case 8:
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((12)<<2))))=0;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((13)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((14)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((15)<<2))))=1;
						  CLK_SysTickDelay(1000000);
						break;
						case 9:
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((12)<<2))))=0;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((13)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((14)<<2))))=1;
							(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((15)<<2))))=0;
						  CLK_SysTickDelay(1000000);
						break;
					}
		    }
		    CloseSevenSegment();
				if(cmd[0] == 'e'
	  		&&cmd[1] == 'n'
		    &&cmd[2] == 'd'){
					
					(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(3))) + ((14)<<2)))) = 0;
					(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((12)<<2)))) = 1;
					(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((13)<<2)))) = 1;
					(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((14)<<2)))) = 1;
					(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((15)<<2)))) = 1;
					Null_Cmd();
					break;
				}
		}	
			
	  
		

















 
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
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(3))) + ((14)<<2)))) = 0;
	
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
			  draw_Bmp16x16(0,0,0xFFFF,0x0000,o16);
				ocal[0]=1;
				Buzz();
			}
			else {
				draw_Bmp16x16(0,0,0xFFFF,0x0000,x16);
				xcal[0]=1;
				Buzz();
			}
			
		break;
		case 2:
			if(s%2==1){
			  draw_Bmp16x16(16,0,0xFFFF,0x0000,o16);
				ocal[1]=1;
				Buzz();
			}
			else {
				draw_Bmp16x16(16,0,0xFFFF,0x0000,x16);
				xcal[1]=1;
				Buzz();
			}
			
		break;
		case 3:
			if(s%2==1){
			  draw_Bmp16x16(32,0,0xFFFF,0x0000,o16);
			  ocal[2]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(32,0,0xFFFF,0x0000,x16);
				xcal[2]=1;
				Buzz();
			}
			
		break;
		case 4:
			if(s%2==1){
			  draw_Bmp16x16(0,16,0xFFFF,0x0000,o16);
			  ocal[3]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(0,16,0xFFFF,0x0000,x16);
			  xcal[3]=1;
				Buzz();
			}
		break;
		case 5:
			if(s%2==1){
			  draw_Bmp16x16(16,16,0xFFFF,0x0000,o16);
			  ocal[4]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(16,16,0xFFFF,0x0000,x16);
				xcal[4]=1;
				Buzz();
			}
			
		break;
		case 6:
			if(s%2==1){
			  draw_Bmp16x16(32,16,0xFFFF,0x0000,o16);
				ocal[5]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(32,16,0xFFFF,0x0000,x16);
				xcal[5]=1;
				Buzz();
			}
			
		break;
		case 7:
			if(s%2==1){
			  draw_Bmp16x16(0,32,0xFFFF,0x0000,o16);
			  ocal[6]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(0,32,0xFFFF,0x0000,x16);
			  xcal[6]=1;
				Buzz();
			}
		break;
		case 8:
			if(s%2==1){
			  draw_Bmp16x16(16,32,0xFFFF,0x0000,o16);
				ocal[7]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(16,32,0xFFFF,0x0000,x16);
				xcal[7]=1;
				Buzz();
			}
			
		break;
		case 9:
			if(s%2==1){
			  draw_Bmp16x16(32,32,0xFFFF,0x0000,o16);
				ocal[8]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(32,32,0xFFFF,0x0000,x16);
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
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((0)<<2))))=1;
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((1)<<2))))=1;
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((2)<<2))))=1;
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((3)<<2))))=1;
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((4)<<2))))=1;
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((5)<<2))))=1;
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((6)<<2))))=1;
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((7)<<2))))=1;
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((8)<<2))))=1;

	GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000001, 0x3UL);
  GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000002, 0x3UL);
	GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000004, 0x3UL);
  GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000008, 0x3UL);
	GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000010, 0x3UL);
  GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000020, 0x3UL);
	GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000040, 0x3UL);
	GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000080, 0x3UL);
	GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000100, 0x3UL);
	
	SYS_Init();	  
	init_LCD();
	clear_LCD();	
	OpenKeyPad();	
	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(3))) + ((14)<<2)))) = 0;
	
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
			 
		  if(keyin == 1){
		  	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((0)<<2)))) = 0;
		  }
		  else if(keyin == 2){
		  	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((1)<<2)))) = 0;
	  	}
		  else if(keyin == 3){
		  	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((2)<<2)))) = 0;
		  }
		  else if(keyin == 4){
		  	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((3)<<2)))) = 0;
		  }
		  else if(keyin == 5){
		  	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((4)<<2)))) = 0;
		  }
		  else if(keyin == 6){
		  	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((5)<<2)))) = 0;
		  }
		  else if(keyin == 7){
		  	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((6)<<2)))) = 0;
	  	}
		  else if(keyin == 8){
		  	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((7)<<2)))) = 0;
		  }
	  	else if(keyin == 9){
	   	  (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((8)<<2)))) = 0;
	  	}
		
		  CLK_SysTickDelay(100000);
		   
	    if((*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((0)<<2)))) == 0){
	    	keyin=1;
	    }
	    else if((*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((1)<<2)))) == 0){
	    	keyin=2;
	    }
	    else if((*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((2)<<2)))) == 0){
	    	keyin=3;
    	}
	    else if((*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((3)<<2)))) == 0){
	    	keyin=4;
	    }
	    else if((*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((4)<<2)))) == 0){
	    	keyin=5;
	    }
	    else if((*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((5)<<2)))) == 0){
	    	keyin=6;
	    }
	    else if((*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((6)<<2)))) == 0){
	    	keyin=7;
	    }
	    else if((*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((7)<<2)))) == 0){
	    	keyin=8;
	    }
	    else if((*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((8)<<2)))) == 0){
	    	keyin=9;
	    }
			
			if(keyin!=0) {
				break; 
			}
		}
		CLK_SysTickDelay(100000);
		
		
 
		
		
		 
		switch(keyin){
		case 1:
			if(ocal[0] == 1 || xcal[0] == 1){
				s--;
				break;
			}
			if(s%2==1){
			  draw_Bmp16x16(0,0,0xFFFF,0x0000,o16);
				ocal[0]=1;
				Buzz();
			}
			else {
				draw_Bmp16x16(0,0,0xFFFF,0x0000,x16);
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
			  draw_Bmp16x16(16,0,0xFFFF,0x0000,o16);
				ocal[1]=1;
				Buzz();
			}
			else {
				draw_Bmp16x16(16,0,0xFFFF,0x0000,x16);
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
			  draw_Bmp16x16(32,0,0xFFFF,0x0000,o16);
			  ocal[2]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(32,0,0xFFFF,0x0000,x16);
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
			  draw_Bmp16x16(0,16,0xFFFF,0x0000,o16);
			  ocal[3]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(0,16,0xFFFF,0x0000,x16);
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
			  draw_Bmp16x16(16,16,0xFFFF,0x0000,o16);
			  ocal[4]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(16,16,0xFFFF,0x0000,x16);
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
			  draw_Bmp16x16(32,16,0xFFFF,0x0000,o16);
				ocal[5]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(32,16,0xFFFF,0x0000,x16);
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
			  draw_Bmp16x16(0,32,0xFFFF,0x0000,o16);
			  ocal[6]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(0,32,0xFFFF,0x0000,x16);
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
			  draw_Bmp16x16(16,32,0xFFFF,0x0000,o16);
				ocal[7]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(16,32,0xFFFF,0x0000,x16);
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
			  draw_Bmp16x16(32,32,0xFFFF,0x0000,o16);
				ocal[8]=1;
				Buzz();
			}
			else{
				draw_Bmp16x16(32,32,0xFFFF,0x0000,x16);
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
			
	    CLK_SysTickDelay(50000);
			clear_LCD();
			s=0;
			for(j=0;j<9;j++){
				ocal[j] = 0;
				xcal[j] = 0;
			}
				
		}
		
		s++;
		
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((0)<<2))))=1;
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((1)<<2))))=1;
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((2)<<2))))=1;
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((3)<<2))))=1;
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((4)<<2))))=1;
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((5)<<2))))=1;
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((6)<<2))))=1;
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((7)<<2))))=1;
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((8)<<2))))=1;
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
	  (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(3))) + ((14)<<2)))) =1;
    OpenSevenSegment();
	  OpenKeyPad();
		GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000800, 0x1UL);
	
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
				(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((4)<<2)))) = 1;
				cal(num);
				countDownTimer_Buzz();
				
			}
			if(num==0){
				(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((11)<<2))))=0;
				break;
			}
		}
		while(1){
			i=ScanKey();
			if(i!=0){
				(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(1))) + ((11)<<2)))) = 1;
				CLK_SysTickDelay(100000);
				(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(2))) + ((4)<<2)))) = 0;
				(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x40*(3))) + ((14)<<2)))) =0;
				break;
			}
		}
}
