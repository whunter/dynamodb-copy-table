pip install -r requirements.txt --quiet

src="-bxbkjhe235e3jcwcjcji5txvlm-vtdlpdev"
dest="-klyfmzsofvdxbpzbih47hibzli-wlhoidc"
# example:
# src="-ef4g5ek0flipflopjindw27blh-dev"

# Embargo History
for table in Archive Collection Collectionmap Site
 do
  echo "Copying $table$src to $table$dest"
  DISABLE_CREATION=yes python3 dynamodb-copy-table.py $table$src $table$dest
done
