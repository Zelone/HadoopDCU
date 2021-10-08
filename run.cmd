rmdir  %HADOOP_HOME%sbin\datanode /Q /S 
start /d %HADOOP_HOME%sbin start-all
sleep 10
start /d %HADOOP_HOME%sbin stop-all
 