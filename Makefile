CC      = gcc
CFLAGS  = -Wall -Wextra -Iinclude
BUILD   = build

all: $(BUILD)/bin/calculator

$(BUILD)/obj/calculator.o: src/calculator.c include/calculator.h
	mkdir -p $(BUILD)/obj
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD)/lib/libcalculator.a: $(BUILD)/obj/calculator.o
	mkdir -p $(BUILD)/lib
	ar rcs $@ $<

$(BUILD)/bin/calculator: src/main.c $(BUILD)/lib/libcalculator.a
	mkdir -p $(BUILD)/bin
	$(CC) $(CFLAGS) src/main.c -L$(BUILD)/lib -lcalculator -o $@

run: all
	./$(BUILD)/bin/calculator

clean:
	rm -rf $(BUILD)

.PHONY: all run clean
