/*
 *  File:   heap.c
 *  Author: Brett Heithold
 *  Description:
 */


#include "heap.h"
#include "queue.h"
#include "stack.h"
#include "bst.h"
#include <stdlib.h>
#include <assert.h>


struct HEAP {
    BST *store;
    int size;
    
    // Public Methods
    void (*display)(void *, FILE *);
    int (*compare)(void *, void *);
    void (*free)(void *);
};


HEAP *newHEAP(
    void (*d)(void *, FILE *),
    int (*c)(void *, void *),
    void (*f)(void *)) {
    HEAP *h = malloc(sizeof(HEAP));
    assert(h != 0);
    h->store = newBST(d, c, NULL, f);
    h->size = 0;
    h->display = d;
    h->compare = c;
    h->free = f;
    return h;
}
