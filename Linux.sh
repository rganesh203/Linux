#1. Linux ls command options
	ls option	Description
	ls -a	In Linux, hidden files start with . (dot) symbol and they are not visible in the regular directory. The (ls -a) command will enlist the whole list of the current directory including the hidden files.
	ls -l	It will show the list in a long list format.
	ls -lh	This command will show you the file sizes in human readable format. Size of the file is very difficult to read when displayed in terms of byte. The (ls -lh)command will give you the data in terms of Mb, Gb, Tb, etc.
	ls -lhS	If you want to display your files in descending order (highest at the top) according to their size, then you can use (ls -lhS) command.
	ls -l - -block-size=[SIZE]	It is used to display the files in a specific size format. Here, in [SIZE] you can assign size according to your requirement.
	ls -d */	It is used to display only subdirectories.
	ls -g or ls -lG	With this you can exclude column of group information and owner.
	ls -n	It is used to print group ID and owner ID instead of their names.
	ls --color=[VALUE]	This command is used to print list as colored or discolored.
	ls -li	This command prints the index number if file is in the first column.
	ls -p	It is used to identify the directory easily by marking the directories with a slash (/) line sign.
	ls -r	It is used to print the list in reverse order.
	ls -R	It will display the content of the sub-directories also.
	ls -lX	It will group the files with same extensions together in the list.
	ls -lt	It will sort the list by displaying recently modified filed at top.
	ls ~	It gives the contents of home directory.
	ls ../	It give the contents of parent directory.
	ls --version	It checks the 
#2. cd command in Linux
	cd ~ or cd by itself will always bring the user to the home directory.
	cd . will allow the user to stay in the similar directory they are in currently.
	cd ~username will allow the user to stay in the home directory of the username.
	cd dir (not with /) will allow the user to stay in a subdirectory.
	cd .. will bring the user above one directory.
	cd - will change the user to the old directory.
	cd my\ books (or) "my books" (or) 'my books'
	cd ../videos go to directory
	
#3. cat command in Linux
	How Does the Cat Command Work?
	Using the “cat” command, you can create a file, view the file content, concatenate the files, and redirect the file output. The syntax of this command as follows:

	$ cat [option] [filename]
	Use the previous command if you are present in the same directory. Otherwise, mention the path to that file as follows:

	$ cat [option] [path/to/file]
	Different options of the cat command are listed in the following:

	Options	Description
	-n	To display the line number of file content
	-T	To display the tab-separated characters in a line-e
	-e	To display the “$” at the end of lines
	-s	You can omit the empty lines from the output.
	-a	To display all the file content
	To explore more options, use the following “help” utility:

	$ cat --help
	#Example 1: Display the Content of All Files
	The common usage of the cat command is displaying the file contents. To display the file contents to a Terminal, simply type “cat” and the filename as follows:

	$ cat [filename]
	To display all the files in a current directory, use the wildcard character with the cat command as follows:

	$ cat *
	To display only the contents of the text files in a directory, enter the following command:

	$ cat *.txt
	#Example 2: Display Multiple Files
	You can also combine and display the contents of multiple files together in the Terminal using the cat command. To display multiple files simultaneously, use the following syntax:

	$ cat sample.txt test.txt
	#Example 3: Copy the Output of One File to Another
	It can also be utilized to copy the output of one file to another file. If not found, it first creates it. Otherwise, it overwrites the targeted file.

	To copy the output of a source file to another file, use the following syntax:

	$ cat [source_file] > [destination_file]
	An example of this is to copy the output of a testfile1 to another file named testfile_backup as follows:

	$ cat [testfile1] > [testfile_backup]
	This command first creates the testfile_backup file and then copies the contents of testfile1 to it.

	#Example 4: Append the Output of a File to Another File
	Instead of overwriting the output of a targeted file in the pervious example, you can also make the cat command to append the output:

	$ cat [source_file] >> [destination_file]
	It creates the destination file if it does not already exist. Otherwise, it appends the output.

	Copy Multiple Files to Another Text File/Concatenate the Files
	The cat command combines several files into a single file. The following syntax can be used to concatenate file1, file2, and file3 and save them to another file named file4.txt:

	$ cat [file1] [file2] [file3] > [file4]
	For instance, we want to concatenate the output of /etc/hostname, /etc/resolv.conf, and the /etc/hosts file to another file named network.txt:

	$ cat /etc/hostname /etc/resolv.conf /etc/hosts > network.txt
	#Example 5: Display the Line Numbers in File
	To display the line numbers to the output of a file, simply use the -n flag as follows:

	$ cat -n [filename]
	For instance, if you are viewing a file which contains the list of items, you can use the -n flag to display those items with a number. Remember that empty lines are also numbered as follows:

	$ cat -n test.txt
	If you do not want to number the empty lines, use the -b flag as follows:

	$ cat -b test.txt
	#Example 6: Create a File
	To create a file through the cat command, the following syntax can be used for the purpose:

	$ cat > [filename]
	After entering the previous command, enter the text that you want to store in the file. Once done, save and exit. After that, you can view the contents of your newly created file by executing the following command in the terminal:

	$ cat > office.txt
	#Example 7: Sort the Output
	You can also combine the sort with the cat command to sort the output alphabetically as follows:

	$ cat test.txt | sort
	#Example 8: Remove the Consecutive Empty Lines
	Sometimes, the file contains consecutive empty lines that you do not want to print. The cat command allows merging those consecutive empty lines and shows them as one empty line:

	Use the following command syntax to remove the repeated empty lines:

	$ cat -s [filename]
	For instance, we have the following file with consecutive empty lines:

	$ cat -s test.txt
	#Example 9: Display the Tab Characters
	Sometimes, you have to remove the tabs from your files. Cat command can help you to find the tabs on your file using the -t flag as follows:

	$ cat -t test.txt
	#Example 10: Print the Output of a File
	Another popular use of the cat command is in the printing contents of a document. For instance, to print the output of a file to a printing device named /dev/lp, the following syntax is used:

	$ cat [filename] > /dev/lp

