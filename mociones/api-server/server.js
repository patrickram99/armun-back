const express = require('express');
const cors = require('cors');
const app = express();
const PORT = 8080;

let mociones = [
    {
        ID: 1,
        CreatedAt: "0001-01-01T00:00:00Z",
        UpdatedAt: "0001-01-01T00:00:00Z",
        DeletedAt: null,
        Topico: "Desarme Nuclear",
        Tiempo_Del: 10,
        Cant_Del: 5,
        Tiempo_Total: 50,
        Sesion: "Sesión 1",
        Fecha: "2024-06-01T00:00:00Z",
        DelegadoID: 1,
        ComiteID: 1,
        Delegado: {
            ID: 1,
            CreatedAt: "0001-01-01T00:00:00Z",
            UpdatedAt: "0001-01-01T00:00:00Z",
            DeletedAt: null,
            Nombre: "Gabriel",
            Apellido: "López",
            Delegacion: "Estados Unidos",
            Pos_Paper: null,
            PaisID: 1,
            ComiteID: 1,
            Pais: {
                ID: 0,
                CreatedAt: "0001-01-01T00:00:00Z",
                UpdatedAt: "0001-01-01T00:00:00Z",
                DeletedAt: null,
                Nombre: ""
            },
            Comite: {
                ID: 0,
                CreatedAt: "0001-01-01T00:00:00Z",
                UpdatedAt: "0001-01-01T00:00:00Z",
                DeletedAt: null,
                Topico: "",
                Comite_ONU: "",
                Paje_Nombre: "",
                Guia_Estudio: null,
                MesaID: 0,
                Mesa: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    DirectorID: 0,
                    DAdjuntoID: 0,
                    ModeradorID: 0,
                    Director: {
                        ID: 0,
                        CreatedAt: "0001-01-01T00:00:00Z",
                        UpdatedAt: "0001-01-01T00:00:00Z",
                        DeletedAt: null,
                        Nombre: "",
                        Apellido: "",
                        Correo: "",
                        Telefono: ""
                    },
                    DAdjunto: {
                        ID: 0,
                        CreatedAt: "0001-01-01T00:00:00Z",
                        UpdatedAt: "0001-01-01T00:00:00Z",
                        DeletedAt: null,
                        Nombre: "",
                        Apellido: "",
                        Correo: "",
                        Telefono: ""
                    },
                    Moderador: {
                        ID: 0,
                        CreatedAt: "0001-01-01T00:00:00Z",
                        UpdatedAt: "0001-01-01T00:00:00Z",
                        DeletedAt: null,
                        Nombre: "",
                        Apellido: "",
                        Correo: "",
                        Telefono: ""
                    }
                }
            }
        },
        Comite: {
            ID: 1,
            CreatedAt: "0001-01-01T00:00:00Z",
            UpdatedAt: "0001-01-01T00:00:00Z",
            DeletedAt: null,
            Topico: "Desarme Nuclear",
            Comite_ONU: "Consejo de Seguridad",
            Paje_Nombre: "Nicolás",
            Guia_Estudio: null,
            MesaID: 1,
            Mesa: {
                ID: 0,
                CreatedAt: "0001-01-01T00:00:00Z",
                UpdatedAt: "0001-01-01T00:00:00Z",
                DeletedAt: null,
                DirectorID: 0,
                DAdjuntoID: 0,
                ModeradorID: 0,
                Director: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    Nombre: "",
                    Apellido: "",
                    Correo: "",
                    Telefono: ""
                },
                DAdjunto: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    Nombre: "",
                    Apellido: "",
                    Correo: "",
                    Telefono: ""
                },
                Moderador: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    Nombre: "",
                    Apellido: "",
                    Correo: "",
                    Telefono: ""
                }
            }
        }
    },
    {
        ID: 2,
        CreatedAt: "0001-01-01T00:00:00Z",
        UpdatedAt: "0001-01-01T00:00:00Z",
        DeletedAt: null,
        Topico: "Cambio Climático",
        Tiempo_Del: 15,
        Cant_Del: 6,
        Tiempo_Total: 90,
        Sesion: "Sesión 2",
        Fecha: "2024-06-02T00:00:00Z",
        DelegadoID: 2,
        ComiteID: 2,
        Delegado: {
            ID: 2,
            CreatedAt: "0001-01-01T00:00:00Z",
            UpdatedAt: "0001-01-01T00:00:00Z",
            DeletedAt: null,
            Nombre: "Sofía",
            Apellido: "Martínez",
            Delegacion: "Reino Unido",
            Pos_Paper: null,
            PaisID: 2,
            ComiteID: 2,
            Pais: {
                ID: 0,
                CreatedAt: "0001-01-01T00:00:00Z",
                UpdatedAt: "0001-01-01T00:00:00Z",
                DeletedAt: null,
                Nombre: ""
            },
            Comite: {
                ID: 0,
                CreatedAt: "0001-01-01T00:00:00Z",
                UpdatedAt: "0001-01-01T00:00:00Z",
                DeletedAt: null,
                Topico: "",
                Comite_ONU: "",
                Paje_Nombre: "",
                Guia_Estudio: null,
                MesaID: 0,
                Mesa: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    DirectorID: 0,
                    DAdjuntoID: 0,
                    ModeradorID: 0,
                    Director: {
                        ID: 0,
                        CreatedAt: "0001-01-01T00:00:00Z",
                        UpdatedAt: "0001-01-01T00:00:00Z",
                        DeletedAt: null,
                        Nombre: "",
                        Apellido: "",
                        Correo: "",
                        Telefono: ""
                    },
                    DAdjunto: {
                        ID: 0,
                        CreatedAt: "0001-01-01T00:00:00Z",
                        UpdatedAt: "0001-01-01T00:00:00Z",
                        DeletedAt: null,
                        Nombre: "",
                        Apellido: "",
                        Correo: "",
                        Telefono: ""
                    },
                    Moderador: {
                        ID: 0,
                        CreatedAt: "0001-01-01T00:00:00Z",
                        UpdatedAt: "0001-01-01T00:00:00Z",
                        DeletedAt: null,
                        Nombre: "",
                        Apellido: "",
                        Correo: "",
                        Telefono: ""
                    }
                }
            }
        },
        Comite: {
            ID: 2,
            CreatedAt: "0001-01-01T00:00:00Z",
            UpdatedAt: "0001-01-01T00:00:00Z",
            DeletedAt: null,
            Topico: "Cambio Climático",
            Comite_ONU: "Asamblea General",
            Paje_Nombre: "María",
            Guia_Estudio: null,
            MesaID: 2,
            Mesa: {
                ID: 0,
                CreatedAt: "0001-01-01T00:00:00Z",
                UpdatedAt: "0001-01-01T00:00:00Z",
                DeletedAt: null,
                DirectorID: 0,
                DAdjuntoID: 0,
                ModeradorID: 0,
                Director: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    Nombre: "",
                    Apellido: "",
                    Correo: "",
                    Telefono: ""
                },
                DAdjunto: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    Nombre: "",
                    Apellido: "",
                    Correo: "",
                    Telefono: ""
                },
                Moderador: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    Nombre: "",
                    Apellido: "",
                    Correo: "",
                    Telefono: ""
                }
            }
        }
    },
    {
        ID: 3,
        CreatedAt: "0001-01-01T00:00:00Z",
        UpdatedAt: "0001-01-01T00:00:00Z",
        DeletedAt: null,
        Topico: "Derechos Humanos",
        Tiempo_Del: 12,
        Cant_Del: 4,
        Tiempo_Total: 48,
        Sesion: "Sesión 1",
        Fecha: "2024-06-03T00:00:00Z",
        DelegadoID: 3,
        ComiteID: 3,
        Delegado: {
            ID: 3,
            CreatedAt: "0001-01-01T00:00:00Z",
            UpdatedAt: "0001-01-01T00:00:00Z",
            DeletedAt: null,
            Nombre: "Emilio",
            Apellido: "García",
            Delegacion: "Francia",
            Pos_Paper: null,
            PaisID: 3,
            ComiteID: 3,
            Pais: {
                ID: 0,
                CreatedAt: "0001-01-01T00:00:00Z",
                UpdatedAt: "0001-01-01T00:00:00Z",
                DeletedAt: null,
                Nombre: ""
            },
            Comite: {
                ID: 0,
                CreatedAt: "0001-01-01T00:00:00Z",
                UpdatedAt: "0001-01-01T00:00:00Z",
                DeletedAt: null,
                Topico: "",
                Comite_ONU: "",
                Paje_Nombre: "",
                Guia_Estudio: null,
                MesaID: 0,
                Mesa: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    DirectorID: 0,
                    DAdjuntoID: 0,
                    ModeradorID: 0,
                    Director: {
                        ID: 0,
                        CreatedAt: "0001-01-01T00:00:00Z",
                        UpdatedAt: "0001-01-01T00:00:00Z",
                        DeletedAt: null,
                        Nombre: "",
                        Apellido: "",
                        Correo: "",
                        Telefono: ""
                    },
                    DAdjunto: {
                        ID: 0,
                        CreatedAt: "0001-01-01T00:00:00Z",
                        UpdatedAt: "0001-01-01T00:00:00Z",
                        DeletedAt: null,
                        Nombre: "",
                        Apellido: "",
                        Correo: "",
                        Telefono: ""
                    },
                    Moderador: {
                        ID: 0,
                        CreatedAt: "0001-01-01T00:00:00Z",
                        UpdatedAt: "0001-01-01T00:00:00Z",
                        DeletedAt: null,
                        Nombre: "",
                        Apellido: "",
                        Correo: "",
                        Telefono: ""
                    }
                }
            }
        },
        Comite: {
            ID: 3,
            CreatedAt: "0001-01-01T00:00:00Z",
            UpdatedAt: "0001-01-01T00:00:00Z",
            DeletedAt: null,
            Topico: "Derechos Humanos",
            Comite_ONU: "Consejo de Derechos Humanos",
            Paje_Nombre: "Julia",
            Guia_Estudio: null,
            MesaID: 3,
            Mesa: {
                ID: 0,
                CreatedAt: "0001-01-01T00:00:00Z",
                UpdatedAt: "0001-01-01T00:00:00Z",
                DeletedAt: null,
                DirectorID: 0,
                DAdjuntoID: 0,
                ModeradorID: 0,
                Director: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    Nombre: "",
                    Apellido: "",
                    Correo: "",
                    Telefono: ""
                },
                DAdjunto: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    Nombre: "",
                    Apellido: "",
                    Correo: "",
                    Telefono: ""
                },
                Moderador: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    Nombre: "",
                    Apellido: "",
                    Correo: "",
                    Telefono: ""
                }
            }
        }
    },
    {
        ID: 4,
        CreatedAt: "0001-01-01T00:00:00Z",
        UpdatedAt: "0001-01-01T00:00:00Z",
        DeletedAt: null,
        Topico: "Economía Global",
        Tiempo_Del: 8,
        Cant_Del: 3,
        Tiempo_Total: 24,
        Sesion: "Sesión 2",
        Fecha: "2024-06-04T00:00:00Z",
        DelegadoID: 4,
        ComiteID: 4,
        Delegado: {
            ID: 4,
            CreatedAt: "0001-01-01T00:00:00Z",
            UpdatedAt: "0001-01-01T00:00:00Z",
            DeletedAt: null,
            Nombre: "Mariana",
            Apellido: "Hernández",
            Delegacion: "China",
            Pos_Paper: null,
            PaisID: 4,
            ComiteID: 4,
            Pais: {
                ID: 0,
                CreatedAt: "0001-01-01T00:00:00Z",
                UpdatedAt: "0001-01-01T00:00:00Z",
                DeletedAt: null,
                Nombre: ""
            },
            Comite: {
                ID: 0,
                CreatedAt: "0001-01-01T00:00:00Z",
                UpdatedAt: "0001-01-01T00:00:00Z",
                DeletedAt: null,
                Topico: "",
                Comite_ONU: "",
                Paje_Nombre: "",
                Guia_Estudio: null,
                MesaID: 0,
                Mesa: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    DirectorID: 0,
                    DAdjuntoID: 0,
                    ModeradorID: 0,
                    Director: {
                        ID: 0,
                        CreatedAt: "0001-01-01T00:00:00Z",
                        UpdatedAt: "0001-01-01T00:00:00Z",
                        DeletedAt: null,
                        Nombre: "",
                        Apellido: "",
                        Correo: "",
                        Telefono: ""
                    },
                    DAdjunto: {
                        ID: 0,
                        CreatedAt: "0001-01-01T00:00:00Z",
                        UpdatedAt: "0001-01-01T00:00:00Z",
                        DeletedAt: null,
                        Nombre: "",
                        Apellido: "",
                        Correo: "",
                        Telefono: ""
                    },
                    Moderador: {
                        ID: 0,
                        CreatedAt: "0001-01-01T00:00:00Z",
                        UpdatedAt: "0001-01-01T00:00:00Z",
                        DeletedAt: null,
                        Nombre: "",
                        Apellido: "",
                        Correo: "",
                        Telefono: ""
                    }
                }
            }
        },
        Comite: {
            ID: 4,
            CreatedAt: "0001-01-01T00:00:00Z",
            UpdatedAt: "0001-01-01T00:00:00Z",
            DeletedAt: null,
            Topico: "Economía Global",
            Comite_ONU: "ECOSOC",
            Paje_Nombre: "Carlos",
            Guia_Estudio: null,
            MesaID: 4,
            Mesa: {
                ID: 0,
                CreatedAt: "0001-01-01T00:00:00Z",
                UpdatedAt: "0001-01-01T00:00:00Z",
                DeletedAt: null,
                DirectorID: 0,
                DAdjuntoID: 0,
                ModeradorID: 0,
                Director: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    Nombre: "",
                    Apellido: "",
                    Correo: "",
                    Telefono: ""
                },
                DAdjunto: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    Nombre: "",
                    Apellido: "",
                    Correo: "",
                    Telefono: ""
                },
                Moderador: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    Nombre: "",
                    Apellido: "",
                    Correo: "",
                    Telefono: ""
                }
            }
        }
    },
    {
        ID: 5,
        CreatedAt: "0001-01-01T00:00:00Z",
        UpdatedAt: "0001-01-01T00:00:00Z",
        DeletedAt: null,
        Topico: "Igualdad de Género",
        Tiempo_Del: 20,
        Cant_Del: 7,
        Tiempo_Total: 140,
        Sesion: "Sesión 1",
        Fecha: "2024-06-05T00:00:00Z",
        DelegadoID: 5,
        ComiteID: 5,
        Delegado: {
            ID: 5,
            CreatedAt: "0001-01-01T00:00:00Z",
            UpdatedAt: "0001-01-01T00:00:00Z",
            DeletedAt: null,
            Nombre: "Alonso",
            Apellido: "Gómez",
            Delegacion: "Rusia",
            Pos_Paper: null,
            PaisID: 5,
            ComiteID: 5,
            Pais: {
                ID: 0,
                CreatedAt: "0001-01-01T00:00:00Z",
                UpdatedAt: "0001-01-01T00:00:00Z",
                DeletedAt: null,
                Nombre: ""
            },
            Comite: {
                ID: 0,
                CreatedAt: "0001-01-01T00:00:00Z",
                UpdatedAt: "0001-01-01T00:00:00Z",
                DeletedAt: null,
                Topico: "",
                Comite_ONU: "",
                Paje_Nombre: "",
                Guia_Estudio: null,
                MesaID: 0,
                Mesa: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    DirectorID: 0,
                    DAdjuntoID: 0,
                    ModeradorID: 0,
                    Director: {
                        ID: 0,
                        CreatedAt: "0001-01-01T00:00:00Z",
                        UpdatedAt: "0001-01-01T00:00:00Z",
                        DeletedAt: null,
                        Nombre: "",
                        Apellido: "",
                        Correo: "",
                        Telefono: ""
                    },
                    DAdjunto: {
                        ID: 0,
                        CreatedAt: "0001-01-01T00:00:00Z",
                        UpdatedAt: "0001-01-01T00:00:00Z",
                        DeletedAt: null,
                        Nombre: "",
                        Apellido: "",
                        Correo: "",
                        Telefono: ""
                    },
                    Moderador: {
                        ID: 0,
                        CreatedAt: "0001-01-01T00:00:00Z",
                        UpdatedAt: "0001-01-01T00:00:00Z",
                        DeletedAt: null,
                        Nombre: "",
                        Apellido: "",
                        Correo: "",
                        Telefono: ""
                    }
                }
            }
        },
        Comite: {
            ID: 5,
            CreatedAt: "0001-01-01T00:00:00Z",
            UpdatedAt: "0001-01-01T00:00:00Z",
            DeletedAt: null,
            Topico: "Igualdad de Género",
            Comite_ONU: "UN Women",
            Paje_Nombre: "Andrea",
            Guia_Estudio: null,
            MesaID: 5,
            Mesa: {
                ID: 0,
                CreatedAt: "0001-01-01T00:00:00Z",
                UpdatedAt: "0001-01-01T00:00:00Z",
                DeletedAt: null,
                DirectorID: 0,
                DAdjuntoID: 0,
                ModeradorID: 0,
                Director: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    Nombre: "",
                    Apellido: "",
                    Correo: "",
                    Telefono: ""
                },
                DAdjunto: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    Nombre: "",
                    Apellido: "",
                    Correo: "",
                    Telefono: ""
                },
                Moderador: {
                    ID: 0,
                    CreatedAt: "0001-01-01T00:00:00Z",
                    UpdatedAt: "0001-01-01T00:00:00Z",
                    DeletedAt: null,
                    Nombre: "",
                    Apellido: "",
                    Correo: "",
                    Telefono: ""
                }
            }
        }
    }
];

app.use(cors());
app.use(express.json());

app.get('/mociones', (req, res) => {
    res.json(mociones);
});

app.get('/mociones/:id', (req, res) => {
    const id = parseInt(req.params.id);
    const mocion = mociones.find(m => m.ID === id);
    if (mocion) {
        res.json(mocion);
    } else {
        res.status(404).json({ message: 'Moción no encontrada' });
    }
});

app.post('/mociones', (req, res) => {
    const newMocion = req.body;
    newMocion.ID = mociones.length + 1;
    mociones.push(newMocion);
    res.json(newMocion);
});

app.put('/mociones/:id', (req, res) => {
    const { id } = req.params;
    const updatedMocion = req.body;
    mociones = mociones.map(mocion => (mocion.ID === parseInt(id) ? updatedMocion : mocion));
    res.json(updatedMocion);
});

app.delete('/mociones/:id', (req, res) => {
    const { id } = req.params;
    mociones = mociones.filter(mocion => mocion.ID !== parseInt(id));
    res.json({ message: 'Mocion deleted' });
});

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});