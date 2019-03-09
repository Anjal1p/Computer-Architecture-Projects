# Name: Anjali Prabhala
# NetID: axp171330
# Assignment: Project
# Class: CS 3340 - 502

.data
	# Variables to store user input/ result variables
	name:	.space 100
	choice: .space 50
	menuArr:	.word start, case1, case2, case3
	
	# score variables
	score1:		.word 0
	score2:		.word 0
	
	# Main menu
	menu:	.ascii "\n-----------------------------------"
		.ascii "\n WHO WANTS TO BE A MILLIONAIRE "
		.ascii "\n-----------------------------------"
		.ascii "\n1) START GAME \n"
		.ascii "2) RULES \n"
		.ascii "3) EXIT \n"
		.asciiz "-----------------------------------------\n"
	
	# Second menu
	menu2:	.ascii "\n-----------------------------------"
		.ascii "\n Game Modes "
		.ascii "\n-----------------------------------"
		.ascii "\n1) General Knowledge \n"
		.ascii "2) Harry Potter \n"
		.ascii "3) TV Shows \n"
		.ascii "4) Back to Main menu \n"
		.asciiz "-----------------------------------------\n"
		
	# Prompt Messages
	choiceMsg:	.asciiz "Enter your choice: "
	ans:		.asciiz "Answer: "
	contMsg:	.asciiz "Continue? (Y = 1/N = 2) "
	replayMsg:	.asciiz "Would you like to play again? (Y = 1/N = 2) "
	
	# Other Messages 
	welcome:	.asciiz "Who Wants to be a Millionaire!\n"
	CorrectMsg: 	.asciiz "Right Answer. "
	WrongMsg: 	.asciiz "Wrong Answer. "
	scoreMsg:	.asciiz "You have won a total of $"
	endMsg:		.asciiz "Thank you for playing!"	  
	rulesMsg: 	.ascii "------------------------------------------------------------------\n"
		 	.ascii "**** RULES ****\n"
		 	.ascii "------------------------------------------------------------------\n"
		  	.ascii "Who Wants to be a Millionaire is a multiple choice trivia quiz game \n"
		  	.ascii "where contestants have to answer 12 questions each worth a \n"
		  	.ascii "specific amount of money. The questions will get hard as the \n"
		  	.ascii "games progresses. The game has three modes: "
		  	.ascii "\n1) General knowledge"
		  	.ascii "\n2) Harry Potter"
		  	.ascii "\n3) TV Shows"
		  	.ascii "\nThe contestant who answers all the questions accurately wins 1 "
		  	.ascii "\nMillion Dollars. If not, the contestant can win money upto the "
		  	.ascii "\nthe question(s) they answered correctly. GOOD LUCK!		 "
		  	.asciiz "\n-------------------------------------------------------------------\n"
	
	# Round 1 Question(s)
	q1:	.asciiz "\nQuestion 1: What does it mean to spill the tea?\n"
	q2:	.asciiz "\nQuestion 2: Pixar is responsible for the first completely animated movie. What was it??\n"
	q3: 	.asciiz "\nQuestion 3: You might get in trouble for doing what in Venice, Italy?\n"
	q4: 	.asciiz "\nQuestion 4: What is the heaviest inert gas?\n"
	q5: 	.asciiz "\nQuestion 5: What car company made the Plymouth?\n"
	q6:	.asciiz "\nQuestion 6: The principle of popular sovereignty was an important part of the?\n"
	q7: 	.asciiz "\nQuestion 7: How many U.S. States have the names that begin with the word 'New'?\n"
	q8: 	.asciiz "\nQuestion 8: Which was the capital of the Astro-Hungarian Empire?\n"
	q9: 	.asciiz "\nQuestion 9: 'The one name they all fear' is the tagline for which 2004 film featuring Hugh Jackman?\n"
	q10:	.asciiz "\nQuestion 10: Which of the following is not a definition of: mortar?\n"
	q11: 	.asciiz "\nQuestion 11: Who developed the first effective vaccine against polio?\n"
	q12:	.asciiz "\nQuestion 12: How to convert centimeters to meters\n"
	
	# Answer set(s)
	a1:	.asciiz "1) To make a mess of your life\n2) Gossip is being shared\n3) Literally spilling tea\n4) It's a euphemism for something unmentionable\n"
	a2: 	.asciiz "1) Toy Story \n2) Tron\n3) Lord of the Rings\n4) Tarzan\n"	
	a3: 	.asciiz "1) Petting cats\n2) Swearing\n3) Walking in high heels\n4) Feeding pigeons\n"
	a4: 	.asciiz "1) Xenon\n2) Argon\n3) Helium\n4) Radon\n"
	a5: 	.asciiz "1) Porsche\n2) Chrystler\n3) Genesis\n4) Land Rover\n"
	a6: 	.asciiz "1) Homestead Act\n2) Dawes Act\n3) Kansas - Nebraska Act\n4) Indian Removal Act\n"
	a7: 	.asciiz "1) 2 \n2) 3 \n3) 4 \n4) 5\n"	
	a8:	.asciiz "1) Vienna and Sofia \n2) Vienna and Budapest\n3) Budapest and Sarajevo\n4) Belgrade and Prague\n"
	a9: 	.asciiz "1) Real Steel\n2) Wolverine\n3) X-Men\n4) Van Helsing\n"	
	a10: 	.asciiz "1) Grinding stick\n2) Bowl\n3) Cement and water\n4) Weapon\n"	
	a11: 	.asciiz "1) Albert Sabin\n2) Jonas Salk\n3) Neils Bohr\n4) Louis Pasteur\n"	
	a12: 	.asciiz "1) Divide by 100 \n2) Multiply by 100 \n3) Divide by 10\n4) By taking out the centi\n"
	
	# Round 2 Question(s)
	r2q1:	.asciiz "\nQuestion 1: Which two houses are notorious rivals?\n"
	r2q2:	.asciiz "\nQuestion 2: Who was the half - blood prince?\n"
	r2q3:	.asciiz "\nQuestion 3: How do Harry, Ron, and Hermoine escape their Gringotts break-in?\n"
	r2q4:	.asciiz "\nQuestion 4: Who accompanied Harry to the Yule Ball?\n"
	r2q5:	.asciiz "\nQuestion 5: What is Harry and Ginny's middle child's full name?\n"
	r2q6:	.asciiz "\nQuestion 6: New students need to learn the secrets of the castle. How many staircases does Hogwarts have?\n"
	r2q7:	.asciiz "\nQuestion 7: What did Harry carve into a rock and place on Dobby's grave?\n"
	r2q8:	.asciiz "\nQuestion 8: What fruit must you tickle in order to gain access to the Hogwarts kitchen?\n"
	r2q9:	.asciiz "\nQuestion 9: Which Horcrux was the second one to be destroyed\n"
	r2q10:	.asciiz "\nQuestion 10: What piece of advice does Ron give Harry when Harry asks if he can't cast a spell while dueling Malfoy?\n"
	r2q11: 	.asciiz "\nQuestion 11: What is the correct order for listing the Marauders?\n"
	r2q12:	.asciiz "\nQuestion 12: After Sirius Black's death, Buckbeak is given back to Hagrid. In order to avoid any inquiries, what do they rename the hipogriff?\n"
	
	# Answer set(s) (round 2)
	r2a1:	.asciiz "1) Slytherin and Hufflepuff\n2) Ravenclaw and Gryffindor\n3) Hufflepuff and Ravenclaw\n4) Gryffindor and Slytherin\n"
	r2a2: 	.asciiz "1) Harry Potter \n2) Lord Voldemort \n3) Professor Snape\n4) Sirius Black\n"	
	r2a3: 	.asciiz "1) Dragon\n2) Incedio spell\n3) Apparition\n4) Polyjuice Potion\n"
	r2a4: 	.asciiz "1) Padma Patil\n2) Parvati Patil\n3) Cho Chang\n4) Ginny Weasley\n"
	r2a5: 	.asciiz "1) Albus Snape Potter\n2) Albus Severus Potter\n3) Albus Severus Weasley\n4) Albus Snape Weasley\n"
	r2a6: 	.asciiz "1) 142\n2) 140\n3) 161\n4) 139\n"
	r2a7: 	.asciiz "1) Here lies Dobby, an elf I freed\n2) Dobby was a great elf\n3) Here lies Dobby, a free elf\n4) Here lies a free elf\n"	
	r2a8: 	.asciiz "1) Banana \n2) Pear\n3) Kiwi\n4) Apple\n"
	r2a9: 	.asciiz "1) The ring\n2) The medallion\n3) The diadem\n4) The cup\n"	
	r2a10: 	.asciiz "1) Throw it away and punch him in the nose\n2) Run away quickly\n3) Create a diversion and trip him\n4) Throw something at him\n"	
	r2a11: 	.asciiz "1) Moony, Wormtail, Prongs, and Padfoot\n2) Wormtail, Moony, Prongs, and padfoot\n3) Prongs, wormtail, moony and padfoot\n4) Moony, wormtail, padfoot and prongs\n"	
	r2a12: 	.asciiz "1) Crookshanks \n2) Witherwings \n3) Bottlebrush\n4) Featherflanks\n"
	
	# Round 3 Question(s)
	r3q1:	.asciiz "\nQuestion 1: How many friends are there in Friends?\n"
	r3q2:	.asciiz "\nQuestion 2: In 13 reasons why, Who was the first person to listen to Hannah’s tapes?\n"
	r3q3:	.asciiz "\nQuestion 3: Who is Eleven’s ‘sister’ in episode 7 of season 2 of Stranger things?\n"
	r3q4:	.asciiz "\nQuestion 4: In Breaking bad, what drug do we NOT see Jesse use?\n"
	r3q5:	.asciiz "\nQuestion 5: In the Office, What is Scranton's nickname?\n"
	r3q6:	.asciiz "\nQuestion 6: How long did April Ludgate and Andy Dwyer date before they married in Parks and Rec?\n"
	r3q7:	.asciiz "\nQuestion 7: Who invented the Flaming Moe in the show Simpsons?\n"
	r3q8:	.asciiz "\nQuestion 8: In Game of Thrones, Who did Jon Snow fall in love with?\n"
	r3q9:	.asciiz "\nQuestion 9: In American horror story, 'asylum' what is Dr Arden being accused of?\n"
	r3q10:	.asciiz "\nQuestion 10: In Riverdale, What color eyes does the Black Hood have?\n"
	r3q11: 	.asciiz "\nQuestion 11: How many dogs does Robin haven through out the whole series of How I met your mother?\n"
	r3q12:	.asciiz "\nQuestion 12: In that 70s Show, What nickname did Hyde give Randy?\n"
	
	# Answer set(s) (round 3)
	r3a1:	.asciiz "1) 5\n2) 4\n3) 6\n4) 7\n"
	r3a2: 	.asciiz "1) Clay Jensen \n2) Tony Padilla \n3) Jessica Davis\n4) Justin Foley\n"	
	r3a3: 	.asciiz "1) Kali\n2) Axel\n3) Dottie\n4) Funshine\n"
	r3a4: 	.asciiz "1) Heroin\n2) Meth\n3) Weed\n4) Ecstasy\n"
	r3a5: 	.asciiz "1) The Green City\n2) The Big Apple\n3)The Windy City\n4) The Electric City\n"
	r3a6: 	.asciiz "1) 1 month\n2) 6 months\n3) 1 year\n4) 3 years\n"
	r3a7: 	.asciiz "1) Moe, duh!\n2) Homer\n3) Barney\n4) Carl\n"	
	r3a8: 	.asciiz "1) Gilly \n2) Cersei\n3) Ygritte\n4) The Red Witch\n"
	r3a9: 	.asciiz "1) Stealing from the patients\n2) Being a Nazi\n3) Being a witch\n4) Being the devil\n"	
	r3a10: 	.asciiz "1) Brown\n2) Green\n3) Hazel\n4) Blue\n"	
	r3a11: 	.asciiz "1) 5\n2) 8\n3) 15\n4) 10\n"	
	r3a12: 	.asciiz "1) Mrs. Lady Lovely Locks \n2) Mr. Moooosic \n3) Randina\n4) Captain Record (of the U.S.S Phonograph)\n"
	
	# Money messages
	m1:	.asciiz "You won $100! Great start. "
	m2: 	.asciiz "You won $500! I'm impressed. "
	m3: 	.asciiz "You won $1000! WHOOOSSH. "
	m4: 	.asciiz "You won $2000! you're getting there. "
	m5: 	.asciiz "You won $6000! time to shine. "
	m6: 	.asciiz "You won $12000! we stan. "
	m7: 	.asciiz "You won $25000! Legendary. "
	m8: 	.asciiz "You won $32000! someone got their A game. "
	m9: 	.asciiz "You won $64000! so close yet so far. "
	m10: 	.asciiz "You won $125000! we got this. "
	m11: 	.asciiz "You won $500000! lets go one more time. "
	m12: 	.asciiz "You won 1 MILLION! CONGRATULATIONS!!! "
