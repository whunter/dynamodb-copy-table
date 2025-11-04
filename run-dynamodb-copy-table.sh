pip install -r requirements.txt --quiet

src=""
dest=""
# example:
# src="-ef4g5ek0flipflopjindw27blh-dev"

# Archive Collection Collectionmap Embargo History PageContent Site
for table in Archive Collection Collectionmap Embargo History PageContent Site
 do
  echo "Copying $table$src to $table$dest"
  DISABLE_CREATION=yes python3 dynamodb-copy-table.py $table$src $table$dest
done
