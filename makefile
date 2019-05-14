all: README.md

README.md:
	echo "# The Guessing Game" > README.md
	echo "## The date and time at which make was run: `date +'%Y-%m-%d %H:%M:%S'`" >> README.md
	echo "## The number of lines of code contained in guessinggame.sh: `wc -l < guessinggame.sh`" >> README.md
	chmod a-w README.md