.text
start:
 	# Display the Main Menu
 	la	$a0, menu
 	li	$v0, 4 
 	syscall
 	
 	# Prompt the user to enter choice
 	la	$a0, choiceMsg
 	li	$v0, 4 
 	syscall
 	
 	# read user input and store in $t0
 	jal	readNum
 	move	$t0, $v0
  
   	li	$a2, 50    # Size
   	
   	## INPUT VALIDATION ##
   	# IF choice equal to -1, exit
   	beq $v0, -1, end
   	# IF choice is less than or equal zero, go back to start
   	blez	$v0, start	
   	li	$t4, 3
   	# IF choice is greater than 5, go back to start
   	bgt	$v0, $t4, start 
   	la	$a1, menuArr		# get the address
   	sll	$t0, $v0, 2 		# buffer 
   	add	$t1, $a1, $t0 		# pointer
   	lw	$t2, 0($t1) 
   	# based on user input, go to specific case	
   	jr 	$t2 
   	
   	
case1:
	# Display Second Menu
 	la $a0, menu2
 	li $v0, 4 
 	syscall
 	
 	# Prompt user to enter choice
 	li $v0, 5
 	syscall
 	
 	## INPUT VALIDATION ##
 	# IF choice is -1, exit
 	beq $v0, -1, end	
 	# IF choice is lesser than 0, go back to case1
 	blez	$v0, case1
 	li	$t4, 4
   	# IF choice is greater than 5, go back to case1
   	bgt	$v0, $t4, case1 
 	
 	# based on user input
 	beq $v0, 1,round1
	beq $v0, 2,round2
	beq $v0, 3,round3
	beq $v0, 4, start

