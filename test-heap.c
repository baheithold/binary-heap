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

    freeHEAP(h);
    return 0;
}
