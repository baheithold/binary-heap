/*
 *  File:   test-heap.c
 *  Author: Brett Heithold
 */


#include "heap.h"
#include "integer.h"
#include <stdio.h>


int main(void) {

    HEAP *h = newHEAP(displayINTEGER, compareINTEGER, freeINTEGER);
    displayHEAPdebug(h, stdout);

    freeHEAP(h);
    return 0;
}
