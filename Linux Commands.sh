1. read textfile
rdd=sc.textfile('path')
rdd.take(5)
2. Stages: flow of execucation
3. Pyspark Application(Pyspark cod)
	- Pyspark - Transformation & Action
		-Stages - shuffling
			-tasks(actual code)
	1-20 Transformation
	21 Action
	22-50 Transformation
	51 Action
4. $SPARK_HOME/bin/pyspark --master yarn
5. move file cricket form windows to unix using winsc
6. hadoop dfs -copyfromlocal /root/cricket_1.txt
7. rdd1 =sc.textFile('/cricket_1.txt')
	rdd1.collect()#collect is a action operation
	rdd2 =rdd1.map(lambda row:row.split(','))
	rdd2.collect()
	grprdd3 = rdd2.groupBy(lambda row:row[1])
	grprdd3.collect()
	sc.uiweburl
	#three times we perform action oprations
	#everything on RAM machines.
	#standalone runs only own cluster.
8. print(sorted[(matches,sorted(rows)) for (matches,rows) in grprdd3]))

9. HCSA US insurance company 
	so client and they provide all kinds insurnce to clients
	infosis, accenture, pharmaceitical insurance also
	whatever medicines you fill 
	claim form collect from 
	weekly, monthly those information collected by client
	everyone sending own format.
	each client sending different formats.
	order is different 
	HCSC no common format
	medication
	HCSC 
	our goal is to create gold layer meaning thats the layer datalake
	will push the file that file is to create common cliam format layer
	then push into other layer for analytical purpose

	create Json file
	BA
	hey boss develop the spark code which will take 
	some attributes from mapping sheet accordingly we plug all the 
	I/P file convert into JSON file.
python functional
python moduler 
10. Pyspark.
	1. environment.py
	2. run.py
	3. model.py
11. cmd 
		set env="dev"
		echo $env
		echo %env%
		set hcsc_environment="dev"
		echo %hcs_environment%
		echo %hcsc_environment%
#30/01/2022
	open VM
	winscp
	master: root
	password: root
	ifconfig
	slave1: root
	password: root
	ifconfig
	slave2: root
	password: root
	ifconfig
	
	login with putty
	master:
	systemctl start iptables #Control the systemd system and service manager
	systemctl stop iptables
	ssh slave1
	systemctl start iptables
	systemctl stop iptables
	exit
	
	ssh slave2
	systemctl start iptables
	systemctl stop iptables
	exit
	
	start-all.sh
	$SPARK_HOME/sbin/start-all.sh
	
	jps
master: ssh slave1
	jps
	exit
slave2 windows: 
ssh slave2
cd pbm3700/
dos2unix spark-job_jobname.sh
#pysparkRDDexample.zip file move to linux /root/pbm007
#and rename it pysparkjob1
#open spark-job_jobname.sh 
pysparkjob1.zip changed
/root/pbm007/pysparkRDDexample open with notepad config.json

hadoop dfsadmin -safemode leave
hdfs dfs -mkdir -p /pbm3700/input
hdfs dfs -mkdir -p /pbm3700/mapping
hdfs dfs -mkdir -p /pbm3700/output
hdfs dfs -mkdir -rmr /pbm3700

hdfs dfs -mkdir -p /pbm3700/input
hdfs dfs -mkdir -p /pbm3700/output
hdfs dfs -mkdir -p /pbm3700/mapping

ls
#copy from local to hdfs
hadoop dfs -put ./pbm3700.txt /pbm3700/mapping
hadoop dfs -put ./mapper.csv /pbm3700/mapping

sh spark-job_jobname.sh #sh is the command name of the Bourne shell, the standard command language interpreter 

#creates log file
hadoop dfs -get /pbm3700/output/_1643554188.1410189/* /root/pbm3700/output/jan2022
# in your company put shell script oozie and airflow
# they dont have fancy step scheduler use crontab

crontab -l
crontab -e
***** #every sec
30 8 ***#every day 8:30
sh /root/pbm3700/spark-job_jobname.sh
crontab -l #generic way schedule
exit
$SPARK_HOME/sbin/stop-all.sh
stop-all.sh
init 0

#5. next module spark SQL
#spark works with semi-structured and structured data

	Saprk DatFrame Api
	df1=df.select("col_1","col_2","col_3")
	df1.createOrReplaceTempview("First_temp_view")

	Spark SQL
	spark.sql("select * from First_temp_view")
	spark.sql("select col_1,max(col_2) as ma_col from First_temp_view group by col_1")
#change to home directory
cd /
#know IP address
ifconfig
hostname -I
#open slave2
root
#login with putty
#hive and spark-sql and mysql similar
#install msql
yum install mysql-server
#press
Y
rpm -ivh mysql180-community-release-e17-3.noarch.rpm
start mariadb
show database:
create database spark;
exit
#open mysql 
#give hostanme ip address
#database_name
nmap -l #used to identify the devices connected to a network with the help of IP packets
yum install nmap
y
nmap localhost
systemctl start iptables
systemctl stop iptables
systemctl start iptables
systemctl stop iptables
ifconfig
mysql -u root
exit
mysql
use spark
create table test(name varchar(10), empid int);

insert int test('ganesh',1;
select * from test

find my.cnf
find -n my.cnf
find -name my.cnf
ls /etc/
cat ./my.cnf
cat /etc/my.cnf
vi /etc/my.cnf
	bind-address = 0.0.0.0
systemctl stop mariadb
systemctl start mariadb
mysql -u root
FLUSH PREVILEGES;
mysql -u root

create database gmail_login;
use gmail_login;
#integrate with mysql
#install mysql
#google as data centre
#on server
#mysql database










	
	
		