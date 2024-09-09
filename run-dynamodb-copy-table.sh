src="-<some dynamo hash here>-dev"
dest="-<some dynamo hash here>-preview"

for table in Archive Collection Collectionmap Embargo History PageContent Site
 do
  echo "Copying $table$src to $table$dest"
  DISABLE_CREATION=yes python3 dynamodb-copy-table.py $table$src $table$dest
done
