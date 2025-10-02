/*--------------------------------------------------------------------*/
/* str.h — String utility interface (COS 217: Strings assignment)     */
/*                                                                    */
/* This module defines functions whose behavior matches the standard  */
/* C library functions shown in parentheses:                          */
/*   Str_getLength  (strlen)                                          */
/*   Str_copy       (strcpy)                                          */
/*   Str_concat     (strcat)                                          */
/*   Str_compare    (strcmp)                                          */
/*   Str_search     (strstr)                                          */
/*                                                                    */
/* Each function’s contract below mirrors the corresponding standard   */
/* function’s requirements and guarantees. Implementations must not    */
/* read or write beyond the bounds required by these contracts.       */
/*--------------------------------------------------------------------*/

#ifndef STR_H_INCLUDED
#define STR_H_INCLUDED

#include <stddef.h>  /* for size_t, NULL */

/*--------------------------------------------------------------------*/
/* size_t Str_getLength(const char *pcSrc)                             */
/*                                                                    */
/* Purpose:  Return the length of the C string pointed to by pcSrc,   */
/*           defined as the number of characters preceding the first   */
/*           terminating null byte ('\0').                             */
/*                                                                    */
/* Requires: pcSrc is not NULL and points to a valid, null-terminated */
/*           character sequence.                                       */
/*                                                                    */
/* Effects:  Reads the bytes of *pcSrc up to and including the first  */
/*           '\0'. Does not modify memory.                             */
/*                                                                    */
/* Returns:  The number of non-null characters in *pcSrc.             */
/*                                                                    */
/* Notes:    Identical in behavior to strlen.                          */
/*--------------------------------------------------------------------*/
size_t Str_getLength(const char *pcSrc);

/*--------------------------------------------------------------------*/
/* char *Str_copy(char *pcDest, const char *pcSrc)                     */
/*                                                                    */
/* Purpose:  Copy the C string pointed to by pcSrc (including the     */
/*           terminating '\0') into the array pointed to by pcDest.    */
/*                                                                    */
/* Requires:                                                           */
/*   - pcDest and pcSrc are not NULL.                                  */
/*   - pcSrc points to a valid, null-terminated string.                */
/*   - pcDest points to an array large enough to receive a copy of     */
/*     pcSrc including its terminating '\0'.                           */
/*   - The source and destination objects do NOT overlap (as with      */
/*     strcpy, overlapping is undefined behavior).                     */
/*                                                                    */
/* Effects:  Writes into the array at pcDest; reads from pcSrc.        */
/*                                                                    */
/* Returns:  pcDest.                                                   */
/*                                                                    */
/* Notes:    Identical in behavior to strcpy.                          */
/*--------------------------------------------------------------------*/
char *Str_copy(char *pcDest, const char *pcSrc);

/*--------------------------------------------------------------------*/
/* char *Str_concat(char *pcDest, const char *pcSrc)                   */
/*                                                                    */
/* Purpose:  Append a copy of the C string pointed to by pcSrc to the */
/*           end of the string stored in pcDest, overwriting the      */
/*           terminating '\0' at the end of pcDest and writing a new  */
/*           terminating '\0'.                                         */
/*                                                                    */
/* Requires:                                                           */
/*   - pcDest and pcSrc are not NULL.                                  */
/*   - pcDest points to a valid, null-terminated string and to an      */
/*     array with enough unused space to hold the result (original     */
/*     *pcDest + *pcSrc + terminating '\0').                           */
/*   - pcSrc points to a valid, null-terminated string.                */
/*   - The source and destination objects do NOT overlap (as with      */
/*     strcat, overlapping is undefined behavior).                     */
/*                                                                    */
/* Effects:  Writes into the array at pcDest; reads from pcDest and    */
/*           pcSrc.                                                    */
/*                                                                    */
/* Returns:  pcDest.                                                   */
/*                                                                    */
/* Notes:    Identical in behavior to strcat.                          */
/*--------------------------------------------------------------------*/
char *Str_concat(char *pcDest, const char *pcSrc);

/*--------------------------------------------------------------------*/
/* int Str_compare(const char *pcS1, const char *pcS2)                 */
/*                                                                    */
/* Purpose:  Lexicographically compare the C strings pcS1 and pcS2.   */
/*                                                                    */
/* Requires: pcS1 and pcS2 are not NULL and point to valid,           */
/*           null-terminated strings.                                  */
/*                                                                    */
/* Effects:  None (reads only).                                        */
/*                                                                    */
//* Returns:                                                            */
/*   < 0  if pcS1 is lexicographically less than pcS2;                 */
/*   = 0  if pcS1 and pcS2 are equal;                                  */
/*   > 0  if pcS1 is lexicographically greater than pcS2.              */
/*                                                                    */
/* Ordering: The comparison is performed using the values of the       */
/*           bytes interpreted as unsigned char, exactly like strcmp.  */
/*--------------------------------------------------------------------*/
int Str_compare(const char *pcS1, const char *pcS2);

/*--------------------------------------------------------------------*/
/* char *Str_search(const char *pcHaystack, const char *pcNeedle)      */
/*                                                                    */
/* Purpose:  Locate the first occurrence of the C string pcNeedle     */
/*           within the C string pcHaystack.                           */
/*                                                                    */
/* Requires: pcHaystack and pcNeedle are not NULL and point to valid, */
/*           null-terminated strings.                                  */
/*                                                                    */
/* Effects:  None (reads only).                                        */
/*                                                                    */
/* Returns:                                                            */
/*   - A pointer to the first byte of the first occurrence of pcNeedle */
/*     within pcHaystack, if found.                                    */
/*   - pcHaystack if pcNeedle is the empty string.                     */
/*   - NULL if pcNeedle does not occur in pcHaystack.                  */
/*                                                                    */
/* Notes:    Identical in behavior to strstr; the returned pointer     */
/*           refers into pcHaystack (i.e., not a new allocation).      */
/*--------------------------------------------------------------------*/
char *Str_search(const char *pcHaystack, const char *pcNeedle);

#endif /* STR_H_INCLUDED */
