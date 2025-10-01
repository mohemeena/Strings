/*--------------------------------------------------------------------*/
/* strp.c — Pointer-notation implementation of Str functions          */
/*--------------------------------------------------------------------*/
#include "str.h"
#include <assert.h>

size_t Str_getLength(const char *pcSrc)
{
    const char *p;
    assert(pcSrc != NULL);
    for (p = pcSrc; *p != '\0'; ++p) { /* empty */ }
    return (size_t)(p - pcSrc);
}

char *Str_copy(char *pcDest, const char *pcSrc)
{
    char *out = pcDest;
    assert(pcDest != NULL);
    assert(pcSrc  != NULL);
    do {
        *pcDest++ = *pcSrc;
    } while (*pcSrc++ != '\0');
    return out;
}

char *Str_concat(char *pcDest, const char *pcSrc)
{
    char *out = pcDest;
    assert(pcDest != NULL);
    assert(pcSrc  != NULL);
    while (*pcDest != '\0') ++pcDest;         /* advance to '\0' */
    do {
        *pcDest++ = *pcSrc;
    } while (*pcSrc++ != '\0');
    return out;
}

int Str_compare(const char *pcS1, const char *pcS2)
{
    unsigned char c1, c2;
    assert(pcS1 != NULL);
    assert(pcS2 != NULL);
    for (;;) {
        c1 = (unsigned char)*pcS1++;
        c2 = (unsigned char)*pcS2++;
        if (c1 != c2) return (c1 < c2) ? -1 : 1;
        if (c1 == '\0') return 0;
    }
}

char *Str_search(const char *pcHaystack, const char *pcNeedle)
{
    const char *h, *n, *start;
    assert(pcHaystack != NULL);
    assert(pcNeedle  != NULL);

    if (*pcNeedle == '\0') return (char *)pcHaystack;

    for (start = pcHaystack; *start != '\0'; ++start) {
        if (*start == *pcNeedle) {
            h = start + 1;
            n = pcNeedle + 1;
            while (*n != '\0' && *h == *n) { ++h; ++n; }
            if (*n == '\0') return (char *)start;
        }
    }
    return NULL;
}
