Installation manual

Run:

git clone https://github.com/ATer-Oganisyan/otus-crud-server.git
cd crud 
alias k=kubectl
helm repo add myZql https://charts.bitnami.com/bitnami		
helm install myzql-release myZql/mysql -f kuber/mysql/values.yml
k apply -f ./kuber/config/
k apply -f ./kuber/migrations/
k apply -f ./kuber/app/

Import Simple_CRUD.postman_collection.json into Postman.

Enjoy :)


## To build container run:

docker build -t arsenteroganisyan/otus-crud-server:v9 /Users/arsen/otus-user-crud --no-cache --platform linux/amd64


## To build migration container run:
docker build -t arsenteroganisyan/otus-user-crud-sql-migrator:v3 /Users/arsen/otus-user-crud/kuber/migrations --no-cache --platform linux/amd64