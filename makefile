# Variables
README = README.md
SCRIPT = guessinggame.sh

all: $(README)

$(README): $(SCRIPT)
	echo "# Guessing Game Project" > $(README)
	echo "\nCe projet a été généré le : $$(date)" >> $(README)
	echo "\nLe script contient $$(wc -l < $(SCRIPT)) lignes de code." >> $(README)

clean:
	rm -f $(README)