#5. mkdir Command

Options	Description
mkdir -p, -parents	Add directory including its sub directory.
mkdir -v, -verbose	Print a message for each created directory.
mkdir -m -mode=MODE	Set access privilege.
-Z	It sets the SELinux security context of all created directories to their default type.
--context[=CTX]	It works like the -Z option. If the CTX is mentioned, it sets the SMACK or SELinux security context to CTX.
--version	It shows the version number and some details of the license and then exits.
--help	It shows the help-related details and then exits.

#6. rm and rmdir commands for linux
rm Command
The rm command in Linux removes files and directories.

It uses the following syntax:

rm [options] [file or directory name]

Note: To remove multiple files or directories using the rm command, add multiple file or directory names, separated by blank spaces.

The different rm command options include:

-f: Forces the removal of all files or directories.
-i: Prompts for confirmation before removing.
-I: Prompts once before removing more than three files or when removing recursively.
-r: Removes directories and their content recursively.
-d: Removes empty directories.
-v: Provides a verbose output.
--help: Displays the help text.
--version: Displays the command version.

rmdir Command
The Linux rmdir command removes empty directories only. The command uses the following syntax:

rmdir [options] [directory name]

The rmdir command includes the following options:

--ignore-fail-on-non-empty: Doesnt show an error message when trying to remove a non-empty directory.
-p: Removes the directory along with its parent in the hierarchy.
-v: Provides a verbose output.
--help: Displays help text.
--version: Displays the command version.

#7. cp Command
$ cp [options] [source of file/directory where it is being copied] [destination of file/directory where it has to be pasted]
The general syntax is simple to understand, with the use of cp command, we can also use different options of copy, some of them are:

Options	Description
-b	This option will make the backup of all the contents of the file
-f	This option is used to forcly copied all the contents of the file from source to destination
-i	This option will confirm from you before copying the files by displaying a message
-n	It will not overwrite the file if any file is already present in the destination path
Basic Syntax of cp command
To use the cp command, follow the syntax, which is given below:

$ cp [flags] [source-file] [destination-file]
The source file can contain more than one file and directories in the above syntax, and the destination file can only be a single file or a directory.

Important Note: The user should have read permission on a source file while copying files and directories, and the user must have write permission on the destination file or directory. Otherwise, an error of ‘permission denied’ will display.

Use of cp command
There are the following uses of the ‘cp command’ that we will now explain with some examples:

Copy file into the current working directory
To copy a file into the current directory, execute the following command on the terminal:

Example
For example, by running the below-mentioned command to you can copy a test_file.txt to the backup_file.txt:

$ cp test_file.txt backup_file.txt
Copy file into another directory
To copy the file into another directory, define an absolute or relative directory path of the destination.

Example
For example, to copy test_file.txt to the /lookup directory, use the following command:

$ cp test_file.txt /lookup
In the above command, the file is copied with the same original file name. If you want to copy the file with a different name, then use the below-mentioned command:

