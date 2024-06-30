// models/models.go
package models

import (
	"time"

	"gorm.io/gorm"
)

type Pais struct {
	gorm.Model
	Nombre string `gorm:"size:100"`
}

type Director struct {
	gorm.Model
	Nombre   string `gorm:"size:50"`
	Apellido string `gorm:"size:50"`
	Correo   string `gorm:"size:100"`
	Telefono string `gorm:"size:20"`
}

type DAdjunto struct {
	gorm.Model
	Nombre   string `gorm:"size:50"`
	Apellido string `gorm:"size:50"`
	Correo   string `gorm:"size:100"`
	Telefono string `gorm:"size:20"`
}

type Moderador struct {
	gorm.Model
	Nombre   string `gorm:"size:50"`
	Apellido string `gorm:"size:50"`
	Correo   string `gorm:"size:100"`
	Telefono string `gorm:"size:20"`
}

type Secretariado struct {
	gorm.Model
	Nombre   string `gorm:"size:50"`
	Apellido string `gorm:"size:50"`
	Telefono string `gorm:"size:20"`
	Correo   string `gorm:"size:100"`
	Rol      string `gorm:"size:50"`
}

type Mesa struct {
	gorm.Model
	DirectorID  uint
	DAdjuntoID  uint
	ModeradorID uint
	Director    Director
	DAdjunto    DAdjunto
	Moderador   Moderador
}

type Comite struct {
	gorm.Model
	Topico       string `gorm:"size:255"`
	Comite_ONU   string `gorm:"size:100"`
	Paje_Nombre  string `gorm:"size:50"`
	Guia_Estudio []byte
	MesaID       uint
	Mesa         Mesa
}

type Delegado struct {
	gorm.Model
	Nombre     string `gorm:"size:50"`
	Apellido   string `gorm:"size:50"`
	Delegacion string `gorm:"size:100"`
	Pos_Paper  []byte
	PaisID     uint
	ComiteID   uint
	Pais       Pais
	Comite     Comite
}

type Mocion struct {
	gorm.Model
	Topico       string `gorm:"size:255"`
	Tiempo_Del   int
	Cant_Del     int
	Tiempo_Total int
	Sesion       string `gorm:"size:100"`
	Fecha        time.Time
	DelegadoID   uint
	ComiteID     uint
	Delegado     Delegado
	Comite       Comite
}

type Voluntario struct {
	gorm.Model
	Nombre         string `gorm:"size:50"`
	Apellido       string `gorm:"size:50"`
	Telefono       string `gorm:"size:20"`
	SecretariadoID uint
	Secretariado   Secretariado
}

type Charla struct {
	gorm.Model
	Sesion     string `gorm:"size:100"`
	Ponente    string `gorm:"size:100"`
	Tema       string `gorm:"size:255"`
	DelegadoID uint
	Fecha      time.Time
	Hora       time.Time
	Delegado   Delegado
}

type Podio struct {
	gorm.Model
	Best       string `gorm:"size:255"`
	Outs       string `gorm:"size:255"`
	Honorifica string `gorm:"size:255"`
	Verbal     string `gorm:"size:255"`
	ComiteID   uint
	Comite     Comite
}

type Premios struct {
	gorm.Model
	Nombre string `gorm:"size:100"`
	MesaID uint
	Mesa   Mesa
}
