ebnfDiagram = require './ebnf-diagram.js'

ebnfDiagram.fromFile('./gherkin.ebnf', './gherkinFromFile.png',2000,6000)

ebnfDiagram.fromText('''"EBNF defined in itself" {

	syntax     = [ title ] "{" { production } "}" [ comment ].
	production = identifier "=" expression ( "." | ";" ) .
	expression = term { "|" term } .
	term       = factor { factor } .
	factor     = identifier
	           | literal
	           | "[" expression "]"
	           | "(" expression ")"
	           | "{" expression "}" .
	identifier = character { character } .
	title      = literal .
	comment    = literal .
	literal    = "'" character { character } "'"
	           | '"' character { character } '"' .


} "EBNF is a cool syntax for describing syntaxes."
''', './ebnfFromText.png',1000,1000)
