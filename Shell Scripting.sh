#1. Introduction
	#----> shell scripts are intepreted not compiled
	#----> cat /etc/shells
	sh--------> also known as Bourne Shell
	Bash------> (Bourne Again Shell)distributed with Linux and GNU operating systems.
	#Find the path to your bash shell.
	which bash

	#Create a file named hello_world.sh
	touch hello_world.sh #(extension is not necessary but good practice)

	ls -al 

	#In my case, the path is /usr/bin/bash and I will include this in the shebang.

	#Write the command.
	#We will echo "hello world" to the console.

	#Our script will look something like this:

	#! /usr/bin/bash
	echo "Hello World"

	#Edit the file hello_world.sh using a text editor of your choice and add the above lines in it.

	#Provide execution rights to your user.
	#Modify the file permissions and allow execution of the script by using the command below:

	chmod +x hello_world.sh
	chmod modifies the existing rights of a file for a particular user. We are adding +x to user u.

#2. variables and Comments
#this is a comment
	#1. system variables always uppercase
			./hello.sh
			echo $BASH 
			echo $	bash_version
			echo $HOME
			echo $PWD
	#2. user defined variables always lowercases
			name= mark
			echo the name is $name
			10val=10
			echo value $10val # variable cant start with integer.

#3. Read User Input
	#! /usr/bin/bash
	echo "enter name: "
	read name 
	echo "entered name : $name"

	echo "enter name: "
	read name1, name2, name3 
	echo "entered name : $name1, name2, name3 "

	read -p 'username : 'user_var
	echo "username :$user_var"

	read -p 'username : 'user_var
	read -sp "password :$pass_var" #-sp is nothing secure
	echo "username :$user_var"
	echo "password : $pass_var"
	
	echo "enter names :"
	read -a names 
	echo "names: ${names[0]}, ${names[1]}"
	
	echo "enter name :"
	read 
	echo "name :$REPLY"

#4. Pass Arguments to a Bash-Script
	echo $1 $2 $3 ' > echo $1 $2 $3'
	
	#Using list  
		args =("$@")
		echo $1 $2 $3
		echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
	# default variable
		echo $@
	# no. of arguements passed
		echo $#
			#Operators in Shell Scripts
			There are five basic operators in bash/shell scripting:
			Arithmetic Operators
			Relational Operators
			Boolean Operators
			Bitwise Operators
			File Test Operators
				Arithmetic Operators: These operators are used to perform normal arithmetics/mathematical operations. There are seven arithmetic operators:
				Addition (+): Binary operation used to add two operands.
				Subtraction (-): Binary operation used to subtract two operands.
				Multiplication (*): Binary operation used to multiply two operands.
				Division (/): Binary operation used to divide two operands.
				Modulus (%): Binary operation used to find remainder of two operands.
				Increment Operator (++): Unary operator used to increase the value of operand by one.
				Decrement Operator (–): Unary operator used to decrease the value of a operand by one
			Relational Operators: Relational operators are those operators which define the relation between two operands. They give either true or false depending upon the relation. There are six types:
				‘==’ Operator: Double equal to operator compares the two operands. It returns true if they are equal otherwise returns false.
				‘!=’ Operator: Not equal to operator returns true if the two operands are not equal otherwise it returns false.
				‘<' Operator: Less than operator returns true if first operand is less than second operand otherwise returns false.
				‘<=' Operator: Less than or equal to operator returns true if first operand is less than or equal to second operand otherwise returns false
				‘>’ Operator: Greater than operator returns true if the first operand is greater than the second operand otherwise returns false.
				‘>=’ Operator: Greater than or equal to operator returns true if first operand is greater than or equal to second operand otherwise returns false.
			Logical Operators: They are also known as boolean operators. These are used to perform logical operations. There are three types:
				Logical AND (&&): This is a binary operator, which returns true if both the operands are true otherwise returns false.
				Logical OR (||): This is a binary operator, which returns true if either of the operands is true or both the operands are true and returns false if none of them is false.
				Not Equal to (!): This is a unary operator which returns true if the operand is false and returns false if the operand is true.
			Bitwise Operators: A bitwise operator is an operator used to perform bitwise operations on bit patterns. There are six types.
				Bitwise And (&): Bitwise & operator performs binary AND operation bit by bit on the operands.
				Bitwise OR (|): Bitwise | operator performs binary OR operation bit by bit on the operands.
				Bitwise XOR (^): Bitwise ^ operator performs binary XOR operation bit by bit on the operands.
				Bitwise compliment (~): Bitwise ~ operator performs binary NOT operation bit by bit on the operand.
				Left Shift (<<): This operator shifts the bits of the left operand to left by number of times specified by right operand.
				Right Shift (>>): This operator shifts the bits of the left operand to right by number of times specified by right operand.
			File Test Operator: These operators are used to test a particular property of a file.
				-b operator: This operator checks whether a file is a block special file or not. It returns true if the file is a block special file, otherwise returns false.
				-c operator: This operator checks whether a file is a character special file or not. It returns true if it is a character special file otherwise returns false.
				-d operator: This operator checks if the given directory exists or not. If it exists then operators returns true otherwise returns false.
				-e operator: This operator checks whether the given file exists or not. If it exists this operator returns true otherwise returns false.
				-r operator: This operator checks whether the given file has read access or not. If it has read access then it returns true otherwise returns false.
				-w operator: This operator checks whether the given file has write access or not. If it has write then it returns true otherwise returns false.
				-x operator: This operator checks whether the given file has execute access or not. If it has execute access then it returns true otherwise returns false.
				-s operator: This operator checks the size of the given file. If the size of given file is greater than 0 then it returns true otherwise it returns false.
		
