/*--------------------------------------------------------------------*/
/* stra.c — Array-notation implementation of Str functions            */
/*--------------------------------------------------------------------*/
#include "str.h"
#include <assert.h>

size_t Str_getLength(const char *pcSrc)
{
    size_t n = 0;
    assert(pcSrc != NULL);
    while (pcSrc[n] != '\0') n++;
    return n;
}

char *Str_copy(char *pcDest, const char *pcSrc)
{
    size_t i = 0;
    assert(pcDest != NULL);
    assert(pcSrc  != NULL);
    do {
        pcDest[i] = pcSrc[i];
    } while (pcSrc[i++] != '\0');
    return pcDest;
}

char *Str_concat(char *pcDest, const char *pcSrc)
{
    size_t i = 0, j = 0;
    assert(pcDest != NULL);
    assert(pcSrc  != NULL);
    while (pcDest[i] != '\0') i++;           /* find end of dest */
    do {
        pcDest[i + j] = pcSrc[j];
    } while (pcSrc[j++] != '\0');
    return pcDest;
}

int Str_compare(const char *pcS1, const char *pcS2)
{
    size_t i = 0;
    unsigned char c1, c2;
    assert(pcS1 != NULL);
    assert(pcS2 != NULL);

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
    assert(pcHaystack != NULL);
    assert(pcNeedle  != NULL);

    if (pcNeedle[0] == '\0') return (char *)pcHaystack;

    for (i = 0; pcHaystack[i] != '\0'; i++) {
        if (pcHaystack[i] == pcNeedle[0]) {
            for (j = 1; pcNeedle[j] != '\0' &&
                        pcHaystack[i + j] == pcNeedle[j]; j++) {
                /* advance j */
            }
            if (pcNeedle[j] == '\0') return (char *)&pcHaystack[i];
        }
    }
    return NULL;
}
