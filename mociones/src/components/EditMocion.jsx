import React, { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';

function EditMocion({ mociones, updateMocion }) {
    const { id } = useParams();
    const [mocion, setMocion] = useState(null);
    const navigate = useNavigate();

    useEffect(() => {
        const foundMocion = mociones.find(mocion => mocion.ID === parseInt(id));
        if (foundMocion) {
            setMocion(foundMocion);
        }
    }, [id, mociones]);

    const handleSubmit = (e) => {
        e.preventDefault();

        const updatedMocion = {
            ...mocion,
            Tiempo_Total: mocion.Tiempo_Del * mocion.Cant_Del
        };

        updateMocion(updatedMocion);
        navigate('/');
    };

    if (!mocion) return <div>Loading...</div>;

    return (
        <div>
            <h2>Editar Moción</h2>
            <form onSubmit={handleSubmit}>
                <div>
                    <label>Tópico:</label>
                    <input
                        type="text"
                        value={mocion.Topico}
                        onChange={(e) => setMocion({ ...mocion, Topico: e.target.value })}
                        required
                    />
                </div>
                <div>
                    <label>Tiempo por Delegado:</label>
                    <input
                        type="number"
                        value={mocion.Tiempo_Del}
                        onChange={(e) => setMocion({ ...mocion, Tiempo_Del: e.target.value })}
                        required
                    />
                </div>
                <div>
                    <label>Cantidad de Delegados:</label>
                    <input
                        type="number"
                        value={mocion.Cant_Del}
                        onChange={(e) => setMocion({ ...mocion, Cant_Del: e.target.value })}
                        required
                    />
                </div>
                <div>
                    <label>Sesión:</label>
                    <input
                        type="text"
                        value={mocion.Sesion}
                        onChange={(e) => setMocion({ ...mocion, Sesion: e.target.value })}
                        required
                    />
                </div>
                <div>
                    <label>Fecha:</label>
                    <input
                        type="date"
                        value={mocion.Fecha.split('T')[0]}
                        onChange={(e) => setMocion({ ...mocion, Fecha: e.target.value })}
                        required
                    />
                </div>
                <button type="submit">Guardar Cambios</button>
            </form>
        </div>
    );
}

export default EditMocion;
