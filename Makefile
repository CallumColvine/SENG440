CXX=gcc

CXXFLAGS = -g -std=c99
LDFLAGS = -lm

OBJS = dct2_0.o

all: dct2_0_build

# dct2_0_build: $(OBJS)
# 	$(CXX) $(CXXFLAGS) -o dct2_0 dct2_0.c $(LDFLAGS)

dct2_0_build: $(OBJS)
	gcc -g -std=c99 -o dct2_0 dct2_0.c $(LDFLAGS)


clean:
	rm -rf $(OBJS) dct2