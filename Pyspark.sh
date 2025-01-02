1. Hadoop two components
	1. HDFS 
	2. MapReduce(Disk Based Processing)---->it is not a ideal choice (lot I/O devices Involved)
		iterative (repititive calculations)
		High I/O
		Interactive
			hive 
			pig
			Impala

	a. spark doenst have any own cluster 
	b. spark relies on external cluster manager
	c. the more papular is cluster manager
		1. Hadoop Yarn ***(Historical Data) so many intermediate
		2. Mesos
		3. Stand Alone
		4. No-sql 
2. All the bigdata tools are open source.
3. Spark is multi-lingual 
	->it is distributed memory management(DRAM).
		create new object to access variable from data.
	->RDD in the memory the data is distributed form of RDD.	
		Lazy Evaluation T/F rather than it will give new RDD.
	-> if 100 T/F then 100 RDDs creates(the collection of all RDDs is called DAG or Lineage).
	-> break the Lineage we need Action.
4. Components of Apache Spark (EcoSystem)
	Spark Core.
	Spark SQL.
	Spark Streaming.
	MLlib(Machine learning library)
	GraphX.
	Spark R.
5. spark support lot of library
	spark SQL
6.  driver (A driver in software provides a 
		programming interface to control and 
		manage specific lower level interfaces)
	worker1(executer1)-->intermediate calculation
	worker2(executer2)
7. Yarn two different options
	1. client(driver node)
	2. cluster
	3. local mode
8. every sparkcontext launches a web UI
9. Web UI
Apache Spark provides a suite of web user 
interfaces (UIs) that you can use to monitor the status and resource consumption of your Spark cluster.
	Table of Contents

	Jobs Tab
	Jobs detail
	Stages Tab
	Stage detail
	Storage Tab
	Environment Tab
	Executors Tab
	SQL Tab
	SQL metrics
	Structured Streaming Tab
	Streaming (DStreams) Tab
	JDBC/ODBC Server Tab
10. RDD makes two opeartions mainly
	1. T/F
	2. Action
vm login: 	root
	password:
	systemctl start iptables
	systemctl stop iptables
	start-all.sh
	jps

Three laptops
	1. master(metadata)
	2. slave1(block1)
	3. slave2(block2)
	non distributed file system: FAT32, ext3.
--Windows offers three file systems: NTFS, FAT32 and FAT16.
--linux file system: ext3
--on top of this file system you install Hadoop
--HDFS file size =master+slave1+slave2
--master is moniter class metadata.
--size
--Block size: A block is the largest contiguous amount of disk space that can be allocated to a 
	file and is therefore the largest amount of data that can be accessed in a single I/O operation. 
	A subblock is the smallest unit of contiguous disk space that can be allocated.
--Replication (fault tollerence)is the practice of keeping several copies of data in different places.
--HDFS is a distributed filesystem which stores data in a distributed manner across various slave machines.
--all the intermediate data being residing in hardisk(HDFS).

--Flume:
	It is a distributed, reliable, and available service for efficiently collecting, 
	aggregating, and moving large amounts of log data.
-- Kafka:
	It enables real-time data processing by using a publish-subscribe messaging system. 
-- NiFi:
	It is a powerful tool for ingesting data from various sources. 
	It can handle data from files, databases, APIs, messaging systems, and more. 
	It also supports various protocols, including HTTP, FTP, SMTP, and more.
--thats not easy to using linux commands data is resides in HDFS	
--Hadoop shell command hadoop fs -cat /student Performance.csv
--master store metadata.
--slave is Replication.
--HDFS fsck is used to check the health of the file system, to find missing files, over replicated, under replicated and corrupted blocks.
	Command for finding the block for a file:

 $ hdfs fsck / 
-- As we can see here, the 'hdfs dfs' command is used very specifically for hadoop filesystem (hdfs) 
	data operations while 'hadoop fs' covers a larger variety of data present on external platforms as well. 
	These external platforms include the local filesystem data as well. 
	The File System (FS) shell includes various shell-like commands that 
	directly interact with the Hadoop Distributed File System (HDFS) 
