readme.md:
	touch README.md

README.md: guessinggame.sh
	echo "Final Project: **The Guessing Game**" > README.md
	echo "Make was run on `date`" >> README.md
	echo "There are `wc -l guessinggame.sh | egrep -o "[0-9]+"` lines in guessinggame.sh" >> README.md

clean:
	rm README.md
