IRQTOP=irqtop

all :
	gcc *.c -O2 -g -o $(IRQTOP) -I. -lncurses -Wall

install : all
	@cp $(IRQTOP) /usr/bin
	@chmod +s /usr/bin/$(IRQTOP)

clean:
	rm -rf $(IRQTOP)
