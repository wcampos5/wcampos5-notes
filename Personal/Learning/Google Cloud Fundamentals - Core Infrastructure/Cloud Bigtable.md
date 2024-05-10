Google Cloud Fundamentals - Infrastructure[^1] 
xx'
***
#googlecloudfundamentals #bigtable

#bigtable
#### Cloud BigTable
>[!success] NoSQL big data database service

>[!info] Designed to handle massive workloads at consistency low latency and high throughput

Best choice for Operational and Analytical applications

#### Use cases:
- If you work with more the 1TB semi-structured or structured data
- Data is fast with high throughput, or it's rapidly changing
- Work with NoSQL data:
	- Transaction were strong relational semantics are not required
- Data is a time-series or has a natural semantic ordering
- Work with big data, running asynchronous or synchronous real-time processing on the data
- Run machine learning algorithm on data


Data also can be streamed into a variety of popular streaming processing
![[gc_bigdata_streaming.png]]

...and if stream in not an option, data can b also read and written to CloudBigTable  through batch process like Hadoop MapReduce, Dataflow, or Spark.





***
[[Firestore]] | [[Introduction to containers]]

***
[^1]: [Google Cloud Fundamentals - Infrastructure](https://www.coursera.org/learn/gcp-fundamentals/home)


