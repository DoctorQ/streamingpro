SPARK_HOME=/Users/doctorq/Documents/Developer/spark-2.0.1-bin-hadoop2.7
PROJECT_HOME=/Users/doctorq/Documents/Developer/git-project/streamingpro

$SPARK_HOME/bin/spark-submit \
           --class streaming.core.StreamingApp \
           --master local[2] \
           --files file:$PROJECT_HOME/target/classes/log4j.properties \
           --conf "-Ddm.logging.level=DEBUG -Dlog4j.configuration=log4j.properties" \
           $PROJECT_HOME/target/streamingpro-0.4.1-SNAPSHOT-dev-2.0.1.jar \
           -streaming.name 30 \
           -streaming.duration 30 \
           -streaming.job.file.path file://$PROJECT_HOME/target/classes/test/test-kafka.json \
           -streaming.rest true \
           -streaming.driver.port 9003
