src="-<some dynamo hash here>-<src env name>"
dest="-<some dynamo hash here>-<dest env name>"
# example:
# src="-ef4g5ek0flipflopjindw27blh-dev"

for table in Archive Collection Collectionmap Embargo History PageContent Site
 do
  echo "Copying $table$src to $table$dest"
  DISABLE_CREATION=yes python3 dynamodb-copy-table.py $table$src $table$dest
done
