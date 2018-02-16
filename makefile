OBJS = integer.o bst.o queue.o stack.o dll.o sll.o test-heap.o
OOPTS = -Wall -Wextra -std=c99 -g -c
LOPTS = -Wall -Wextra -std=c99 -g

all: test-heap

test-heap:	$(OBJS)
		gcc $(LOPTS) $(OBJS) -o test-heap

integer.o:	integer.c integer.h
		gcc $(OOPTS) integer.c

queue.o:	queue.c queue.h sll.h
		gcc $(OOPTS) queue.c

stack.o:	stack.c stack.h dll.h
		gcc $(OOPTS) stack.c

dll.o:	dll.c dll.h
		gcc $(OOPTS) dll.c

sll.o:	sll.c sll.h
		gcc $(OOPTS) sll.c

bst.o:	bst.c bst.h queue.h
		gcc $(OOPTS) bst.c

test-heap.o:	test-heap.c bst.h queue.h
		gcc $(OOPTS) test-heap.c

test:	test-heap
		@./test-heap

valgrind: test-heap
		valgrind ./test-heap

clean:
		rm -f vgcore.* $(OBJS) test-heap
