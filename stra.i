# 0 "stra.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "stra.c"



# 1 "str.h" 1
# 20 "str.h"
# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4

# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 21 "str.h" 2
# 39 "str.h"

# 39 "str.h"
size_t Str_getLength(const char *pcSrc);
# 61 "str.h"
char *Str_copy(char *pcDest, const char *pcSrc);
# 87 "str.h"
char *Str_concat(char *pcDest, const char *pcSrc);
# 99 "str.h"
/







int Str_compare(const char *pcS1, const char *pcS2);
# 129 "str.h"
char *Str_search(const char *pcHaystack, const char *pcNeedle);
# 5 "stra.c" 2
# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 392 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 393 "/usr/include/features.h" 2 3 4
# 490 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 551 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 552 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 553 "/usr/include/sys/cdefs.h" 2 3 4
# 491 "/usr/include/features.h" 2 3 4
# 514 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4




# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 6 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-lp64.h" 1 3 4
# 9 "/usr/include/gnu/stubs.h" 2 3 4
# 515 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 64 "/usr/include/assert.h" 3 4




# 67 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 6 "stra.c" 2


# 7 "stra.c"
size_t Str_getLength(const char *pcSrc)
{
    size_t n = 0;
    
# 10 "stra.c" 3 4
   ((
# 10 "stra.c"
   pcSrc != 
# 10 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 10 "stra.c"
   "pcSrc != NULL"
# 10 "stra.c" 3 4
   , "stra.c", 10, __extension__ __PRETTY_FUNCTION__))
# 10 "stra.c"
                        ;
    while (pcSrc[n] != '\0') n++;
    return n;
}

char *Str_copy(char *pcDest, const char *pcSrc)
{
    size_t i = 0;
    
# 18 "stra.c" 3 4
   ((
# 18 "stra.c"
   pcDest != 
# 18 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 18 "stra.c"
   "pcDest != NULL"
# 18 "stra.c" 3 4
   , "stra.c", 18, __extension__ __PRETTY_FUNCTION__))
# 18 "stra.c"
                         ;
    
# 19 "stra.c" 3 4
   ((
# 19 "stra.c"
   pcSrc != 
# 19 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 19 "stra.c"
   "pcSrc != NULL"
# 19 "stra.c" 3 4
   , "stra.c", 19, __extension__ __PRETTY_FUNCTION__))
# 19 "stra.c"
                         ;
    do {
        pcDest[i] = pcSrc[i];
    } while (pcSrc[i++] != '\0');
    return pcDest;
}

char *Str_concat(char *pcDest, const char *pcSrc)
{
    size_t i = 0, j = 0;
    
# 29 "stra.c" 3 4
   ((
# 29 "stra.c"
   pcDest != 
# 29 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 29 "stra.c"
   "pcDest != NULL"
# 29 "stra.c" 3 4
   , "stra.c", 29, __extension__ __PRETTY_FUNCTION__))
# 29 "stra.c"
                         ;
    
# 30 "stra.c" 3 4
   ((
# 30 "stra.c"
   pcSrc != 
# 30 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 30 "stra.c"
   "pcSrc != NULL"
# 30 "stra.c" 3 4
   , "stra.c", 30, __extension__ __PRETTY_FUNCTION__))
# 30 "stra.c"
                         ;
    while (pcDest[i] != '\0') i++;
    do {
        pcDest[i + j] = pcSrc[j];
    } while (pcSrc[j++] != '\0');
    return pcDest;
}

int Str_compare(const char *pcS1, const char *pcS2)
{
    size_t i = 0;
    unsigned char c1, c2;
    
# 42 "stra.c" 3 4
   ((
# 42 "stra.c"
   pcS1 != 
# 42 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 42 "stra.c"
   "pcS1 != NULL"
# 42 "stra.c" 3 4
   , "stra.c", 42, __extension__ __PRETTY_FUNCTION__))
# 42 "stra.c"
                       ;
    
# 43 "stra.c" 3 4
   ((
# 43 "stra.c"
   pcS2 != 
# 43 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 43 "stra.c"
   "pcS2 != NULL"
# 43 "stra.c" 3 4
   , "stra.c", 43, __extension__ __PRETTY_FUNCTION__))
# 43 "stra.c"
                       ;

    for (;; i++) {
        c1 = (unsigned char)pcS1[i];
        c2 = (unsigned char)pcS2[i];
        if (c1 != c2) return (c1 < c2) ? -1 : 1;
        if (c1 == '\0') return 0;
    }
}

char *Str_search(const char *pcHaystack, const char *pcNeedle)
{
    size_t i, j;
    
# 56 "stra.c" 3 4
   ((
# 56 "stra.c"
   pcHaystack != 
# 56 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 56 "stra.c"
   "pcHaystack != NULL"
# 56 "stra.c" 3 4
   , "stra.c", 56, __extension__ __PRETTY_FUNCTION__))
# 56 "stra.c"
                             ;
    
# 57 "stra.c" 3 4
   ((
# 57 "stra.c"
   pcNeedle != 
# 57 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 57 "stra.c"
   "pcNeedle != NULL"
# 57 "stra.c" 3 4
   , "stra.c", 57, __extension__ __PRETTY_FUNCTION__))
# 57 "stra.c"
                            ;

    if (pcNeedle[0] == '\0') return (char *)pcHaystack;

    for (i = 0; pcHaystack[i] != '\0'; i++) {
        if (pcHaystack[i] == pcNeedle[0]) {
            for (j = 1; pcNeedle[j] != '\0' &&
                        pcHaystack[i + j] == pcNeedle[j]; j++) {

            }
            if (pcNeedle[j] == '\0') return (char *)&pcHaystack[i];
        }
    }
    return 
# 70 "stra.c" 3 4
          ((void *)0)
# 70 "stra.c"
              ;
}