# General Knowledge Questions
round1:
	question1: 
 		# Print question 1
		la 	$a0, q1
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 1
		la 	$a0, a1
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		# IF answer is incorrect, branch
 		bne $t0, 2, wrong
 		# IF answer is correct
 		lw	$t3, score1
 		# increment score to $ 100
 		addi	$t3, $t3, 100
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m1
 		li 	$v0, 4
 		syscall
 		
 		jal continue
 		
		bne $v0, 1, printScore
		j question2
		
	question2:
 		# Print question 2
		la 	$a0, q2
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 2
		la 	$a0, a2
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		# IF answer is incorrect, branch
 		bne $t0, 1, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m2
 		li 	$v0, 4
 		syscall
 		# increment score to $ 500
 		addi	$t3, $t3, 400
 		jal continue
 		
		bne $v0, 1, printScore
		j question3
		
	question3:
 		# Print question 3
		la 	$a0, q3
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 3
		la 	$a0, a3
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		# IF answer is incorrect, branch
 		bne $t0, 4, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m3
 		li 	$v0, 4
 		syscall
 		# increment score to $ 1000
 		addi	$t3, $t3, 500
 		jal continue
 		
		bne $v0, 1, printScore
		j question4
		
	question4:
 		# Print question 4
		la 	$a0, q4
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 4
		la 	$a0, a4
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 4, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m4
 		li 	$v0, 4
 		syscall
 		# increment score to $ 2000
 		addi	$t3, $t3, 1000
 		
 		jal continue
		bne $v0, 1, printScore
		j question5
		
	question5: 
 		# Print question 5
		la 	$a0, q5
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 5
		la 	$a0, a5
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 2, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m5
 		li 	$v0, 4
 		syscall
 		
 		# increment score to $ 6000
 		addi	$t3, $t3, 4000
 		jal continue
 		
		bne $v0, 1, printScore
		j question6
		
	question6:
 		# Print question 6
		la 	$a0, q6
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 6
		la 	$a0, a6
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 3, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m6
 		li 	$v0, 4
 		syscall
 		# increment score to $ 12000
 		addi	$t3, $t3, 6000
 		jal continue
 		
		bne $v0, 1, printScore
		j question7
		
	question7:
 		# Print question 7
		la 	$a0, q7
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 7
		la 	$a0, a7
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 3, wrong
 		#IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m7
 		li 	$v0, 4
 		syscall
 		# increment score to $ 25000
 		addi	$t3, $t3, 13000
 		jal continue
 		
		bne $v0, 1, printScore
		j question8
		
	question8:
 		# Print question 8
		la 	$a0, q8
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 8
		la 	$a0, a8
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 2, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m8
 		li 	$v0, 4
 		syscall
 		# increment score to $ 32000
 		addi	$t3, $t3, 7000
 		jal continue
 		
		bne $v0, 1, printScore
		j question9
		
	question9: 
 		# Print question 9
		la 	$a0, q9
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 9
		la 	$a0, a9
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 4, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m9
 		li 	$v0, 4
 		syscall
 		# increment score to $ 640000
 		addi	$t3, $t3, 32000
 		jal continue
 		
		bne $v0, 1, printScore
		j question10
		
	question10:
 		# Print question 10
		la 	$a0, q10
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 10
		la 	$a0, a10
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 1, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m10
 		li 	$v0, 4
 		syscall
 		# increment score to $ 125000
 		addi	$t3, $t3, 61000
 		jal continue
 		
		bne $v0, 1, printScore
		j question11
		
	question11:
 		# Print question 11
		la 	$a0, q11
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 11
		la 	$a0, a11
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 2, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m11
 		li 	$v0, 4
 		syscall
 		# increment score to $ 500000
 		addi	$t3, $t3, 375000
 		jal continue
 		
		bne $v0, 1, printScore
		j question12
		
	question12:
 		# Print question 12
		la 	$a0, q12
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 12
		la 	$a0, a12
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0 
 		
 		# IF answer is incorrect, branch
 		bne $t0, 4, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m12
 		li 	$v0, 4
 		syscall
 
 		# IF the user wins, branch
 		jal 	playAgain
 		# If user decides not to continue
		bne	$v0, 2, case1
		j	case3
 		

