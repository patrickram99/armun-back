// main.go
package main

import (
	"bufio"
	"fmt"
	"log"
	"main/models"
	"net/http"
	"os"
	"strconv"
	"strings"
	"time"

	"github.com/gin-gonic/gin"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

var (
	db  *gorm.DB
	err error
)

func initDB() {
	host := os.Getenv("DB_HOST")
	if host == "" {
		host = "localhost"
	}
	port := os.Getenv("DB_PORT")
	if port == "" {
		port = "3306"
	}
	user := os.Getenv("DB_USER")
	if user == "" {
		user = "root"
	}
	password := os.Getenv("DB_PASSWORD")
	if password == "" {
		password = "alt0_Secreto"
	}
	dbName := os.Getenv("DB_NAME")
	if dbName == "" {
		dbName = "armun"
	}

	dsn := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=utf8mb4&parseTime=True&loc=Local", user, password, host, port, dbName)
	db, err = gorm.Open(mysql.Open(dsn), &gorm.Config{})
	if err != nil {
		panic("failed to connect database")
	}

	db.AutoMigrate(&models.Pais{}, &models.Director{}, &models.DAdjunto{}, &models.Moderador{}, &models.Secretariado{},
		&models.Mesa{}, &models.Comite{}, &models.Delegado{}, &models.Mocion{}, &models.Voluntario{}, &models.Charla{},
		&models.Podio{}, &models.Premios{})

	// Run SQL commands from file
	err = runSQLFile("init.sql")
	if err != nil {
		log.Printf("Error running SQL file: %v", err)
	}
}

func runSQLFile(filename string) error {
	file, err := os.Open(filename)
	if err != nil {
		return err
	}
	defer file.Close()

	scanner := bufio.NewScanner(file)
	var statement strings.Builder

	for scanner.Scan() {
		line := strings.TrimSpace(scanner.Text())
		if line == "" || strings.HasPrefix(line, "--") {
			continue
		}

		statement.WriteString(line)
		if strings.HasSuffix(line, ";") {
			if err := db.Exec(statement.String()).Error; err != nil {
				return err
			}
			statement.Reset()
		} else {
			statement.WriteString(" ")
		}
	}

	if err := scanner.Err(); err != nil {
		return err
	}

	return nil
}

func main() {
	initDB()

	r := gin.Default()

	r.GET("/mociones", getAllMociones)
	r.GET("/mociones/:id", getMocionByID)
	r.POST("/mociones", createMocion)
	r.PUT("/mociones/:id", updateMocion)
	r.DELETE("/mociones/:id", deleteMocion)

	log.Fatal(r.Run(":8080"))
}

func getAllMociones(c *gin.Context) {
	var mociones []models.Mocion
	if err := db.Preload("Delegado").Preload("Comite").Find(&mociones).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusOK, mociones)
}

func getMocionByID(c *gin.Context) {
	var mocion models.Mocion
	id, err := strconv.Atoi(c.Param("id"))
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Invalid ID"})
		return
	}

	if err := db.Preload("Delegado").Preload("Comite").First(&mocion, id).Error; err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "Record not found"})
		return
	}
	c.JSON(http.StatusOK, mocion)
}

func createMocion(c *gin.Context) {
	var mocion models.Mocion
	if err := c.ShouldBindJSON(&mocion); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	mocion.Fecha = time.Now()

	if err := db.Create(&mocion).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusCreated, mocion)
}

func updateMocion(c *gin.Context) {
	var mocion models.Mocion
	id, err := strconv.Atoi(c.Param("id"))
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Invalid ID"})
		return
	}

	if err := db.First(&mocion, id).Error; err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "Record not found"})
		return
	}

	if err := c.ShouldBindJSON(&mocion); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	if err := db.Save(&mocion).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, mocion)
}

func deleteMocion(c *gin.Context) {
	var mocion models.Mocion
	id, err := strconv.Atoi(c.Param("id"))
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Invalid ID"})
		return
	}

	if err := db.First(&mocion, id).Error; err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "Record not found"})
		return
	}

	if err := db.Delete(&mocion).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, gin.H{"message": "Record deleted successfully"})
}
