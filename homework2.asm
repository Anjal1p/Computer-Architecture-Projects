# Name: Anjali Prabhala
# NetID: axp171330
# Assignment: HW 2
 
.data
	#messages
	promptMessage: 	.asciiz "Enter Some Text"
	goodbyeMessage: .asciiz "Good bye!"
	char:		.asciiz " characters\n"
	word:		.asciiz " words "
	
	#variable to store user input
	inputMessage:   .word 100
.text
#beginning of program 
main:
	li 	$v0, 54 #show a dialog box to user to get string input using syscall 54
	#load adresses in promptMessage and inputMessage
  	la 	$a0, promptMessage 
  	la 	$a1, inputMessage #*8change name
  	li 	$a2, 100
  	syscall 

	#Sets the function arguments with values
	la 	$a3, inputMessage
	#is user wants to exit out of the program
  	beq  	$a1, -2 ,exit 
 	beq  	$a1, -3 ,exit 
 	
  	#jumps back to the beginning of the loop	
  	jal count
  	
	#printing the results of number of words and and characters
	move $t0 , $v0 #used as a counter for checking the number of words in user input
  	li 	$v0, 4
  	la 	$a0, inputMessage #print the result message
  	syscall
  	
  	#-----------------------------
  	#print out the number of words
  	#-----------------------------
  	li 	$v0, 1
  	move 	$a0, $v1
  	syscall
  	
  	li 	$v0, 4
 	la 	$a0, word
  	syscall
  	
  	#-----------------------------------
  	#print out the number of characters
  	#-----------------------------------
  	li  	$v0, 1
  	addi 	$a0, $t0, 0
  	syscall
  	
  	li 	$v0, 4
  	la 	$a0, char
  	syscall
  	
  	#call the main function
  	#repeats until the user input is blank
  	j main  
  

count:
	#allocate space in the stack for 4 bytes for one value/variable
	addi 	$sp, $sp, -4
    	sw 	$s1, 0($sp) #savng value of $s1 on the stack
    	li 	$v0, -1 
    	li 	$v1, 1 

#beginnging of loop
StartLoop:
	lb   $s1, 0($a3)
   	beqz 	$s1, completed
    	addi 	$a3, $a3, 1
    	bne  	$s1, 32, increment #4 bytes = 32 bits
    	addi 	$v1, $v1, 1 #increment the word count

#increment counter
increment:
    addi 	$v0, $v0, 1 #increment the character count
    j     StartLoop #jump back to StartLoop

completed:
	#restore back from the stack
	lw,	$s1, 0($sp) #load the value from memory
	addi 	$sp, $sp, 4 #Clear used stack space
	jr 	$ra #go back to main function


exit: 
	#print Goodbye message box
	la	$a0, goodbyeMessage
	li	$v0, 59 #uses the dialog box to display goodByeMessage using syscall # 59
	syscall
	
	#end of main
	li	 $v0, 10
        syscall
        
	#---------------------------------------
        #TEST CASES
	#---------------------------------------
	#1. Given in HW 2: 
	#   User Input: "the lazy brown dog"
	#   Result: 4 words 18 characters
	
	#2. More words (to test if words are counted accurately)
	#   User Input: "My name is Anjali Prabhala. What is your name?"
	#   Result: 9 words 46 characters
	
	#2. Less words 
	#   User Input: "hello world"
	#   Result: 2 words 11 characters
	
	
