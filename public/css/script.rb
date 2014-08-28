cd /var/lib/tomcat6/webapps/xtf/bin/

#find files edited/added since last cronjob
find -ctime +2 -ctime -1 -print > ~/newfiles.txt

#if new files are present


#then the run indexer

sudo ./textIndexer -index default
sudo chown -R tomcat6:tomcat6 /var/lib/tomcat6/webapps/xtf/index/lazy/default/findingaids/