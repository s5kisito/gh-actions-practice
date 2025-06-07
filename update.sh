#!/bin/bash
# update.sh

echo "Updating index.html timestamp..."

# Current date
current_date=$(date)

# Replace the "Updated on" content using sed
# Cross-platform compatibility: for macOS (BSD sed) use `-i ''`
sed -i '' "s|<span id=\"date\">.*</span>|<span id=\"date\">$current_date</span>|" index.html

# Commit and push
git add index.html
git commit -m "Update timestamp: $current_date"
git push

echo "Update committed and pushed! GitHub Actions will redeploy the site."
#!/bin/bash
# update.sh

echo "Updating index.html timestamp..."

# Current date
current_date=$(date)

# Replace the "Updated on" content using sed
# Cross-platform compatibility: for macOS (BSD sed) use `-i ''`
sed -i '' "s|<span id=\"date\">.*</span>|<span id=\"date\">$current_date</span>|" index.html

# Commit and push
git add index.html
git commit -m "Update timestamp: $current_date"
git push

echo "Update committed and pushed! GitHub Actions will redeploy the site."