#5. If Statement ( If then , If then else, If elif else)
	# syntax
	if [condition]
	then 
		statement
	fi
	
	count=10
	if[$count -eq 9]
	then
		echo "condition is true"
	fi
		#Mulitiple line commenet 
			#Method 1: Using <<comment:
			#Method 2: Using  : ‘ : 
	
	count=10
	if[$count -gt 9]
	then
		echo "condition is true"
	fi	
	
	count=10
	if (($count -gt 9))
	then
		echo "condition is true"
	fi	
	
	word=abc
	if [$word == or = "abc"]
	then
		echo "condition is true"
	fi	
	
	word=a
	if [[$word < "b"]]
	then 
		echo "condition is 	true"
	else 
		echo "condition is false"
	fi
	
	word=a
	if [[$word == "b"]]
	then 
		echo "condition b is true"
	elif [[$word == "a"]]
	then 
		echo "condition a is true"
	else 
		echo "condition is false"
	fi

#6. File test operators
	a. 
		echo "enter the name of the file : \c" #blackslash keep cursor same line
		echo -e "enter the name of the file : \c"
		read file_name
		
		if [ -e $file_name ]
		then 
			echo "$file_name found"
		else
		then 
			echo "$file_name not found"
		fi
	b. 
		echo -e "enter the name of the file : \c"
		read file_name
		
		if [ -d $file_name ] # check the directory
		then 
			echo "$file_name found"
		else
		then 
			echo "$file_name not found"
		fi
	c. 
		echo -e "enter the name of the file : \c"
		read file_name
		
		if [ -b $file_name ] # check the blob file
		then 
			echo "$file_name found"
		else
		then 
			echo "$file_name not found"
		fi
	d. 
		echo -e "enter the name of the file : \c"
		read file_name
		
		if [ -c $file_name ] # check the character special 
		then 
			echo "$file_name found"
		else
		then 
			echo "$file_name not found"
		fi
	e.
		echo -e "enter the name of the file : \c"
		read file_name
		
		if [ -s $file_name ] # check the file empty or not 
		then 
			echo "$file_name not empty"
		else
		then 
			echo "$file_name empty"
		fi
		
	ls -l # file size.
	
	cat >test #> write in file(Overwrite)
	
	ctrl+d # exit cat command 
	
#7. How to append output to the end of text file
	
		echo -e "enter the name of the file : \c"
		read file_name		
		if [ -f $file_name ] # valid or check file write permission
		then 
			if [-w $file_name ]
			then 
				echo "type some text data. to quit press ctril+d"
				cat >> $file_name # >> append 
			else 
				echo "the file do not have write permission"				
			fi
		else
		then 
			echo "$file_name empty"
		fi
		
	chmod -w # remove permission
	chmod +w # write permission
	
	
