import React from 'react';
import { useParams } from 'react-router-dom';

const ViewMocion = ({ mociones }) => {
    const { id } = useParams();
    const mocion = mociones.find(m => m.id === parseInt(id));

    if (!mocion) {
        return <div>Moción no encontrada</div>;
    }

    return (
        <div style={{ padding: '20px', maxWidth: '500px', margin: '0 auto' }}>
            <h2>Detalles de la Moción</h2>
            <p><strong>Tópico:</strong> {mocion.topico}</p>
            <p><strong>Tiempo por Delegado:</strong> {mocion.tiempoDel}</p>
            <p><strong>Cantidad de Delegados:</strong> {mocion.cantDel}</p>
            <p><strong>Tiempo Total:</strong> {mocion.tiempoTotal}</p>
            <p><strong>Sesión:</strong> {mocion.sesion}</p>
            <p><strong>Fecha:</strong> {new Date(mocion.fecha).toLocaleDateString()}</p>
        </div>
    );
};

export default ViewMocion;