# Harry Potter Questions
round2:
	r2question1: 
 		# Print question 1
		la 	$a0, r2q1
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 1
		la 	$a0, r2a1
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 4, wrong
 		# IF answer is correct
 		lw	$t3, score2
 		# increment score to $ 100
 		addi	$t3, $t3, 100
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m1
 		li 	$v0, 4
 		syscall
 		
 		jal continue
 		
		bne $v0, 1, printScore
		j r2question2
		
	r2question2:
 		# Print question 2
		la 	$a0, r2q2
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 2
		la 	$a0, r2a2
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 3, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m2
 		li 	$v0, 4
 		syscall
 		# increment score to $ 500
 		addi	$t3, $t3, 400
 		jal continue
 		
		bne $v0, 1, printScore
		j r2question3
		
	r2question3:
 		# Print question 3
		la 	$a0, r2q3
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 3
		la 	$a0, r2a3
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 1, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m3
 		li 	$v0, 4
 		syscall
 		# increment score to $ 1000
 		addi	$t3, $t3, 500
 		jal continue
 		
		bne $v0, 1, printScore
		j r2question4
		
	r2question4:
 		# Print question 4
		la 	$a0, r2q4
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 4
		la 	$a0, r2a4
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 2, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m4
 		li 	$v0, 4
 		syscall
 		# increment score to $ 2000
 		addi	$t3, $t3, 1000
 		jal continue
 		
		bne $v0, 1, printScore
		j r2question5
		
	r2question5: 
 		# Print question 5
		la 	$a0, r2q5
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 5
		la 	$a0, r2a5
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 2, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m5
 		li 	$v0, 4
 		syscall
 		# increment score to $ 6000
 		addi	$t3, $t3, 4000
 		jal continue
 		
		bne $v0, 1, printScore
		j r2question6
		
	r2question6:
 		# Print question 6
		la 	$a0, r2q6
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 6
		la 	$a0, r2a6
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 1, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m6
 		li 	$v0, 4
 		syscall
 		# increment score to $ 12000
 		addi	$t3, $t3, 6000
 		jal continue
 		
		bne $v0, 1, printScore
		j r2question7
		
	r2question7:
 		# Print question 7
		la 	$a0, r2q7
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 7
		la 	$a0, r2a7
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 3, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m7
 		li 	$v0, 4
 		syscall
 		
 		# increment score to $ 25000
 		addi	$t3, $t3, 13000
 		jal continue
 		
 		# User decided to not continue
		bne $v0, 1, printScore
		j r2question8
		
	r2question8:
 		# Print question 8
		la 	$a0, r2q8
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 8
		la 	$a0, r2a8
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 2, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m8
 		li 	$v0, 4
 		syscall
 		
 		# increment score to $ 320000
 		addi	$t3, $t3, 7000
 		jal continue
 		
		bne $v0, 1, printScore
		j r2question9
		
	r2question9: 
 		# Print question 9
		la 	$a0, r2q9
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 9
		la 	$a0, r2a9
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 1, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m9
 		li 	$v0, 4
 		syscall
 		# increment score to $ 64000
 		addi	$t3, $t3, 32000
 		jal continue
 		
		bne $v0, 1, printScore
		j r2question10
		
	r2question10:
 		# Print question 10
		la 	$a0, r2q10
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 10
		la 	$a0, r2a10
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 1, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m10
 		li 	$v0, 4
 		syscall
 		# increment score to $ 125000
 		addi	$t3, $t3, 61000
 		jal continue
 		
		bne $v0, 1, printScore
		j r2question11
		
	r2question11:
 		# Print question 11
		la 	$a0, r2q11
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 11
		la 	$a0, r2a11
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal	readNum
 		move	$t0, $v0
 		# IF answer is incorrect, branch
 		bne	$t0, 4, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		# print money message
 		la 	$a0, m11
 		li 	$v0, 4
 		syscall
 		
 		# increment score to $ 500000
 		addi	$t3, $t3, 375000
 		# Ask the user if he/she wants to continue
 		jal	continue
 		
 		# If user decides not to continue
		bne	$v0, 1, printScore
		j	r2question12
		
	r2question12:
 		# Print question 12
		la 	$a0, r2q12
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 12
		la 	$a0, r2a12
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		#IF answer is incorrect, branch
 		bne	$t0, 2, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		# Print the money message
 		la 	$a0, m12
 		li 	$v0, 4
 		syscall

 		# IF the user wins, branch
 		jal 	playAgain
 		# If user decides not to continue
		bne	$v0, 2, case1
		j	case3
 		
