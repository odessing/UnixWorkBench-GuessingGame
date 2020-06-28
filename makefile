all: README.md

README.md: guessinggame.sh
	echo "# Peer-graded assignment - Guessing Game" > README.md
	
	echo "#### Date & time of last succesfull Makefile run:" >> README.md
	echo "The last time the makefile was succesfully run (making changes to README.md):" >> README.md
	date +"%x %T %Z" >> README.md

	echo "#### Number of lines in guessinggame.sh:" >> README.md
	echo "There are ${shell wc -l < guessinggame.sh} lines in guessinggame.sh" >> README.md

clean:
	rm README.md