--blocks are distributed across cluster there are replicated process. 
--map reduce: map is key-value attribute
				reduce basically aggregating function.
				it is legacy.
--hadoop is batch process.
--spark is only parallel Processing not storage space. 
--spark not replace all it only the mapreduce .
--HDFS is like a ADLS/S3.
# install VM 
Virtual Box - https://www.virtualbox.org/wiki/Downloads
Centos 7 - http://centos.excellmedia.net/7.9.2009/isos/x86_64/CentOS-7-x86_64-DVD-2009.iso
all big data softwares avaiable here - https://archive.apache.org/dist/
download hadoop on ur VM - wget https://archive.apache.org/dist/hadoop/common/hadoop-2.7.3/hadoop-2.7.3.tar.gz
download spark on ur VM - wget https://archive.apache.org/dist/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.7.tgz
download Hive on ur VM - wget https://archive.apache.org/dist/hive/hive-2.1.0/apache-hive-2.1.0-bin.tar.gz
download kafka on ur VM - wget https://archive.apache.org/dist/kafka/2.1.0/kafka_2.11-2.1.0.tgz
download Flume on ur Vm - wget https://archive.apache.org/dist/flume/1.9.0/apache-flume-1.9.0-bin.tar.gz
download Zeppelin on ur Vm - wget https://archive.apache.org/dist/zeppelin/zeppelin-0.8.2/zeppelin-0.8.2-bin-all.tgz

-atleast 15 gb for each node.
software selection:
	2
	3
	6
	7
	13
	16
	17
	18
	22
	25
	26
	29
root
password:
nmtui #(Network Manager Text User Interface) is a command line tool that used for network configuration on Gnu / Linux systems. When run, it invokes a graphical text interface that helps users configure network interfaces in a simple and effective way.
choose second option:
wired
enp0s3:activate
click right arrow-->go back
edit connection-->right arrow-->edit-->[click space bar] automatically connect-->click ok--> back-->Quit
clear
ping www.google.comm
#stop using ctrl+c
--always go with bin version.
#login with putty any remotely 
#all big data softwares avaiable here - https://archive.apache.org/dist/
#download hadoop on ur VM - 
wget https://archive.apache.org/dist/hadoop/common/hadoop-2.7.3/hadoop-2.7.3.tar.gz
#download spark on ur VM - 
wget https://archive.apache.org/dist/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.7.tgz
#download Hive on ur VM - 
wget https://archive.apache.org/dist/hive/hive-2.1.0/apache-hive-2.1.0-bin.tar.gz
#download kafka on ur VM - 
wget https://archive.apache.org/dist/kafka/2.1.0/kafka_2.11-2.1.0.tgz
#download Flume on ur Vm - 
wget https://archive.apache.org/dist/flume/1.9.0/apache-flume-1.9.0-bin.tar.gz
#download Zeppelin on ur Vm - 
wget https://archive.apache.org/dist/zeppelin/zeppelin-0.8.2/zeppelin-0.8.2-bin-all.tgz
#home directory
ls /
#create empty folders
mkdir /etc/Hadoop
mkdir /etc/spark
mkdir /etc/hive
mkdir /etc/kafka
mkdir /etc/flume
mkdir /etc/Zepplin

#give permission
chmod -R 777(owner, group, other permissions)
#7 -read write execute
	4	 2	   1
#5- read execute
	4	 1
#6	read execute
	4 	 2
chmod -R 777 /etc/Hadoop
chmod -R 777 /etc/spark
chmod -R 777 /etc/hive
chmod -R 777 /etc/kafka
chmod -R 777 /etc/flume
chmod -R 777 /etc/Zepplin