#8. Logical 'AND' Operator
	# two ways use AND operator (&&, -a)
		1.
		age=25
		if [ "$age" -gt 18 ] && [ "$age -lt 30" ]
		then 
		 echo "valid age"
		 else
		 echo "age not valid"
		fi
		2. 
		age=25
		if [ "$age" -gt 18 ] -a [ "$age -lt 30" ]
		then 
		 echo "valid age"
		 else
		 echo "age not valid"
		fi
		3. 
		age=25
		if [[ "$age" -gt 18 && "$age -lt 30" ]]
		then 
		 echo "valid age"
		 else
		 echo "age not valid"
		fi
		
# 9. Logical 'OR' Operator
		1.
		age=60
		if [ "$age" -gt 18 ] || [ "$age -lt 30" ]
		then 
		 echo "valid age"
		 else
		 echo "age not valid"
		fi
		2.
		age=60
		if [ "$age" -gt 18 ] -o [ "$age -lt 30" ]
		then 
		 echo "valid age"
		 else
		 echo "age not valid"
		fi
		3. 
		age=60
		if [[ "$age" -gt 18  ||  "$age -lt 30" ]]
		then 
		 echo "valid age"
		 else
		 echo "age not valid"
		fi
			
# 10. Perform arithmetic operations	
	echo 1+1 # result is also 1+1 it is string
	 # the way to do it otherway
	 num1 =20 # variable
	 num2 =30 # Variable
	 echo $(( num1 + num2 ))
	 echo $(( num1 - num2 ))
	 echo $(( num1 * num2 ))
	 echo $(( num1 / num2 ))
	 echo $(( num1 // num2 ))  
	 echo $(( num1 % num2 )) # modulos
	
	 echo $(expr num1 + num2 ) 
	 echo $(expr num1 - num2 )
	 echo $(expr num1 * num2 ) # syntax error 
	 # the slotion is here
	 echo $(expr num1 \* num2 )
	 echo $(expr num1 / num2 )
	 echo $(expr num1 // num2 )
	 echo $(expr num1 % num2 )

# 11. Floating point math operations in bash | bc Command
	 
	 num1 =20.5 # variable
	 num2 =30 # Variable
	 echo $(( num1 + num2 ))
	 echo $(( num1 - num2 ))
	 echo $(( num1 * num2 ))
	 echo $(( num1 / num2 ))
	 echo $(( num1 // num2 ))  
	 echo $(( num1 % num2 )) # modulos
	# syntax erroe not support floating point 
	 echo $(expr num1 + num2 ) 
	 echo $(expr num1 - num2 )
	 echo $(expr num1 * num2 ) # syntax error 
	 # the slotion is here
	 echo $(expr num1 \* num2 )
	 echo $(expr num1 / num2 )
	 echo $(expr num1 // num2 )
	 echo $(expr num1 % num2 )
	 
	 # there is a slotion 
	 man bc# documentation
	 
	 num1 =20.5 # variable
	 num2 =30 # Variable
	 echo "20.5+5" | bc 
	 echo "20.5-5" | bc 
	 echo "20.5*5" | bc 
	 echo "20.5/5" | bc 
	 echo "20.5%5" | bc 
	 
	 #Division 
	 echo "scale=2;20.5/5" | bc
	 echo "$num1+num2" | bc
	 
	 # squareroot
	 num=27
	 echo "scale=2;sqrt($num)" | bc -l # -l is a libary to call sqrt function
	 echo "scale=2;2^($num)" | bc -l
	 
# 12. The case statement	 

	#syntax 
			'case expression in
				pattern1 )
					statements ;;
				pattern2 )
				Statement ;;
				...
			esac'
	
	vehicle =$1
	
	case vehicle in
		"car" )
			echo "the rent of car is 100 dollras" ;;
		"van" )
			echo "the rent of car is 50 dollras" ;;
		"biccle" )
			echo "the rent of car is 10 dollras" ;;
		"truck" )
			echo "the rent of car is 150 dollras" ;;
		* )
			echo "unknown vehicle" ;;
	esac

