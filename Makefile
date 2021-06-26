SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)

LDFLAGS = -Wall -lm `guile-config link`
CFLAGS = -g `guile-config compile`

TARGET = tortoise

$(TARGET): $(OBJ)
	@$(CC) -o $@ $^ $(LDFLAGS)

.PHONY: clean
clean:
	rm -r $(OBJ) $(TARGET)
