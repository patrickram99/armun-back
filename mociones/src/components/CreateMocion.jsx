import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';

function CreateMocion({ addMocion }) {
    const [topico, setTopico] = useState('');
    const [tiempoDel, setTiempoDel] = useState('');
    const [cantDel, setCantDel] = useState('');
    const [sesion, setSesion] = useState('');
    const [fecha, setFecha] = useState('');
    const navigate = useNavigate();

    const handleSubmit = (e) => {
        e.preventDefault();
        const newMocion = {
            Topico: topico,
            Tiempo_Del: parseInt(tiempoDel),
            Cant_Del: parseInt(cantDel),
            Tiempo_Total: parseInt(tiempoDel) * parseInt(cantDel),
            Sesion: sesion,
            Fecha: fecha
        };

        addMocion(newMocion);
        navigate('/');
    };

    return (
        <div>
            <h2>Agregar Moción</h2>
            <form onSubmit={handleSubmit}>
                <div>
                    <label>Tópico:</label>
                    <input type="text" value={topico} onChange={(e) => setTopico(e.target.value)} required />
                </div>
                <div>
                    <label>Tiempo por Delegado:</label>
                    <input type="number" value={tiempoDel} onChange={(e) => setTiempoDel(e.target.value)} required />
                </div>
                <div>
                    <label>Cantidad de Delegados:</label>
                    <input type="number" value={cantDel} onChange={(e) => setCantDel(e.target.value)} required />
                </div>
                <div>
                    <label>Sesión:</label>
                    <input type="text" value={sesion} onChange={(e) => setSesion(e.target.value)} required />
                </div>
                <div>
                    <label>Fecha:</label>
                    <input type="date" value={fecha} onChange={(e) => setFecha(e.target.value)} required />
                </div>
                <button type="submit">Agregar Moción</button>
            </form>
        </div>
    );
}

export default CreateMocion;
