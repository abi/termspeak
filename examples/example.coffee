{green, black, red, yellow, pblue} = require '../lib/termspeak'

# Usage
# =====

# black, red, green, yellow, blue, magenta, cyan, white are functions that take a string and output the string padded
# with ANSI escape sequences for those colors

# p{color} are corresponding functions for each color that have the side-effect of printing the string to console

console.log green 'Hello world!'
console.log red 'Roses are red'
pblue 'Violets are blue'