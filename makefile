flags = -Wall -O3

all:: mrils

mrils: main.o WL_MRILS.o WL_Instance.o WL_Solution.o
	g++ $(flags) main.o WL_MRILS.o WL_Instance.o WL_Solution.o -o mrils -I./include -L. -lfpmax -Wl,-rpath,.

main.o:
	g++ $(flags) -c main.cpp

WL_MRILS.o:
	g++ $(flags) -c WL_MRILS.cpp -I./include

WL_Instance.o:
	g++ $(flags) -c WL_Instance.cpp

WL_Solution.o:
	g++ $(flags) -c WL_Solution.cpp

clean:
	rm -f *.o mrils