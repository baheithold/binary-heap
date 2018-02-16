/*
 *  File:   heap.c
 *  Author: Brett Heithold
 *  Description:
 */


#include "heap.h"
#include "queue.h"
#include "stack.h"
#include "sll.h"
#include "dll.h"
#include <assert.h>


struct HEAP {
    int size;
    
    // Public Methods
    void (*display)(void *, FILE *);
    int (*compare)(void *, void *);
    void (*free)(void *);
};
