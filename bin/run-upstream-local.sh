SPARK_HOME=/Users/doctorq/Documents/Developer/spark-2.0.1-bin-hadoop2.7
HUATUO_HOME=/home/map/git-scm/baidu/waimai-inf/huatuo-streaming-v2/target/huatuo-1.0-SNAPSHOT-bin/huatuo

$SPARK_HOME/bin/spark-submit \
           --class streaming.core.StreamingApp \
           --master local[2] \
           /Users/doctorq/Documents/Developer/spark-2.0.1-bin-hadoop2.7/example_out/streamingpro/streamingpro-0.4.1-SNAPSHOT-dev-2.0.1.jar \
           -streaming.name 30 \
           -streaming.duration 30 \
           -streaming.job.file.path file:///Users/doctorq/Documents/Developer/spark-2.0.1-bin-hadoop2.7/example_out/streamingpro/test.json \
           -streaming.rest true \
           -streaming.driver.port 9003