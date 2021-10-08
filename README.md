WINDOWS RUNNING 

CHANGES TO file
Hadoop-3.2.2
https://dlcdn.apache.org/hadoop/common/hadoop-3.2.2/hadoop-3.2.2-src.tar.gz
https://dlcdn.apache.org/hadoop/common/hadoop-3.2.2/hadoop-3.2.2-src.asc

make a file

/data/namenode

HADOOP_HOME  = E:/Hadoop/Hadoop3.2.2/hadoop-3.2.2/ <!--FOR MY LOCAL COMPUTER -->
JAVA_HOME <!--set it as per -->
create a file run.cmd 


rmdir  %HADOOP_HOME%sbin\datanode /Q /S 
start /d %HADOOP_HOME%sbin start-all
sleep 10
start /d %HADOOP_HOME%sbin stop-all
CHANGES IN etc/hadoop/

core-site.xml

<configuration>
  <property>
    <name>fs.default.name</name>
    <value>hdfs://localhost:9000</value>
  </property>
</configuration>

hdfs-site.xml

<configuration>
  <property>
    <name>dfs.replication</name>
    <value>1</value>
  </property>
  <property>
    <name>dfs.namenode.name.dir</name>
    <value>file:///E:/Hadoop/Hadoop3.2.2/hadoop-3.2.2/data/namenode</value>                    <!--CHNAGE THE LINK -->
  </property>
  <property>
    <name>dfs.datanode.data.dir</name>
    <value>datanode</value>
  </property>
  <property>
    <name>dfs.permissions</name>
    <value>true</value>
  </property>
  <property>
    <name>dfs.encrypt.data.transfer</name>
    <value>true</value>
  </property>
</configuration>

marpred-site.xml :

<configuration>
  <property>
    <name>mapreduce.framework.name</name>
    <value>yarn</value>
  </property>
  <property>
    <name>mapred.job.tracker</name>
    <value>localhost:54311</value>
  </property>
</configuration>

yarn-site.xml

<configuration>
  <property>
    <name>yarn.nodemanager.aux-services</name>
    <value>mapreduce_shuffle</value>
  </property>
  <property>
    <name>yarn.nodemanager.auxservices.mapreduce.shuffle.class</name>
    <value>org.apache.hadoop.mapred.ShuffleHandler</value>
  </property>
</configuration>


RUN run.cmd 
 