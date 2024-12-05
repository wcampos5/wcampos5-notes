#gitcherrypickscript #cherrypick 

#### Script 1

```Bash
#!/bin/bash

# Run it from the base location of your repository or move it to the base location of your repository

files=(
"<path/to/file/file1_name.extension>"
"<path/to/file/file2_name.extension>"
)

echo "Files to cherry-pick: ${files[@]}"

commit_hashes=$(git log dev \
    --reverse \
    --author='\(rperei74\)\|\(Raphael Pereira\)\|\(IPINHEI5\)\|\(msant429\)\|\(Matheus Augusto\)\|\(MMACEDO7\)\|\(Melissa Macedo\)\|\(Nikhil Racha\)\|\(nrachama\)' \
    --since='2024-10-18' \
    --pretty=format:"%h" \
    --no-merges \
    -- "${files[@]}")
echo "$commit_hashes"

if [ -z "$commit_hashes" ]; then
    echo "No commits found for the specified criteria."
    exit 1
fi

echo "$commit_hashes"

git checkout <target_environment>
git pull
git checkout -b release-ol-sources-<target_environment>
git cherry-pick $commit_hashes
```