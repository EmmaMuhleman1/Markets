#!/bin/bash

set -x

echo "### Launching HTTP Frontend ###"

redis_host=$REDIS_HOST
core_num=$CORE_NUM
redis_secure_password=`openssl rsautl -inkey /ppml/trusted-cluster-serving/redis/work/passowrd/key.txt -decrypt </ppml/trusted-cluster-serving/redis/work/passowrd/output.bin`
https_secure_password=`openssl rsautl -inkey /ppml/trusted-cluster-serving/java/work/passowrd/key.txt -decrypt </ppml/trusted-cluster-serving/java/work/passowrd/output.bin`

SGX=1 ./pal_loader /opt/jdk8/bin/java \
    -Xms2g \
    -Xmx8g \
    -XX:ActiveProcessorCount=${core_num} \
    -Dcom.intel.analytics.zoo.shaded.io.netty.tryReflectionSetAccessible=true \
    -Dakka.http.host-connection-pool.max-connections=100 \
    -Dakka.http.host-connection-pool.max-open-requests=128 \
    -Dakka.actor.default-dispatcher.fork-join-executor.parallelism-min=100 \
    -Dakka.actor.default-dispatcher.fork-join-executor.parallelism-max=120 \
    -Dakka.actor.default-dispatcher.fork-join-executor.parallelism-factor=1 \
    -jar /ppml/trusted-cluster-serving/java/work/analytics-zoo-bigdl_${BIGDL_VERSION}-spark_${SPARK_VERSION}-${ANALYTICS_ZOO_VERSION}-http.jar \
    --redisHost "${redis_host}" \
    --tokensPerSecond 30 \
    --tokenBucketEnabled true \
    --parallelism 30 \
    --httpsEnabled true \
    --httpsKeyStorePath "/ppml/trusted-cluster-serving/java/work/keys/keystore.pkcs12" \
    --httpsKeyStoreToken "${https_secure_password}" \
    --redisSecureEnabled true \
    --redissTrustStorePath "/ppml/trusted-cluster-serving/redis/work/keys/keystore.jks" \
    --redissTrustStoreToken "${redis_secure_password}" | tee ./http-frontend-sgx.log
