# Name: Anjali Prabhala
# Assignment: HW 3
# Class: CS 3340 - 502

.data
	#variables to store user input/ result variables
	name:	.space 100
	height:	.word 0
	weight:	.word 0
	bmi:	.float 0.0
	
	#Given variables (with a predefined value)
	weightConst:	.word 703
	underWeightConst:	.float	18.5
	normalWeightConst:	.float	25.0
	overWeightConst:	.float	30.0
	
	#prompt messages
	promptName:	.asciiz "What is your name?\n"
	promptHeight:	.asciiz	"Please enter your height in inches: \n"
	promptWeight:	.asciiz	"Now enter your weight in pounds (round to a whole number): \n"
	
	#result messages
	bmiMessage:	.asciiz	"Your BMI is: "
	underWeightMsg:	.asciiz	"\nThis is considered underweight."
	overWeightMsg:	.asciiz	"\nThis is considered overweight."
	obeseMsg:	.asciiz	"\nThis is considered obese."
	normalWeightMsg:	.asciiz	"\nThis is a normal weight."
	
.text
main:
	# Prompt the user to enter name 
	la 	$a0, promptName
 	li 	$v0, 4
 	syscall
 	
 	# Read user input and store it in the variable name
	la 	$a0, name 
	li 	$a1, 100
	li 	$v0, 8
	syscall
	
	# Prompt the user to enter Height
	la $a0, promptHeight
	li $v0, 4 
	syscall
		
	# Read user input and store it in the variable Height
	li 	$v0, 5
	syscall
	sw 	$v0, height
	#load height into coprocessor 1: register $f0
	lwc1	$f0, height 
	
	
	# Prompt the user to enter Weight
	li 	$v0, 4
	la 	$a0, promptWeight
	syscall

		
	# Read user input and store it in the variable Weight
	li 	$v0, 5
	syscall
	sw 	$v0, weight 
	# load weight into coprocessor 1: register $f1
	lwc1	$f1, weight 	

	# load the weight constant into coprocessor 1: register $f2
	lwc1	$f2, weightConst	
		
	# Convert from integer (word) into single floating point before multiplication/ division
	cvt.s.w	$f3, $f0	# height in register $f3	
	cvt.s.w	$f4, $f1 	# weight in register $f4	
	cvt.s.w	$f5, $f2 	# weight constant in register $f5	
	
	# Calculate the bmi
	# weight stored in ($f4) = weight * 703 (stored in $f5)
	mul.s	$f4, $f4, $f5	
	
	# height stored in ($f3) = height * height
	mul.s	$f3, $f3, $f3	
	
	# bmi = weight / height and will be stored in $f6
	div.s	$f6, $f4, $f3	
	
	# Store the floating point value from register $f6 to bmi
	swc1	$f6, bmi	
	
	# Print the bmi message
	la	$a0, bmiMessage
	li	$v0, 4
	syscall
	
	# Print the bmi result
	lwc1	$f12, bmi
	li	$v0, 2
	syscall
	
	# Check if the bmi is normal weight, over weight, under weight or obese
	# load underWeightConst into coprocessor 1 - register $f7
	lwc1 $f7, underWeightConst	
	
	# IF ( bmi < 18.5), bmi is under weight
	c.lt.s $f6, $f7
	bc1t under	# if true, branch to label under
	bc1f normal	# if false, branch to label normal
	
under: 
	li $v0, 4
	la $a0, underWeightMsg	# print under weight message 
	syscall
	j exit			# break from the loop and end program
	
normal:
	# IF ( bmi < 25), bmi is under weight
	lwc1 $f8, normalWeightConst
	c.lt.s $f6, $f8
	bc1f over		# if false, branch to label over
	li $v0, 4
	la $a0, normalWeightMsg # print normal weight message 
	syscall
	j exit			# break from the loop and end program

over: 
	# IF ( bmi < 30), bmi is over weight
	lwc1 $f8, overWeightConst
	c.lt.s $f6, $f8
	bc1f obese		# if false, branch to label obese
	li $v0, 4
	la $a0, overWeightMsg	# print over weight message 
	syscall
	j exit			# break from the loop and end program
	
obese: 
	# ELSE
	li $v0, 4
	la $a0, obeseMsg	# print obese message
	syscall

#end the program
exit:
	li	$v0, 10		
	syscall			

	#---------------------------------------#
        #		TEST CASES		#
	#---------------------------------------#
	# 1. Normal weight case
	#   weight = 168lb and height = 69in
	#   bmi = 24.806553

	# 2. Over weight case
	#   weight = 147lb and height = 62in
	#   bmi = 26.883715
	
	# 3. Under weight case:
	#   weight = 110lb and height = 66in
	#   bmi = 17.752525 	
	
	# 4. Obese case
	#   weight = 159lb and height = 60in
	#   bmi = 31.049166 	
	

	
	
