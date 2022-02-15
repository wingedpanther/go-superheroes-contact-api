package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)


type contact struct {
	ID     string  `json:"id"`
	Name  string  `json:"name"`
	Email string  `json:"email"`
	Mobile  string `json:"mobile"`
}

var contacts = []contact{
	{ID: "1", Name: "Superman", Email: "superman@heros.meta", Mobile: "00234-2323"},
	{ID: "2", Name: "Batman", Email: "baty@heros.meta", Mobile:  "00234-5666"},
	{ID: "3", Name: "Spider-man", Email: "spidey@heros.meta", Mobile:  "00234-6788"},
}

func main() {
	router := gin.Default()
	router.GET("/contacts", getContacts)
	router.POST("/contact", addContact)
	router.GET("/contact/:id",getContact)

	router.Run("localhost:8080")
}

func getContacts(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, contacts)
}


func addContact(c *gin.Context) {
	var newcontact contact
	if err := c.BindJSON(&newcontact); err != nil {
			return
	}
	contacts = append(contacts, newcontact)
	c.IndentedJSON(http.StatusCreated, newcontact)
}

func getContact(c *gin.Context){
	id := c.Param("id")
	for _,a := range contacts{
		if a.ID == id {
			c.IndentedJSON(http.StatusOK,a)
			return
		}
	}
	c.IndentedJSON(http.StatusNotFound,gin.H{"message": "contact not found"})
}