# 13. The case statement Example
	echo -e "enter some character :\c"
	read value 
	
		case $value in
		[a-z] )
			echo "user entered $value a to z" ;;
		[A-Z] )
			echo "user entered $value A to Z" ;;
		[0-9] )
			echo "user entered $value 0 to 9" ;;
		? ) #which expect special character
			echo "user entered $value special character" ;;
		* )
			echo "unknown vehicle" ;;
	esac
	
# 14. Array variables
	os= ('ubuntu' 'windows', 'kali')
	echo "${os[@]}"
	echo "${os[0]}"
	echo "${!os[@]}" # print indexes
	echo "${#os[@]}" # length of the Array
	os[3] ='mac' # adding element in array
	os[1]= 'mac' # Overwriterite
	unset os[2] #remove the element
	# in bash you can add element any index doesnt matter
	
	string=abcdefghijklmno
	echo "${string[@]}"
	echo "${string[0]}"
	
# 15. WHILE Loops
	#syntax
	while [ expression ];  
	do  
		command1;
		multiple commands;  
	done  
	
	n=1
	while [ $n -le 10 ]
	do 
		echo "$n"
	done 
	# the code run infinite loop 
	
	n=1
	while [ $n -le 10 ]
	do 
		echo "$n"
		n=$(( n+1 ))
	done 
		#or
		n=1
	while [ $n -le 10 ]
	do 
		echo "$n"
		n=$(( n++ ))
	done 
		#or
		n=1
	while [ $n -le 10 ]
	do 
		echo "$n"
		n=$(( ++n ))
	done 
		#or
			n=1
	while (( $n <= 10 ))
	do 
		echo "$n"
		n=$(( ++n ))
	done 

# 16. using sleep and open terminal with WHILE Loops
	#sleep
	n=1
	while [ $n -le 10 ]
	do 
		echo "$n"
		n=$(( ++n ))
		sleep 1 # pass 1 sec
	done 
	
	n=1
	while [ $n -le 3 ]
	do 
		echo "$n"
		n=$(( ++n ))
		gnome-terminal & 
	done 
	
		n=1
	while [ $n -le 3 ]
	do 
		echo "$n"
		n=$(( ++n ))
		xterm & 
	done 

# 17.  Read a file content in Bash
	 while read p
	 do 
		echo $p
	 done < hello.sh # < input redirection

	 cat hello.sh | while read p
	 do 
		echo $p
	 done 
	 
	 while IFS= read -r line #IFS is a special variable in Bash which is used to control the field separator for hyphenation and line parsing.
	 do 
		echo $line
	done < hello.sh
	
	ls /etc #The /etc directory is contained in the root directory
	
	 while IFS= read -r line
	 do 
		echo $line
	 done < /etc/host.conf
	 
# 18. UNTIL loop
		#Syntax
		'until command
		 do
			Statement(s) to be executed until command is true
		 done'
		n=1
		until [ $n -ge 10 ]	
		do
			echo $n 
			n=$(( n+1 ))
		done
			#or
		n=1
		until (( $n > 10 ))	
		do
			echo $n 
			n=$(( n+1 ))
		done

# 19. FOR loop	
		#Syntax:  
		'for variable in <value1 value2 ... valuen>
		do
			<command 1>
			<command 2>
			<etc>
		done'
		
		for i in 1 2 3 4 5 
		do 
			echo $i 
		done 
			#or
		for i in {1..10}
		do 
			echo $i 
		done 
			#or 
		for i in {1..10..2} # iterative Increment
		do 
			echo $i 
		done 
			#or 
		echo ${BASH_VERSION}
		for i in {1..10} 
		do 
			echo $i 
		done 	
			#or
		for i in (( i=0; i<10; i++ )) 
		do 
			echo $i 
		done 

# 20. use FOR loop to execute commands	
		for command in ls pwd date
		do 
			echo $command
		done 
			#or
		for command in ls pwd date
		do 
			echo "-----------$command--------------"
			$command
		done 
			#practical
		for item in *
		do 
			if [ -d $item ]
			then 
				echo $item
			fi
		done 


