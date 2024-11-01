#/!bin/bash

echo "Which pokemon?"
read pokemon

curl -s https://pokeapi.co/api/v2/pokemon/$pokemon | jq ".abilities" | lolcat | tr -d '"{}[]' | boxes -d boy >> $pokemon.txt

echo "Info saved to $pokemon.txt in current directory..."


