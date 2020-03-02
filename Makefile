.PHONY: all clean

all: style.min.css
style.min.css:
	sass --update sass/style.sass:style.min.css --stop-on-error --no-cache --style compact

clean:
	rm style.min.css