# 21. select loop
		#Syntax:

		select name in list
		do	
			# body to be executed for 
			# every value in the sequence.
		done
		
		select name in mark john tom ben
		do 
			echo "$name selected"
		done
		
		select name in mark john tom ben
		do 
			case $name in 
			mark)
				echo mark selectd ;;
			john)
				echo mark selectd ;; 
			tom)
				echo mark selectd ;;
			ben)
				echo mark selectd ;;
			*)
				echo "error please provide the no. between 1..4"
			esac 
		done
	
# 22. Break and continue
			#Break
		for i in (( i=0; i<10; i++ )) 
		do 
			if [ $i -gt 5 ]
			then 
				Break
			fi
			echo "$i"
		done 
			
			#continue
		for i in (( i=0; i<10; i++ )) 
		do 
			if [ $i -eq 3 -o $i -eq 6 ]
			then 
				continue
			fi
			echo "$i"
		done 
		
# 23. Functions
		# subroutine 
		'syntax 
		function name(){
		 Commands 
		 }
		 
		 name () {
			commands
		}'
		#a.
		function Hello(){
			echo "Hello"
		}
		
		quit () {
			exit}
			
		Hello # calling function
		#b.
		function Hello(){
			echo "Hello"
		}
		
		quit () {
			exit}
		
		quit 
		Hello
		echo "foo"
		#c.
		function Hello(){
			echo "Hello"
		}
		
		quit () {
			exit}
		Hello
		quit 
		
		echo "foo"
		#d.
		function Hello(){
			echo "Hello"
		}
		
		quit () {
			exit}
		Hello
		
		echo "foo"
		quit 
		#e.
		function print(){
			echo $1	# arguement
		}
		
		quit () {
			exit}
			
		print Hello
		
		echo "foo"
		quit 
		#f.
		function print(){
			echo $1	# arguement
		}
		
		quit () {
			exit}
			
		print Hello
		print world
		print Again
				
		echo "foo"
		quit 
		#g.
		function print(){
			echo $1 $2 $3	# arguement
		}
		
		quit () {
			exit}
			
		print Hello world Again		
		echo "foo"
		quit 
		
# 24. Local variables & Global variable
		#1
		function print(){
			name = $1 
			echo "the name is $name"
		}
		
		print max	
		
		echo "foo"
		#2.
		function print(){
			name = $1 #local variable
			echo "the name is $name"
		}
		name ="tom" # global variable
		echo "the name is $name"
		
		print max	
		
		echo "foo"
		#3.
		function print(){
			local name = $1 #local variable
			echo "the name is $name"
		}
		name ="tom" # global variable
		echo "the name is $name"
		
		print max	
		
		echo "foo"
		#4. 
		function print(){
			name = $1 #local variable
			echo "the name is $name"
		}
		name ="tom" #global variable
		echo "the name is $name : Before"
		
		print max	
		
		echo "the name is $name : After"
		#5.
		function print(){
			name = $1 #local variable
			echo "the name is $name"
		}
		name ="tom" #global variable
		echo "the name is $name : Before"
		
		print max	
		
		echo "the name is $name : After"

