find ./content/posts -type f -exec perl -p -i -e 's,/Notes/posts,,g' {} +
find ./content/posts -type f -exec perl -p -i -e 's,/Notes/,/static/,g' {} +