$ cp test_file.txt /lookup/newtest_file.txt
The above command will copy the file with a new name ‘newtest_file.txt’ into the specified destination.

Copy directories into another directory
Using the option ‘-R’ or ‘-r’, you can copy all files, including sub-directories, into another directory.

Example
In the following example, we are coping personal_directory into the official_directory:

$ cp -R personal_directory official_directory
If you want to copy only files and all subdirectories rather than the source directory, use the following command with option ‘-RT’:

$ cp -RT personal_directory official_directory
The above command will copy the directory’s content, including all hidden files instead of the directory itself.

Copy multiple files in different directories
Using the following command, you can copy multiple files into different directories:

$ cp test_file.txt personal_directory test_file1.txt official_directory
Linux cp command with options
The following options you can use with the cp command to copy a file differently:

If the destination file exists, then the file will be overwritten by default. Using the ‘-n’ flag with the cp command tells us not to overwrite an already existing file.

Use the option ‘i’ to generate the prompt for confirmation forcefully.

$ cp -i test_file.txt test_file1.txt
If you only want to copy a file on the destination, if it doesn’t already exist then, use the following command with option ‘-u’:

$ cp -u test_file.txt test_file1.txt
To preserve the ownership and timestamps of a file, use the following command with option ‘-v’:

#8. mv Command
How Does the MV Command Work in Linux?
Linux offers the “mv” command to move the files and directories from one location to another. Still, you can use the “mv” command to rename a file or folder.

To move a single file to another directory, use the following syntax:

$ mv file/directory
The move command has different options that you can utilize when moving the files and directories. Let us have different examples to understand how to use it to move the files:

Options	Description
-v 	It overwrites the existing file or directory.
-i	It prompts whether to overwrite the existing file or not.
-f	It is used to forcefully overwrite the existing file without prompting.
-n	The files remain intact and your file will not be moved to the destination directory.
-b	It creates a backup file in the destination directory.
To explore more options of the “rm” command, users can utilize the “help” utility:

$ rm --help
The examples of the Linux mv command are as follows:

Example 1: Move a Single File or Directory from One Directory to Another
To move a single file or directory from one location to another, you need to tell “mv” where the file is and where to move it. Note that when you move a file to another directory where another file with the same name already exists, it overwrites the existing file.

For instance, to move a file named sample1.txt from the current directory to the ~/Document directory, the command is as follows:

$ mv sample1.txt ~/Documents/
 
Similarly, to move a directory from one location to another, use the following syntax:

$ mv directory1 directory2
For instance, to move a directory named testdir from the current directory to the ~/Documents directory, the command is as follows:

$ mv testdir/ ~/Documents/
 

Example 2: Move Multiple Files or Directories from One Directory to Another
To move multiple files from one directory to another, use the following syntax:

$ mv file1 file2 file3 dir1
For instance, to move the files named sample1.txt, sample2.txt, and sample3.txt from the current directory to the ~/Document directory, the command would be:

$ mv sample1.txt sample2.txt sample3.txt ~/Documents/
Similarly, to move multiple directories from one location to another, use the following syntax:

$ mv directory1 directory2 directory3 destination_directory
For instance, to move the directories named testdir1, testdir2, and testdir3 from the current directory to the ~/Documents directory, the command would be:

$ mv testdir1 testdir2 testdir3 ~/Documents/
Example 3: Rename a File and Directory
With the mv command, you can also rename a file or directory. To rename a file, use the following syntax:

$ mv file1 file2
For instance, to rename a file named sample1.txt to sample2.txt, the command would be:

$ mv sample1.txt sample2.txt
Note: If the file sample2.txt already exists, it is overwritten by the file sample1.txt.

To rename a directory, use the following syntax:

$ mv dircetory1 directory2
For instance, to rename a directory named testdir1/ to testdir2/, the command would be:

$ mv testdir1/ testdir2/
Example 4: Prompt Before Overwriting an Existing File
When you move a file to another directory where another file with the same name already exists, it overwrites the existing file at the destination directory by default. If you want, you can tell the mv command to ask before overwriting the existing file using the mv command’s -i option.

$ mv -i file1 directory
If you want to move the sample.txt file to ~/Documents directory which already contains a file named sample.txt, the -i option prompts you before overwriting the file.

$ mv -i sample.txt ~/Documents/
If you want to overwrite the file, hit y. Otherwise, it is canceled.

 

Example 5: Do Not Overwrite an Existing File
If you want, you can tell the mv command to never overwrite an existing file at the destination using the -n option as follows:

