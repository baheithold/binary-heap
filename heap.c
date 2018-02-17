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
    BST *tree;
    int size;

    QUEUE *insertionQueue;
    
    // Public Methods
    void (*display)(void *, FILE *);
    int (*compare)(void *, void *);
    void (*free)(void *);
};


/*
 *  Constructor:    newHEAP
 *  Usage:  HEAP *h = newHEAP(displayINTEGER, compareINTEGER, freeINTEGER);
 *  Description:
 */
HEAP *newHEAP(
    void (*d)(void *, FILE *),
    int (*c)(void *, void *),
    void (*f)(void *)) {
    HEAP *h = malloc(sizeof(HEAP));
    assert(h != 0);
    h->tree = newBST(d, c, NULL, f);
    h->size = 0;
    h->insertionQueue = newQUEUE(h->display, h->free);
    h->display = d;
    h->compare = c;
    h->free = f;
    return h;
}


/*
 *  Method: insertHEAP
 *  Usage:  insertHEAP(h, newINTEGER(7));
 *  Description:
 */
void insertHEAP(HEAP *h, void *value) {
    BSTNODE *temp = newBSTNODE(value);
    if (sizeBST(h->tree) == 0) {
        // If tree is empty, add new node to root
        setBSTroot(h->tree, temp);
    }
    else {
        BSTNODE *front = peekQUEUE(h->insertionQueue);
        if (getBSTNODEleft(front) == NULL) {
            // If node at front of queue does not have left child
            // set the left child to be the new node and set the parent
            // of the new node
            setBSTNODEleft(front, temp);
            setBSTNODEparent(temp, front);
        }
        else if (getBSTNODEright(front) == NULL) {
            // If node at front of queue does not have right child
            // set the right child to be the new node and set the parent
            // of the new node
            setBSTNODEright(front, temp);
            setBSTNODEparent(temp, front);
        }
        if (getBSTNODEleft(front) != NULL && getBSTNODEright(front) != NULL) {
            // The front node already has two children, dequeue the front node
            front = dequeue(h->insertionQueue); // trash
        }
    }
    enqueue(h->insertionQueue, temp);
    h->size++;
    setBSTsize(h->tree, h->size);
}


/*
 *  Method: peekHEAP
 *  Usage:  void *val = peekHEAP(h);
 *  Description:
 */
void *peekHEAP(HEAP *h) {
    // TODO: Am I correct?
    assert(h != 0);
    return getBSTNODEvalue(getBSTroot(h->tree));
}


/*
 *  Method: sizeHEAP
 *  Usage:  int size = sizeHEAP(h);
 *  Description:
 */
int sizeHEAP(HEAP *h) {
    assert(h != 0);
    return h->size;
}


/*
 *  Method: displayHEAP
 *  Usage:  displayHEAP(h, stdout);
 *  Description:
 *  Example Output:
 */
void displayHEAP(HEAP *h, FILE *fp) {
    assert(h != 0);
    displayBST(h->tree, fp);
}


/*
 *  Method: displayHEAPdebug
 *  Usage:  displayHEAPdebug(h, stdout);
 *  Description:
 *  Example Output:
 */
void displayHEAPdebug(HEAP *h, FILE *fp) {
    assert(h != 0);
    fprintf(fp, "heap size: %d\n", h->size);
    fprintf(fp, "bst size: %d\n", sizeBST(h->tree));
    displayBSTdebug(h->tree, fp);
}


/*
 *  Method: freeHEAP
 *  Usage:  freeHEAP(h);
 *  Description:
 */
void freeHEAP(HEAP *h) {
    freeBST(h->tree);
    freeQUEUE(h->insertionQueue);
    free(h);
}