#untar or unzip
tar -xvzf hadoop-2.7.3.tar.gz -C /etc/Hadoop
cd /etc/Hadoop
ls
cd $HOME
tar -xvzf spark-2.4.3-bin-hadoop2.7.tgz -C /etc/spark
tar --help
ls
tar -xzf apache-hive-2.1.0-bin.tar.gz -C /etc/hive
tar -xzf apache-flume-1.9.0-bin.tar.gz -C /etc/flume
tar -xzf kafka_2.11-2.1.0-bin.tgz -C /etc/kafka
tar -xzf zeppelin-0.8.2-bin-all.tgz -C /etc/Zeppelin
#Extracting files from Archive using option -xvf : This command extracts files from Archives. 
#Extracting a gzip tar Archive *.tar.gz using option -xvzf : This command extracts files from tar archived file.tar.gz files.  
#winscp another remote connect tool but we can see files only, we can not write any commands. 
ls
#mergedup
#for hive, flume, Zeppelin. 
#for hadoop, spark dont do keep it in folder 
#/root/
#moved to 
/etc/hive/*.*
/etc/flume/*.*
/etc/Zeppelin/*.*
#install java above 1.8 version
java --version
mkdir /usr/lib
ls
mkdir java
cd java
ls
#in directory /usr/lib/jvm/
mkdir /jvm/
cd /usr/lib/jvm/
ls 
#for Centos
yum install java-1.8.0-openjdk-devel.x86_86
#hadoop written on java, thats why you install java.
cd $HOME
#install python
python
yum install python3
# press YES
Y
python3
exit()
#windows file system to linux format
yum install doc2unix
# press YES
y
#install iptables
yum install iptables-services
#copying the files from 
# goto /root/
# goto settings on local machine--->panels--->show hidden files 
# .bash_profile from windows to VM /root/ folder
cd $HOME
pwd
/root #you see
#windows to VM when we move files the format would have been change some garbage charatcers woulde have inseterd
dos2unix .bash_profile
cat .bash_profile
# here is the couple of configurations are in correct
#open .bash_profile in vm click on right edit---->config--->editor--->add--->external editor--->browse(or esle double click on it)
cd /usr/lib/jvm/
ls
# in .bash_profile 
=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.312.b07-1.e17_9.x86_64
#makesure keep /jre
cd $HOME
#The Linux source: command is a shell command that reads and executes commands from a file in current shell environment. file is typically a shell script, but it can also be any text file containing a series of commands
source ~/.bash_profile
source .bash_profile
cd pwd
#bash_profile is updated

cd $HADOOP_HOME
pwd
ls

cd $SPARK_HOME
pwd
ls

cd $KAFKA_HOME
pwd
ls

cd $HIVE_HOME
pwd
ls

cd $HOME

/etc/hadoop/hadoop-2.7.3/etc/hadoop
#except authorized_keys, id_rsa.pub drog and drop.
cd $HADOOP_HOME
cd ./etc/hadoop
dos2unix hadoop-env.sh
dos2unix yarn-env.sh
#will take all files converts from docs to unix using 
	doc2unix *.
#again it is older version in hadoop-env.sh
#goto root folder--->open .bash_profile--->copy path--->paste it here
	/etc/hadoop/hadoop-2.7.3/etc/hadoop
#open yarn-site.xml
#instead of IP address given master that is good thing
#map_redu.xml
	cluster manager
#vi is notapad in windows like
	vi /etc/hosts
	#goto keyboard press I key(Insert MOde)
	#enter master IP address
	_________ master  m1 m (alias)
	#dummy address but yet this point not created slave node we are going to clone it from master node.
	_________ slave1  s1 (alias)
	_________ slave2  s1 (alias)
	esc key
	shift :wq #write and quite
#display or see the entry using
cat /etc/hosts
ifconfig
#installation
#goto folder
/etc/spark/
#copy all the three files to
/etc/spark/spark-2.4.3-bin-hadoop2.7/conf/
cd $SPARK_HOME/conf
dos2unix *.*
#open spark-env 
#change version of java 
	java-1.8.0-openjdk-1.8.0.312.b07-1.e17_9.x86_64/jre
# we set hadoop and spark setup.
# master has setup
#shutdown
init 0
#goto VB
#clone option
	slave1
	dont change keep it as except path.
	full clone(exact copy of master)
	
	slave2
	dont change keep it as except path.
	full clone(exact copy of master)
#cloning no need when real machines 
#EC2 use SUDO commands
#Databricks is that use hadoop framework.
#SSIS not part of spark
#select all Three.
#click on start.
#all three machines
	ifconfig
vi /etc/hosts
#press I
#change IP address
esc
:wq
#goto master
ping slave1
ping slave2

#goto slave1
ping master
ping slave2

#goto slave2
ping master
ping slave1
#created on master clone into slave1 and slave2

#same configuartion set all the machines.
#these ip addresses are keep on changing when you shutdown.

ssh-keygen
#no passcode

cd $HOME
cd .ssh
ls
ssh slave1
Y
#slave1 password: root
mkdir .ssh
pwd
exit

ssh slave2
Y
#slave1 password: root
mkdir .ssh
pwd
exit
#copy to 
cp id_rsa.pub authorized_keys
ls
#scp: secure copy one server to another server.
scp ./authorized_keys root@slave1:/rrot/.ssh
password: root

scp ./authorized_keys root@slave2:/rrot/.ssh
password: root
#now wont ask password
cd $home
ssh slave1
exit

ssh slave2
exit
#SSH or Secure Shell

hadoop namenade -format

cd $HOME
start-all.sh
yes
#master
jps
#slave1
jps
#slave2
jps

#default hadoop port
192.168.0.165:50070
#master there is a firewall need to stop 
systemctl start iptables
systemctl stop iptables
exit
#slave1 firewall
systemctl start iptables
systemctl stop iptables
exit
#slave2 firewall
systemctl start iptables
systemctl stop iptables
exit
#start spark cluster.
$SPARK_HOME/sbin/start-all.sh
jps

ssh slave1
$SPARK_HOME/bin/pyspark --master yarn

#ps command displays information related to the processes running in a Linux system.
kill -9 2143
jps

$SPARK_HOME/bin/pyspark

rdd1=sc.parallelize([1,2,3])
rdd1.collect()
sc.uiweburl
exit()
#dashboard gone
copy 192.168.0.143:4040 paste into weburl
#Spark components
RDD is data structure of spark
master(driver)
slave(worker)
#spark and hadoop are frameworks
#sparkcontext: entry point of spark programming.
#RDD: nearest to the data sticky place.
#parallelize: it is a function in SparkContext and is used to create an RDD from a list collection.

	


#hive is big data data warehouse tool on top of mapreduce. (similar to mysql)
#kafka,flume messages queues (use non bigdata systems) 
#Zepplin is visulation tool (It is similar to Databricks Notebook, Jupiter, Colab) you connect with any interpreter.
#client always cluster on-premises no standalone system hdfs file system.
#databriks----platform.
#cassandra, impala 3rd party DW cluster distributed system
#scala is native language of spark.
#for development Environment python is choice.
#CCA 175 spark
ipconfig #The ifconfig command manages network interface parameters.

#for paste in putty rightclick on mouse.

#for spark we have two live Streaming data:
1. Twitter
2. NSE stocks
	downloading data put it in Hive see visualization.
#flume is doesnt have any projects it is an olden version decommisioned this year.
--core is nothing but CPU.

--num-executer is just JVM(container it create node and Task).
--Executer-memory.
--Executer-Cores.
--Driver-Memory.

#open VB
#run master, slave1, slave2
#master ifconfig
#copy ip address
#paste it in putty
systemctl start iptables
systemctl stop iptables
exit
ssh slave1
systemctl start iptables
systemctl stop iptables
exit
ssh slave2
systemctl start iptables
systemctl stop iptables
exit

start-all.sh
$SPARK_HOME/sbin/start-all
jps
ssh slave1
jps
exit

#in master hdfs dfs -mkdir /landingzone
hdfs dfs -mkdir /archieve

hadoop dfsadmin -safemode leave
ssh slave2
hive
show databases;
create database edw_config;
select * from infucrion_file;
truncate table infucrion_file;
truncate table transformation_rules;
show databases;
use edw_stg;
show tables;

truncate table student_performance_stg;

use edw_pst;

show tables;

truncate table student_performance;

select * from student_performance;

#winscp
ssh slave2
ifconfig
/root/ncjtest/

hdfs dfs -put /root/student_performance /landingzone

hive
select * from edw_stg.student_performance_stg;
cd ncjtest
ls
python3 LnadingToStgNew.py
hive






	
	
	
		

	