# TV Show Questions
round3:
	r3question1: 
 		# Print question 1
		la 	$a0, r3q1
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 1
		la 	$a0, r3a1
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 3, wrong
 		# IF answer is correct
 		lw	$t3, score2
 		# increment score to $ 100
 		addi	$t3, $t3, 100
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m1
 		li 	$v0, 4
 		syscall
 		
 		jal continue
 		
		bne $v0, 1, printScore
		j r3question2
		
	r3question2:
 		# Print question 2
		la 	$a0, r3q2
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 2
		la 	$a0, r3a2
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 2, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m2
 		li 	$v0, 4
 		syscall
 		# increment score to $ 500
 		addi	$t3, $t3, 400
 		jal continue
 		
		bne $v0, 1, printScore
		j r3question3
		
	r3question3:
 		# Print question 3
		la 	$a0, r3q3
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 3
		la 	$a0, r3a3
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 1, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m3
 		li 	$v0, 4
 		syscall
 		# increment score to $ 1000
 		addi	$t3, $t3, 500
 		jal continue
 		
		bne $v0, 1, printScore
		j r3question4
		
	r3question4:
 		# Print question 4
		la 	$a0, r3q4
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 4
		la 	$a0, r3a4
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 4, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m4
 		li 	$v0, 4
 		syscall
 		# increment score to $ 2000
 		addi	$t3, $t3, 1000
 		jal continue
 		
		bne $v0, 1, printScore
		j r3question5
		
	r3question5: 
 		# Print question 5
		la 	$a0, r3q5
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 5
		la 	$a0, r3a5
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 4, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m5
 		li 	$v0, 4
 		syscall
 		# increment score to $ 6000
 		addi	$t3, $t3, 4000
 		jal continue
 		
		bne $v0, 1, printScore
		j r3question6
		
	r3question6:
 		# Print question 6
		la 	$a0, r3q6
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 6
		la 	$a0, r3a6
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 1, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m6
 		li 	$v0, 4
 		syscall
 		# increment score to $ 12000
 		addi	$t3, $t3, 6000
 		jal continue
 		
		bne $v0, 1, printScore
		j r3question7
		
	r3question7:
 		# Print question 7
		la 	$a0, r3q7
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 7
		la 	$a0, r3a7
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 2, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m7
 		li 	$v0, 4
 		syscall
 		
 		# increment score to $ 25000
 		addi	$t3, $t3, 13000
 		jal continue
 		
 		# User decided to not continue
		bne $v0, 1, printScore
		j r3question8
		
	r3question8:
 		# Print question 8
		la 	$a0, r3q8
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 8
		la 	$a0, r3a8
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 3, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m8
 		li 	$v0, 4
 		syscall
 		
 		# increment score to $ 320000
 		addi	$t3, $t3, 7000
 		jal continue
 		
		bne $v0, 1, printScore
		j r3question9
		
	r3question9: 
 		# Print question 9
		la 	$a0, r3q9
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 9
		la 	$a0, r3a9
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 2, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m9
 		li 	$v0, 4
 		syscall
 		# increment score to $ 64000
 		addi	$t3, $t3, 32000
 		jal continue
 		
		bne $v0, 1, printScore
		j r3question10
		
	r3question10:
 		# Print question 10
		la 	$a0, r3q10
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 10
		la 	$a0, r3a10
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		# IF answer is incorrect, branch
 		bne $t0, 4, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		la 	$a0, m10
 		li 	$v0, 4
 		syscall
 		# increment score to $ 125000
 		addi	$t3, $t3, 61000
 		jal continue
 		
		bne $v0, 1, printScore
		j r3question11
		
	r3question11:
 		# Print question 11
		la 	$a0, r3q11
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 11
		la 	$a0, r3a11
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal	readNum
 		move	$t0, $v0
 		# IF answer is incorrect, branch
 		bne	$t0, 4, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		# print money message
 		la 	$a0, m11
 		li 	$v0, 4
 		syscall
 		
 		# increment score to $ 500000
 		addi	$t3, $t3, 375000
 		# Ask the user if he/she wants to continue
 		jal	continue
 		
 		# If user decides not to continue
		bne	$v0, 1, printScore
		j	r3question12
		
	r3question12:
 		# Print question 12
		la 	$a0, r3q12
 		li 	$v0, 4
 		syscall
 	
 		# Print answer options for 12
		la 	$a0, r3a12
 		li 	$v0, 4
 		syscall 
 	
 		# Print answer msg
		la 	$a0, ans
 		li 	$v0, 4
 		syscall
 	
 		# read user input and store in $t0
 		jal readNum
 		move $t0, $v0
 		
 		#IF answer is incorrect, branch
 		bne	$t0, 1, wrong
 		# IF answer is correct
 		la 	$a0, CorrectMsg
 		li 	$v0, 4
 		syscall
 		# Print the money message
 		la 	$a0, m12
 		li 	$v0, 4
 		syscall

 		# IF the user wins, branch
 		jal 	playAgain
 		# If user decides not to continue
		bne	$v0, 2, case1
		j	case3
		
