CATALINA_OPTS="$CATALINA_OPTS -server -Dfile.encoding=UTF-8 -Djava.locale.providers=JRE,COMPAT,CLDR -Djava.net.preferIPv4Stack=true -Duser.timezone=GMT -Xms8g -Xmx8g -XX:MaxNewSize=2g -XX:MaxMetaspaceSize=1g -XX:MetaspaceSize=1g -XX:NewSize=2g -XX:SurvivorRatio=6 -XX:InitialCodeCacheSize=64m -XX:ReservedCodeCacheSize=96m -XX:TargetSurvivorRatio=90 -XX:MaxTenuringThreshold=15"

CATALINA_OPTS="$CATALINA_OPTS -Djgroups.bind_addr=10.160.83.73 -Djgroups.tcpping.initial_hosts=10.160.83.73[7800],10.160.83.73[7801]"

JDK_JAVA_OPTIONS="$JDK_JAVA_OPTIONS --add-opens=jdk.zipfs/jdk.nio.zipfs=ALL-UNNAMED"

CATALINA_OPTS="$CATALINA_OPTS -javaagent:/home/liferay/liferay-dxp-q1/glowroot/glowroot.jar"

##Verbose GC Logging Options
CATALINA_OPTS="$CATALINA_OPTS -verbose:gc -Xlog:gc:/home/liferay/gclogs/liferaygc-$(date +%Y_%m_%d-%H_%M).log  -XX:+PrintGCDetails -XX:-TraceClassUnloading"

##Heap Dump Options
CATALINA_OPTS="$CATALINA_OPTS -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/home/liferay/heapdump"
