high(ruby,1).
high(c_sharp,1).
high(python,1).
high(c_plu_plus,1).
high(f_sharp,1).
high(prolog,1).
high(c,1).
high(asm,0).
high(java,1).
high(JavaScript, 1).
high(php, 1).

decl(ruby,0).
decl(c_sharp,0).
decl(python,0).
decl(c_plu_plus,0).
decl(f_sharp,1).
decl(prolog,1).
decl(c,0).
decl(asm,0).
decl(java,0).
decl(JavaScript, 1).
decl(php, 0).

interpret(ruby,1).
interpret(python,1).
interpret(f_sharp,1).
interpret(prolog,1).
interpret(c_sharp,0).
interpret(c_plu_plus,0).
interpret(c,0).
interpret(asm,0).
interpret(java,1).
interpret(JavaScript, 1).
interpret(php, 1).


oop(ruby,3).
oop(c_sharp,3).
oop(python,2).
oop(c_plu_plus,2).
oop(f_sharp,1).
oop(prolog,1).
oop(c,0).
oop(asm,0).
oop(java, 1).
oop(JavaScript, 1).
oop(php, 1).

cross(ruby,1).
cross(python,1).
cross(c_plu_plus,1).
cross(prolog,1).
cross(c,1).
cross(asm,1).
cross(c_sharp,0).
cross(f_sharp,0).
cross(java, 1).
cross(JavaScript, 1).
cross(php, 1).

visual(c_sharp,3).
visual(ruby,2).
visual(python,2).
visual(c_plu_plus,2).
visual(f_sharp,2).
visual(prolog,1).
visual(c,0).
visual(asm,0).
visual(java, 1).
visual(JavaScript, 1).
visual(php, 0).

mobile(c_sharp,0).
mobile(ruby,0).
mobile(python,0).
mobile(c_plu_plus,0).
mobile(f_sharp,0).
mobile(prolog,0).
mobile(c,0).
mobile(asm,0).
mobile(java, 1).
mobile(JavaScript, 1).
mobile(php, 0).

game(c_sharp,1).
game(ruby,0).
game(python,1).
game(c_plu_plus,1).
game(f_sharp,0).
game(prolog,0).
game(c,0).
game(asm,0).
game(java, 1).
game(JavaScript, 1).
game(php, 0).

web(c_sharp,1).
web(ruby,1).
web(python,1).
web(c_plu_plus,0).
web(f_sharp,1).
web(prolog,0).
web(c,0).
web(asm,0).
web(java, 1).
web(JavaScript, 1).
web(php, 1).

typing(c_sharp,1).
typing(ruby,0).
typing(python,0).
typing(c_plu_plus,1).
typing(f_sharp,1).
typing(prolog,0).
typing(c,1).
typing(asm,1).
typing(java, 1).
typing(JavaScript, 0).
typing(php, 0).


question1(X1):-	write("Is your language high level?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X1).

question2(X2):-	write("Is your language declarative?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X2).

question3(X3):-	write("Is your language interpret?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X3).

question4(X4):-	write("Does your language support OOP?"),nl,
				write("3. It is OOP itself"),nl,
				write("2. yes"),nl,
				write("1. yes, but very hard"),nl,
				write("0. NO"),nl,
				read(X4).

question5(X5):-	write("Is your language crossplatformic?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X5).

question6(X6):-	write("Does your language support visual interface for user?"),nl,
				write("3. It is visual itself"),nl,
				write("2. yes"),nl,
				write("1. yes, but very hard"),nl,
				write("0. NO"),nl,
				read(X6).

question7(X7):-	write("Is your language for mobile phones?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X7).
				
question8(X8):- write("Is your language designed for creating games?"), nl,
                write("1. Yes"), nl,
                write("0. No"), nl,
                read(X8).
				
question9(X9):- write("Is this programming language suitable for web development?"), nl,
                write("1. Yes"), nl,
                write("0. No"), nl,
                read(X9).
				
question10(X10):- write("Is this programming language strongly typed"), nl,
                write("1. Yes"), nl,
                write("0. No"), nl,
                read(X10).



pr:-	question1(X1),question2(X2),question3(X3),question4(X4),
		question5(X5),question6(X6),question7(X7),question8(X8),
		question9(X9),question10(X10),
		high(X,X1), decl(X,X2), interpret(X,X3), oop(X,X4),
		cross(X,X5), visual(X,X6), mobile(X,X7), game(X,X8),
		web(X,X9), typing(X,X10),
		write(X).