#25. Function Example
		usage() {
		echo "you need to provide an argument"
		echo "usage : $0 file-name"
		}
		is_file_exist(){
			local file="$1"
			[[ -f "$file"]] && return 0 || return 1 # check whether file 
		} 
		[[ $# -eq 0 ]] && usage	
		
		if (is _file_exist "$1")
		then 
			echo "file found"
		else
			echo "file not found"
		fi
		
# 26. Readonly command
		var =31
		readonly var #create variable
		var =50 
		echo "var => $var"
		
		#2.
		var =31
		readonly var 
		var =50 
		echo "var => $var"
		hello(){
			echo "hello world"
		}
		#3. 
		var =31
		readonly var 
		var =50 
		echo "var => $var"
		hello(){
			echo "hello world"
		}
		
		readonly -f hello # we cant Overwrite function over function
		
		hello(){
			echo "hello world Again"
		}
		
		readonly
		#4. 
		readonly -p
		readonly -f
		
		#5. 
		hello(){
			echo "hello"
		}
		readonly -p hello
		readonly -f 
#27. Signals and Traps
		#signal
		echo "pid is $$" # $$ is print PID
		while (( COUNT < 10 ))
		do 
			sleep 10
			(( COUNT++ ))
			echo $COUNT
		done 
		exit 0
		ctrl+c # interrupt Signal
		ctrl+z # stopped signal or suspended
		kill -9 # -9 command signal killing 
		#Trap command catch this kind of signal
		#1.
		trap "echo exit command detected" 0
		echo "hello world"
		exit 0
		#2. 
		trap "echo exit command detected" SIGNIT
		echo "pid is $$" # $$ is print PID
		while (( COUNT < 10 ))
		do 
			sleep 10
			(( COUNT++ ))
			echo $COUNT
		done 
		exit 0
		#3.
		trap "echo exit command detected" SIGKILL

		echo "pid is $$" # $$ is print PID
		while (( COUNT < 10 ))
		do 
			sleep 10
			(( COUNT++ ))
			echo $COUNT
		done 
		exit 0
		#4. 
		trap "echo exit command detected" SIGNIT SIGSTOP #exception
		echo "pid is $$"
		while (( COUNT < 10 ))
		do 
			sleep 10
			(( COUNT++ ))
			echo $COUNT
		done 
		exit 0
		#4.
		file=/home/test/Desktop/file.txt
		trap "rm -f $file; exit" 0 2 15
		
		echo "pid is $$" # $$ is print PID
		while (( COUNT < 10 ))
		do 
			sleep 10
			(( COUNT++ ))
			echo $COUNT
		done 
		exit 0
		#5. 
		file=/home/test/Desktop/file.txt
		trap "rm -f $file && echo file deleted: exit" 0 2 15
		
		echo "pid is $$" # $$ is print PID
		while (( COUNT < 10 ))
		do 
			sleep 10
			(( COUNT++ ))
			echo $COUNT
		done 
		exit 0
#28. How to debug a bash script
		bash -x ./hell0.sh
		set -x
		file=/home/test/Desktop/file.txt
		
		set +x
		trap "rm -f $file && echo file deleted: exit" 0 2 15
		
		echo "pid is $$" # $$ is print PID
		while (( COUNT < 10 ))
		do 
			sleep 10
			(( COUNT++ ))
			echo $COUNT
		done 
		exit 0
		
		
		
		
		
		
		
#integer comparison 
	-eq - is equal to - if [ "$a" -eq "$b" ]
	-ne - is not equal to - if [ "$a" -ne "$b" ]
	-gt - is greater than - if [ "$a" -gt "$b" ]
	-ge - is greater than or equal to - if [ "$a" -ge  "$b" ]
	-lt - is less than- if [ "$a" -lt "$b" ]
	-le - is less equal or equal to - if [ "$a" -le "$b" ]
	< - is less than- if [ "$a" < "$b" ]
	<= - is less than or eqaual to - if [ "$a" <= "$b" ]
	> - is greater than- if [ "$a" > "$b" ]
	>= - is greater than or eqaual to - if [ "$a" >= "$b" ]

#string comparison 
	= - is equal to - if [ "$a" = "$b" ]
	== - is equal to - if [ "$a" == "$b" ]
	!= - is not equal to - if [ "$a" != "$b" ]
	< - is less than- if [ "$a" < "$b" ]
	< - is less than, in ASCII alphabetical order - if [[ "$a" < "$b" ]]
	> - is greater than, in ASCII alphabetical order - if [ "$a" > "$b" ]
	-z - string is null, that is, has zero length.
# Arithmetic 
	OPERATOR		USAGE
		+		addition
		-		subtraction
		*		multiplication
		/		division
		**		exponentiation
		%		modulus





Run the script.
You can run the script in the following ways:

./hello_world.sh

bash hello_world.sh.

The Basic Syntax of Bash Scripting
Just like any other programming language, bash scripting follows a set of rules to create programs understandable by the computer. In this section, we will study the syntax of bash scripting.

How to define variables
We can define a variable by using the syntax variable_name=value. To get the value of the variable, add $ before the variable.
Arithmetic Expressions
Below are the operators supported by bash for mathematical calculations:

