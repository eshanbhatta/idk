# Makefile for guessing game project

all:
	@echo "Generating README.md..."
	@bash guessinggame.sh > temp_output.txt
	@echo "# Guessing Game" > README.md
	@echo "\nThis project is a simple guessing game implemented in Bash." >> README.md
	@echo "\n## File Count in Directory" >> README.md
	@echo "\nThe script was run on:" >> README.md
	@date >> README.md
	@echo "\nThe number of files in the directory was:" >> README.md
	@wc -l < temp_output.txt >> README.md
	@rm temp_output.txt
	@echo "README.md generated."

clean:
	@rm -f README.md
	@echo "Cleaned up generated files."
