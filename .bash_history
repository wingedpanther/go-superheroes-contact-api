ls
ll
clear
go
go --version
ls
clear
go mod init
go mod init \ test.com/web-service-gin
go mod init example.com/web-service-gin
go: creating new go.mod: module
clear
touch main.go
go run main.go 
go get .; go get: added github.com/gin-gonic/gin v1.7.2
curl http://localhost:8080/albums
go run .
go run .
curl http://localhost:8080/albums --include --header "Content-Type: application/json" --request "POST" --data '{"id": "4","title": "The Modern Sound of Betty Carter","artist": "Betty Carter","price": 49.99}'
curl http://localhost:8080/albums --header "Content-Type: application/json" --request "GET"
curl http://localhost:8080/albums --include --header "Content-Type: application/json" --request "POST" --data '{"id": "4","title": "The Modern Sound of Betty Carter","artist": "Betty Carter","price": 49.99}'
curl http://localhost:8080/album --include --header "Content-Type: application/json" --request "POST" --data '{"id": "4","title": "The Modern Sound of Betty Carter","artist": "Betty Carter","price": 49.99}'
curl http://localhost:8080/albums --header "Content-Type: application/json" --request "GET"
curl http://localhost:8080/album/2
curl http://localhost:8080/album/4
curl http://localhost:8080/albums
curl http://localhost:8080/album/3
curl http://localhost:8080/contacts
curl http://localhost:8080/contact/2
git init -b main
git init
git add . && git commit -m "minimal api"
git init
git add . && git commit -m "minimal api"
it config --global user.email "vivekspathil@gmail.com"
git config --global user.email "vivekspathil@gmail.com"
git config --global user.name "wingedpanther"
