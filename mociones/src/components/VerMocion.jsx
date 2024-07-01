import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';

function VerMocion() {
    const { id } = useParams();
    const [mocion, setMocion] = useState(null);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        fetch(`http://localhost:8080/mociones/${id}`)
            .then(response => response.json())
            .then(data => {
                console.log('Moción data:', data);  // Agrega esta línea para depuración
                setMocion(data);
                setLoading(false);
            })
            .catch(error => {
                console.error('Error fetching mocion:', error);
                setLoading(false);
            });
    }, [id]);

    if (loading) {
        return <div>Loading...</div>;
    }

    if (!mocion) {
        return <div>No se encontró la moción.</div>;
    }

    return (
        <div>
            <h2>Detalles de la Moción</h2>
            <p><strong>Tópico:</strong> {mocion.Topico}</p>
            <p><strong>Tiempo por Delegado:</strong> {mocion.Tiempo_Del}</p>
            <p><strong>Cantidad de Delegados:</strong> {mocion.Cant_Del}</p>
            <p><strong>Tiempo Total:</strong> {mocion.Tiempo_Total}</p>
            <p><strong>Sesión:</strong> {mocion.Sesion}</p>
            <p><strong>Fecha:</strong> {new Date(mocion.Fecha).toLocaleDateString()}</p>
            <h3>Delegados</h3>
            {mocion.Delegado ? (
                <ul>
                    <li>
                        <p><strong>Nombre:</strong> {mocion.Delegado.Nombre}</p>
                        <p><strong>Apellido:</strong> {mocion.Delegado.Apellido}</p>
                        <p><strong>Delegación:</strong> {mocion.Delegado.Delegacion}</p>
                    </li>
                </ul>
            ) : (
                <p>No hay delegados en esta moción.</p>
            )}
        </div>
    );
}

export default VerMocion;
