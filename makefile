readme.md:
	touch README.md

README.md: guessinggame.sh
	echo "This is the **Final Project**" > README.md
	echo "Make was run on `date`" >> README.md
	echo "There are `wc -l guessinggame.sh | egrep -o "[0-9]+"` lines in guessinggame.sh" >> README.md

