SPARK_HOME=/home/map/spark
HUATUO_HOME=/home/map/git-scm/baidu/waimai-inf/huatuo-streaming-v2/target/huatuo-1.0-SNAPSHOT-bin/huatuo

$SPARK_HOME/bin/spark-submit  --class "com.iwaimai.huatuo.spark.HuatuoUpStream" \
        --master local[2] \
        --files file:$HUATUO_HOME/conf/application.yml,file:$HUATUO_HOME/conf/log4j-huatuo.properties,file:$HUATUO_HOME/conf/hbase-site.xml \
        --conf "spark.driver.extraJavaOptions=-XX:+UseConcMarkSweepGC
                -Ddm.logging.name=huatuo -Ddm.logging.level=DEBUG -Dlog4j.configuration=log4j-huatuo.properties" \
        $HUATUO_HOME/lib/huatuo.jar
