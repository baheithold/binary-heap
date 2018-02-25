OBJS = integer.o real.o string.o heap.o bst.o stack.o queue.o dll.o sll.o
OOPTS = -Wall -Wextra -std=c99 -g -c
LOPTS = -Wall -Wextra -std=c99 -g
EXECUTABLES = heap-0-0 heap-0-1 heap-0-2 heap-0-3 heap-0-4 heap-0-5 heap-0-6 \
			  heap-0-7 heap-0-8 heap-0-9 heap-0-10 heap-0-11 heap-0-12 \
			  heap-0-13 heap-0-14 heap-0-15

all:	$(EXECUTABLES)

mytester:	integer.o heap.o mytester.o queue.o stack.o dll.o sll.o bst.o
		gcc $(LOPTS) integer.o heap.o mytester.o queue.o stack.o dll.o sll.o bst.o -o mytester

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

mytester.o:	mytester.c heap.h
		gcc $(OOPTS) mytester.c

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

mytest:	mytester
		@./mytester

test:	$(EXECUTABLES)
		@echo Testing heap-0-0...
		@./heap-0-0 > ./Testing/myresults/heap-0-0.txt
		@diff ./Testing/expectedresults/heap-0-0.txt ./Testing/myresults/heap-0-0.txt
		@echo Testing heap-0-1...
		@./heap-0-1 > ./Testing/myresults/heap-0-1.txt
		@diff ./Testing/expectedresults/heap-0-1.txt ./Testing/myresults/heap-0-1.txt
		@echo Testing heap-0-2...
		@./heap-0-2 > ./Testing/myresults/heap-0-2.txt
		@diff ./Testing/expectedresults/heap-0-2.txt ./Testing/myresults/heap-0-2.txt
		@echo Testing heap-0-3...
		@./heap-0-3 > ./Testing/myresults/heap-0-3.txt
		@diff ./Testing/expectedresults/heap-0-3.txt ./Testing/myresults/heap-0-3.txt
		@echo Testing heap-0-4...
		@./heap-0-4 > ./Testing/myresults/heap-0-4.txt
		@diff ./Testing/expectedresults/heap-0-4.txt ./Testing/myresults/heap-0-4.txt
		@echo Testing heap-0-5...
		@./heap-0-5 > ./Testing/myresults/heap-0-5.txt
		@diff ./Testing/expectedresults/heap-0-5.txt ./Testing/myresults/heap-0-5.txt
		@echo Testing heap-0-6...
		@./heap-0-6 > ./Testing/myresults/heap-0-6.txt
		@diff ./Testing/expectedresults/heap-0-6.txt ./Testing/myresults/heap-0-6.txt
		@echo Testing heap-0-7...
		@./heap-0-7 > ./Testing/myresults/heap-0-7.txt
		@diff ./Testing/expectedresults/heap-0-7.txt ./Testing/myresults/heap-0-7.txt
		@echo Testing heap-0-8...
		@./heap-0-8 > ./Testing/myresults/heap-0-8.txt
		@diff ./Testing/expectedresults/heap-0-8.txt ./Testing/myresults/heap-0-8.txt
		@echo Testing heap-0-9...
		@./heap-0-9 > ./Testing/myresults/heap-0-9.txt
		@diff ./Testing/expectedresults/heap-0-9.txt ./Testing/myresults/heap-0-9.txt
		@echo Testing heap-0-10...
		@./heap-0-10 > ./Testing/myresults/heap-0-10.txt
		@diff ./Testing/expectedresults/heap-0-10.txt ./Testing/myresults/heap-0-10.txt
		@echo Testing heap-0-11...
		@./heap-0-11 > ./Testing/myresults/heap-0-11.txt
		@diff ./Testing/expectedresults/heap-0-11.txt ./Testing/myresults/heap-0-11.txt
		@echo Testing heap-0-12...
		@./heap-0-12 > ./Testing/myresults/heap-0-12.txt
		@diff ./Testing/expectedresults/heap-0-12.txt ./Testing/myresults/heap-0-12.txt
		@echo Testing heap-0-13...
		@./heap-0-13 > ./Testing/myresults/heap-0-13.txt
		@diff ./Testing/expectedresults/heap-0-13.txt ./Testing/myresults/heap-0-13.txt
		@echo Testing heap-0-14...
		@./heap-0-14 > ./Testing/myresults/heap-0-14.txt
		@diff ./Testing/expectedresults/heap-0-14.txt ./Testing/myresults/heap-0-14.txt
		@echo Testing heap-0-15...
		@./heap-0-15 > ./Testing/myresults/heap-0-15.txt
		@diff ./Testing/expectedresults/heap-0-15.txt ./Testing/myresults/heap-0-15.txt

valgrind:	$(EXECUTABLES)
		valgrind ./heap-0-0
		valgrind ./heap-0-1
		valgrind ./heap-0-2
		valgrind ./heap-0-3
		valgrind ./heap-0-4
		valgrind ./heap-0-5
		valgrind ./heap-0-6
		valgrind ./heap-0-7
		valgrind ./heap-0-8
		valgrind ./heap-0-9
		valgrind ./heap-0-10
		valgrind ./heap-0-11
		valgrind ./heap-0-12
		valgrind ./heap-0-13
		valgrind ./heap-0-14
		valgrind ./heap-0-15

clean:
		rm -f vgcore.* *.o $(EXECUTABLES)