# IF user wants to continue	
continue:	
	# Read user input and store in choice
	la 	$a0, contMsg 
	li 	$v0, 4
	syscall
	li 	$v0, 5
	syscall
	# IF choice equal to -1, exit
   	beq $v0, -1, end
   	## INPUT VALIDATION ##	
 	# IF choice is lesser than 0, go back to continue
 	blez	$v0, continue
 	li	$t4, 3
   	# IF choice is greater than 5, go back to continue
   	bgt	$v0, $t4, continue 
	# return user input
	jr	$ra
	
# IF user does not want to continue
printScore:
	la 	$a0, scoreMsg
 	li 	$v0, 4
 	syscall
 	# print the score
 	move 	$a0, $t3
 	li 	$v0, 1
 	syscall
 	# set the score back to zero
 	add	$t3, $zero, $zero
 	# jump back to the main menu
 	j	start

# User enters a wrong answer	
wrong:
	la 	$a0, WrongMsg
 	li 	$v0, 4
 	syscall
 	# print score
 	j 	printScore

# If the user wins
playAgain: 
	# Ask user if he/she wants to play again
	la 	$a0, replayMsg
 	li 	$v0, 4
 	syscall
 	li 	$v0, 5
	syscall
	# IF choice equal to -1, exit
   	beq $v0, -1, end
   	## INPUT VALIDATION ##	
 	# IF choice is lesser than 0, go back to win
 	blez	$v0, playAgain
 	li	$t4, 3
   	# IF choice is greater than 5, go back to win
   	bgt	$v0, $t4, playAgain 
	# return user input
	jr	$ra
		  
case2:
	# Display rules
 	la	$a0, rulesMsg
 	li	$v0, 4 
 	syscall
 	j	start
 	
# User wants to exit
case3:
	# print the end message
	la	$a0, endMsg
	li	$v0, 4
	syscall
	j	end

# Read the user choice
readNum:
 	li	$v0, 5 
   	syscall 
   	# IF choice equal to -1, exit
   	beq $v0, -1, end
   	# return user input
	jr	$ra

# end of main
end:
	li 	$v0, 10
 	syscall
