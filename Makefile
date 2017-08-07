CXX=gcc

CXXFLAGS = -g -std=c99
LDFLAGS = -lm

OBJS = dct2_0.o

all: dct2_0_build dct2_1_build

# dct2_0_build: $(OBJS)
# 	$(CXX) $(CXXFLAGS) -o dct2_0 dct2_0.c $(LDFLAGS)

dct2_0_build: $(OBJS)
	gcc -g -std=c99 -o dct2_0 dct2_0.c $(LDFLAGS)

dct2_1_build: dct2_1.o
	gcc -g -std=c99 -o dct2_1 dct2_1.c $(LDFLAGS)

dct2_2_build: dct2_2.o
	gcc -g -std=c99 -o dct2_2 dct2_2.c $(LDFLAGS)

clean:
	rm -rf $(OBJS) dct2