for port in `seq 7001 7006`; do \
  mkdir -p ./redis-cluster/${port}/conf \
  && mkdir -p ./redis-cluster/${port}/log \
  && mkdir -p ./redis-cluster/${port}/data \
  && PORT=${port} envsubst < ./redis-cluster.tmpl > ./redis-cluster/${port}/conf/redis.conf; \
done