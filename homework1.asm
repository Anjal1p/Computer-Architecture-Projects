# Name: Anjali Prabhala
# Class: CS 3340 - 502

.data
	#3 variables for messages 
	NameMessage: 	.asciiz "What is your name?: "
	IntegerMessage: .asciiz "Please enter an integer between 1 - 100: "
	resultMessage: 	.asciiz "Your answers are: "
	
	#a variable to hold user's name
	name: 		.space 100
	
	#3 variables to hold input values: a, b, c
	a: 	.word 0
	b: 	.word 0
	c: 	.word 0
	
	#3 variables to hold output values
	ans1: 	.word 0 
	ans2: 	.word 0 
	ans3: 	.word 0 

.text
main:
	#prompt the user for their name 
 	li 	$v0, 4
 	la 	$a0, NameMessage
 	syscall
 	
 	#Getting user's input as text
 	# prepare the data to read user's input
 	li 	$v0, 8
 	la 	$a0, name
 	li 	$a1, 100 #User can enter 100 bytes/characters
 	syscall
 	
	#Prompt the user to enter an integer between 1-100
	li 	$v0, 4 # get the address for the register
	la	$a0, IntegerMessage #load the register with the prompt message
	syscall
	
	# Get the entered integer (a)
	li 	$v0, 5
	syscall
	sw 	$v0, a #store the integer in a
	
	#Store the age in a temp register $t0
	move 	$t0, $v0
	
	#Prompt the user to enter an integer.
	li 	$v0, 4 # get the address for the register
	la 	$a0, IntegerMessage #load the register with the prompt message
	syscall
	
	# Get the entered integer (b)
	li	 $v0, 5
	syscall
	sw	 $v0, b #store the integer in b
	
	#Store the age in a temp register $t1
	move 	$t1, $v0
	
	#Prompt the user to enter an integer.
	li 	$v0, 4 # get the address for the register
	la 	$a0, IntegerMessage #load the register with the prompt message
	syscall
	
	# Get the entered integer (c)
	li 	$v0, 5
	syscall
	sw 	$v0, c #store the integer in c
	
	#Store the age in a temp register $t2
	move 	$t2, $v0
	
	
	#Displays the name
 	li 	$v0, 4
 	la 	$a0, name
 	syscall
 	
	#Display the result message
	li 	$v0, 4
	la 	$a0, resultMessage
	syscall
	
	#performs a + b + c and store it in the register t3
	add $t3, $t0, $t1 
	add $t3, $t3, $t2
	sw 	$t3, ans1 #store the results in ans1
	
	#performs c + b - a and stores it in the register t4
	add $t4, $t2, $t1
	sub $t4, $t4, $t0
	sw 	$t4, ans2 #store the results in ans2
	
	#performs  (a + 2) + (b - 5) - (c – 1) and stores it in t8
	add $t5, $t0, 2 #a + 2
	sub $t6, $t1, 5 #b - 5
	sub $t7, $t2, 1 #c - 1
	add $t8, $t5, $t6 
	sub $t8, $t8, $t7
	sw 	$t8, ans3 #store the results in ans3
	
	#print out the number
	li 	$v0, 1
   	move	$a0, $t3
    	syscall

	# print space, 32 is ASCII code for space
	li 	$a0, 32
	li 	$v0, 11  # syscall number for printing character
	syscall
	
	#print out the number
	li 	$v0, 1
   	move 	$a0, $t4
    	syscall
    	
    	# print space, 32 is ASCII code for space
	li 	$a0, 32
	li 	$v0, 11  # syscall number for printing character
	syscall
    	
    	#print out the number
	li 	$v0, 1
   	move 	$a0, $t8
    	syscall
    	
	# end of main
	li 	$v0, 10
 	syscall
	
	#TEST CASES
	#---------------------------------------
	#1. All positive: a = 28, b = 35, c = 50
	# Output: 113 57 11
	
	#2. One negative: a = -15, b = 42, c = 21
	# Output: 48 78 4
	
	#3. Two negative: a = -16, b = 40, c = -33
	# Output: -9 23 55
	
	#4. All negative: a = -10, b = -20, c = -30
	# Output: -60 -40 -2
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