$ mv -n file1 directory
For instance, you want to move the sample.txt file to ~/Documents directory which already contains a file named sample.txt. If you use the -n option, it prevents the file from being overwritten.

$ mv -n sample.txt ~/Documents/
Example 6: Move Only If the Source File Is Newer Than the Destination
When moving a file to another directory that already contains the same file, you can tell the mv command to update the file at the destination only if the source file is newer than the file at the destination.

$ mv -u file1 directory
We have a sample2.txt file that exists in both the current directory and the ~/Documents directory. The sample.txt file that exists in the current directory is newer than the sample.txt file that exists in the ~/Documents directory as can be seen in the following screenshot.

Now, if we use the mv command -u option, the file at the destination is updated as the source file is more recent.

$ mv -u sample2.txt ~/Documents/
 

Example 7: Create a Backup of Existing Destination File
To avoid the already existing destination file being overwritten, you can also create its backup at the destination directory using the mv command’s -b option:

$ mv -b file1 directory
We have a test.txt file that exists in both the current directory and the ~/Documents directory. Before the test.txt file at the destination directory gets overwritten by the source file, you can create its backup using the -b option as follows:

$ mv -b test.txt ~/Documents/
It creates the backup file at the destination directory with the same name but with a tilde (~) appended to it.

That is all from the “mv” command.
	
#9. less command
Less Command Options
Without additional options, less displays the output in the default format and assumes default behavior. The options modify the output or change how less acts while processing the file.

The most used less command options are:

Option	Description
-E	less automatically exits upon reaching the end of file.
-f	Forces less to open non-regular files (a directory or a device-special file).
-F	Exit less if the entire file can be displayed on the first screen.
-g	Highlights the string last found using search. By default, less highlights all strings matching the last search command.
-G	Removes all highlights from strings found using search.
-i	Ignores case sensitivity during search.
-J	Displays a status column on the left side of the screen. The status column shows the lines that matched the current search and any lines marked using the m or M command.
-m	Instructs less to prompt verbosely (similar to more), showing the percentage into the file. By default, less prompts with a colon.
-M	Instructs less to prompt even more verbosely than more.
-n	Removes line numbers from the screen.
-N	Displays line numbers at the beginning of each line.
-o[file_name]	Causes less to copy its input to the specified file. This option applies only when the input file is a pipe (|), not an ordinary file. For existing files, less asks for confirmation before overwriting the file.
-p[pattern]	Instruct less to start at the first occurrence of the specified pattern in the input file.
-Q	Enforces quiet operation that silences the terminal bell.
-s	Merges consecutive blank lines into a single blank line.
-X	Disable clearing the screen after quitting less.
-z[n]	Changes the default scrolling window size to the specified n lines.
For a complete list of options, refer to the less help file by running:

less --help

#10.  touch command

The “touch” is a basic Linux command to create the empty files or change the file timestamps (last date or time of file access or modification).

Timestamps
Linux files have 3 timestamps: atime, mtime, and ctime.

atime:  It contains information on when the file content is read with tools or commands to display the file’s content like less, nano, vi, vim, cat, grep, head, etc. The atime timestamp changes and is updated every time the file is viewed.

mtime: It shows the last modification of a file’s content, including its name, but not its owner or permissions, only the file itself.

ctime: Like “mtime”, “ctime” also shows when a file is modified but it also gets updated when the ownership, group, or permission access on a file are changed. We can edit the atime and mtime but we can’t edit the ctime. The time gets updated when a file’s permissions are edited or when the files are really read or modified

Here are some basic examples of the touch command in Ubuntu 22.04 that explain the uses of this command.

Example 1: How to Create a New File
One of the basic usages of the touch command is generating new files. The following written command is the simplest and fastest way to create a file with the touch command. This method is used most often by system administrators.

$ touch file.txt
See the new file generated using the “ls” command as indicated in the output.

$ ls

A new empty file is generated.

Example 2: How to Create Multiple Files
Another usage or one may consider this an advantage of the touch command is that you can generate numerous files with just one command line.

$ touch filename1 filename2 filename3
Here, we generate three files.

Example 3: How to Evaluate the Modification Date and Time
For the purpose of evaluating the modification date and time of a file, you can use the stat command:

$ stat sample.txt

Now, let’s apply the touch command. Running the touch command on that particular file updates and displays the modification date and time of the file, making it the same as the date and time of the system.

$ touch sample.txt
The modification date and time of the file are equal to that of the system.

Example 4: How to Alter the Time and Date of File
Although, by default, the touch command makes the modification time of the file equal to that of the system as mentioned already. However, use the -t option to perform it manually.

