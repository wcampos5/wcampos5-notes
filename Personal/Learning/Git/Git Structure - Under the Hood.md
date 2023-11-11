Blob[^1]
Tree
Commit


### Blob

Blob is the way that the Git store data.
It is an object the contain some metadata:
Lengh, \\0 and the data itself

![[blob_structure.png]]

Git uses SHA1 to encrypt the data

```
echo "ola mundo" | git hash-object --stdin
```
===6d6648c00eb7a59d141d1f85a6678ba1a5995547===

To achieve the same HASH using openssl we need to pass the metadata:
```
echo -e "blob 10\0ola mundo" |openssl sha1
```
===SHA1(stdin)= 6d6648c00eb7a59d141d1f85a6678ba1a5995547===


### Tree

Trees storage blobs
This object contains the following metada:
- Three
- lengh
- \0
- blob hash
- filename.extension

![[tree_structure.png]]


## Commit

Hold the whole structure
Commit metadata are:
Length, tree sha1, parent sha1, author, message, timestamp

![[commit.png]]

![[commit_structure.png]]


#### Tags:
***
#githash #blob #tree #commitstructure 





