CXX = g++

CXX_ARGS = -c -Wall -Wextra -std=c++17 -Iinclude

BUILD_DIR = output
SRC_DIR = source

SRC_FILES = $(wildcard $(SRC_DIR)/*.cpp)

OBJ_FILES = $(SRC_FILES:$(SRC_DIR)/%.cpp=output/%_src.o)
TARGET = libbadlog.so

.PHONY: clean

all: $(TARGET)

$(BUILD_DIR)/%_src.o: $(SRC_DIR)/%.cpp
	@if [[ ! -d "output" ]]; then mkdir output; fi
	$(CXX) $(CXX_ARGS) $< -o $@

$(TARGET): $(OBJ_FILES)
	$(CXX) -shared -o $(TARGET) $(OBJ_FILES)

clean:
	rm -r output $(TARGET)

example: $(TARGET)
	$(CXX) -o example -Iinclude $(TARGET) example.cpp
