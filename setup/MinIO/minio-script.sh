# MinIO authentication
C:\Users\Dell\Downloads\Programs\mc.exe alias set myminio https://twitter-minio.onrender.com minioadmin minioadmin

# MinIO make bucket
C:\Users\Dell\Downloads\Programs\mc.exe mb myminio/photos-bucket
>> Bucket created successfully myminio/photos-bucket.

# MinIO related security rules
C:\Users\Dell\Downloads\Programs\mc.exe anonymous set public myminio/photos-bucket
>> Access permission for myminio/photos-bucket is set to public

C:\Users\Dell\Downloads\Programs\mc.exe anonymous policy set public myminio/photos-bucket
C:\Users\Dell\Downloads\Programs\mc.exe anonymous policy list myminio/photos-bucket
>> photos-bucket/* => readwrite

# MinIO list bucket
C:\Users\Dell\Downloads\Programs\mc.exe ls myminio/photos-bucket/
C:\Users\Dell\Downloads\Programs\mc.exe ls myminio


#MinIO other command
C:\Users\Dell\Downloads\Programs\mc.exe anonymous list myminio/photos-bucket
C:\Users\Dell\Downloads\Programs\mc.exe alias policy list myminio/photos-bucket
C:\Users\Dell\Downloads\Programs\mc.exe policy list myminio/photos-bucket
C:\Users\Dell\Downloads\Programs\mc.exe mc policy set public myminio/photos-bucket
C:\Users\Dell\Downloads\Programs\mc.exe mc policy list myminio/photos-bucket

