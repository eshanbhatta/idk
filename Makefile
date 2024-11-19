# Makefile to generate README.md for the Guessing Game project

README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "\nThis project is a simple Bash script where the user guesses the number of files in the current directory." >> README.md
	@echo "\n## Project Details" >> README.md
	@echo "\n**Date and Time of Generation:**" >> README.md
	@date >> README.md
	@echo "\n**Number of Lines in guessinggame.sh:**" >> README.md
	@wc -l < guessinggame.sh >> README.md
	@echo "\n## How to Play" >> README.md
	@echo "1. Clone the repository." >> README.md
	@echo "2. Run \`make\` to generate the README.md file." >> README.md
	@echo "3. Execute the script with \`bash guessinggame.sh\`." >> README.md
	@echo "\n## GitHub Pages URL" >> README.md
	@echo "[View the Project on GitHub Pages](<your_github_pages_url>)" >> README.md

clean:
	@rm -f README.md
	@echo "README.md removed."
