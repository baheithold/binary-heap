OBJS = integer.o real.o string.o heap.o bst.o stack.o queue.o dll.o sll.o
OOPTS = -Wall -Wextra -std=c99 -g -c
LOPTS = -Wall -Wextra -std=c99 -g
EXECUTABLES = heap-0-0 heap-0-1 heap-0-2 heap-0-3 heap-0-4 heap-0-5 heap-0-6 \
			  heap-0-7 heap-0-8 heap-0-9 heap-0-10 heap-0-11 heap-0-12 \
			  heap-0-13 heap-0-14 heap-0-15

all:	$(EXECUTABLES)

heap-0-0:	$(OBJS) heap-0-0.o
		gcc $(LOPTS) $(OBJS) heap-0-0.o -o heap-0-0

heap-0-1:	$(OBJS) heap-0-1.o
		gcc $(LOPTS) $(OBJS) heap-0-1.o -o heap-0-1

heap-0-2:	$(OBJS) heap-0-2.o
		gcc $(LOPTS) $(OBJS) heap-0-2.o -o heap-0-2

heap-0-3:	$(OBJS) heap-0-3.o
		gcc $(LOPTS) $(OBJS) heap-0-3.o -o heap-0-3

heap-0-4:	$(OBJS) heap-0-4.o
		gcc $(LOPTS) $(OBJS) heap-0-4.o -o heap-0-4

heap-0-5:	$(OBJS) heap-0-5.o
		gcc $(LOPTS) $(OBJS) heap-0-5.o -o heap-0-5

heap-0-6:	$(OBJS) heap-0-6.o
		gcc $(LOPTS) $(OBJS) heap-0-6.o -o heap-0-6

heap-0-7:	$(OBJS) heap-0-7.o
		gcc $(LOPTS) $(OBJS) heap-0-7.o -o heap-0-7

heap-0-8:	$(OBJS) heap-0-8.o
		gcc $(LOPTS) $(OBJS) heap-0-8.o -o heap-0-8

heap-0-9:	$(OBJS) heap-0-9.o
		gcc $(LOPTS) $(OBJS) heap-0-9.o -o heap-0-9

heap-0-10:	$(OBJS) heap-0-10.o
		gcc $(LOPTS) $(OBJS) heap-0-10.o -o heap-0-10

heap-0-11:	$(OBJS) heap-0-11.o
		gcc $(LOPTS) $(OBJS) heap-0-11.o -o heap-0-11

heap-0-12:	$(OBJS) heap-0-12.o
		gcc $(LOPTS) $(OBJS) heap-0-12.o -o heap-0-12

heap-0-13:	$(OBJS) heap-0-13.o
		gcc $(LOPTS) $(OBJS) heap-0-13.o -o heap-0-13

heap-0-14:	$(OBJS) heap-0-14.o
		gcc $(LOPTS) $(OBJS) heap-0-14.o -o heap-0-14

heap-0-15:	$(OBJS) heap-0-15.o
		gcc $(LOPTS) $(OBJS) heap-0-15.o -o heap-0-15

integer.o:	integer.c integer.h
		gcc $(OOPTS) integer.c

string.o:	string.c string.h
		gcc $(OOPTS) string.c

real.o:	real.c real.h
		gcc $(OOPTS) real.c

queue.o:	queue.c queue.h sll.h
		gcc $(OOPTS) queue.c

stack.o:	stack.c stack.h dll.h
		gcc $(OOPTS) stack.c

sll.o:	sll.c sll.h
		gcc $(OOPTS) sll.c

dll.o:	dll.c dll.h
		gcc $(OOPTS) dll.c

bst.o:	bst.c bst.h queue.h
		gcc $(OOPTS) bst.c

heap.o:	heap.c heap.h bst.h queue.h stack.h
		gcc $(OOPTS) heap.c

heap-0-0.o:	./Testing/heap-0-0.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-0.c

heap-0-1.o:	./Testing/heap-0-1.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-1.c

heap-0-2.o:	./Testing/heap-0-2.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-2.c

heap-0-3.o:	./Testing/heap-0-3.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-3.c

heap-0-4.o:	./Testing/heap-0-4.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-4.c

heap-0-5.o:	./Testing/heap-0-5.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-5.c

heap-0-6.o:	./Testing/heap-0-6.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-6.c

heap-0-7.o:	./Testing/heap-0-7.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-7.c

heap-0-8.o:	./Testing/heap-0-8.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-8.c

heap-0-9.o:	./Testing/heap-0-9.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-9.c

heap-0-10.o:	./Testing/heap-0-10.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-10.c

heap-0-11.o:	./Testing/heap-0-11.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-11.c

heap-0-12.o:	./Testing/heap-0-12.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-12.c

heap-0-13.o:	./Testing/heap-0-13.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-13.c

heap-0-14.o:	./Testing/heap-0-14.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-14.c

heap-0-15.o:	./Testing/heap-0-15.c heap.h
		gcc $(OOPTS) ./Testing/heap-0-15.c

test:	heap-0-0
		@./heap-0-0

valgrind:	$(EXECUTABLES)
		valgrind ./heap-0-0

clean:
		rm -f vgcore.* *.o $(EXECUTABLES)