$ touch -t 202212040957 sample.txt
Now, you can validate this change using the stat command.

$ stat sample.txt
The access time is equal to the modification time.

Example 5: How to Change the Access Time of File
Using the -a option along with the touch command allows you to alter the access time of a file:

$ touch -a sample.txt
The access time that is altered in the previous example is now updated.


AD
Example 6: How to Alter the Modification Time of the File
To do this, use the -m option to alter the modification time of a file.

$ touch -m sample.txt
The modification time which we changed previously is now updated.

Example 7: How to Equalize the Modification Time of Two Files
When you use the -r option along with the touch command, it basically references a particular file and equals the modification time of a file equal to that of the file that you referenced.

$ touch -r file.txt sample.txt
The modification time of “file.txt” is equal to “sample.txt”.

Example 8: How to Prevent Creating New Files While Updating the Modification Time
Using the -c or a –no-create option with the touch command prevents the creation of new files that do not already exist when updating the modification time of a file.

$ touch -c filename1 filename2 filename4
No new file is generated.

Example 9: How to Alter the Modification Time of Link
For the purpose of updating the modification time of a link instead of a file, use the -h or a –no-dereference option:

#12. nano command

How to Use Nano in Linux
From time to time, you find yourself having to write shell scripts or make changes to configuration files of running services. Vim (VI improved) is a widely used command-line editor. While it ships with numerous enhancements including syntax color coding, it has a steep learning curve and new users might find it difficult to use.
The GNU nano text editor is a user-friendly, free and open-source text editor that usually comes pre-installed in modern Linux systems. It packs with the very basic functionality that any command-line text editor should have such as search and replace, undo and redo, scrolling, & syntax highlighting.

How to Install Nano Text Editor
As we pointed out earlier, nano editor comes pre-installed in modern Linux systems. To verify if nano is installed, run:

$ nano --version
You should get the output as shown below:

However, if nano is not yet installed, here are some ways on how you can get it installed in your system:

For Ubuntu / Debian:

Run the command below to install nano.

$ sudo apt install nano
For RHEL/CentOS

For RedHat and CentOS based systems, run the command:

$ sudo yum install nano (For older versions)

$ sudo dnf install nano (For newer versions)
For Fedora

$ sudo dnf install nano

How to Create a File Using Nano Editor
$ nano file-name
For example, to create a simple text file called file1.txt, execute the command:

$ nano file1.txt
This opens up a blank nano editor with the file name at the top and a set of keyboard shortcuts for use with the command-line editor at the bottom of the console.

Commands are prefixed by the caret symbol (^) which represents the Ctrl key. For example, ^O implies that you press the Ctrl and O keys.

To get a list of all the keyboard shortcuts you can use with nano editor, press ^g or Ctrl + g.
Searching and Replacing Text
To search for a string in a text file, just hit Ctrl + w and thereafter, type the search keyword and press ENTER. In the example below, I’m searching for the string Allow in the /etc/ssh/sshd_config configuration file.
To proceed to the next matching string, just press Alt + w. To search and replace a string in a text file, hit Ctrl + \. You will be required to provide the string to be searched and replaced as shown below.

So, provide the keyword and press ENTER. In our example, we’re searching for the string UNIX and replacing it with the string Linux.
Once you hit ENTER, you will be prompted to provide the string to replace the search keyword as provided. Here, the string Linux is the string that will replace UNIX. Once again, hit ENTER.
Press ‘Y’ to confirm and press ENTER.
And finally, the keyword will be replaced.
Copying, Cutting and Pasting
To start copying text, move the cursor to the start of the text and hit Alt + a. Nano sets a selection mark from that point. Here, the cursor is positioned at the beginning of the first line.
Next, press the arrow forward key until the end of the text you want to copy. This will have the text highlighted as shown. Here, I have selected the entire line. If you want to cancel and start all over again, just hit Ctrl + 6.

To copy the text, press Alt + 6. To cut it, press Ctrl + k. Finally, to paste the text, move the cursor to your preferred location on the editor and hit Ctrl + u.
Saving & Exiting a File
To save a file, simply press the combination Ctrl + O. As you do so, make sure you have the write permissions which allow you to modify the file. Nano will require you to verify the file that you are saving the changes on.
Press ENTER to save the changes. You will get some information on the number of lines saved.

To exit the file press Ctrl + X.

13. 
pwd --present working directory

14. 
sudo apt-get install putty
sudo apt-get remove putty


