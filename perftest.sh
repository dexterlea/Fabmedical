host="fabmedical-474162.documents.azure.com"
username="fabmedical-474162"
password="NTrdz8ahew0epkkEH6tWmDtsrY40krnQuNv4jmjMogZH1u22OVBJZQFV1lVHt1rp2L0kVvWHUqWA19kz0lFKXw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
