.PHONY: all

all:
	cat templates/header.html slides.md templates/footer.html > public/index.html
