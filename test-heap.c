/*
 *  File:   test-heap.c
 *  Author: Brett Heithold
 */


#include "heap.h"
#include "integer.h"
#include <stdio.h>


int main(void) {

    HEAP *h = newHEAP(displayINTEGER, compareINTEGER, freeINTEGER);
    insertHEAP(h, newINTEGER(10));
    insertHEAP(h, newINTEGER(7));
    insertHEAP(h, newINTEGER(9));
    insertHEAP(h, newINTEGER(15));
    insertHEAP(h, newINTEGER(12));
    insertHEAP(h, newINTEGER(17));
    insertHEAP(h, newINTEGER(11));
    displayHEAPdebug(h, stdout);
    buildHEAP(h);
    printf("After buildHEAP: \n");
    displayHEAP(h, stdout);
    printf("\n");
    void *extracted = extractHEAP(h);
    extracted = extractHEAP(h);
    extracted = extractHEAP(h);
    extracted = extractHEAP(h);
    extracted = extractHEAP(h);
    extracted = extractHEAP(h);
    printf("Last extracted from heap: ");
    displayINTEGER(extracted, stdout);
    printf("\n");
    printf("After extractHEAP: \n");
    displayHEAPdebug(h, stdout);
    printf("Extracting last node: ");
    extracted = extractHEAP(h);
    displayINTEGER(extracted, stdout);
    printf("\n");
    displayHEAPdebug(h, stdout);

    freeHEAP(h);
    return 0;
}
