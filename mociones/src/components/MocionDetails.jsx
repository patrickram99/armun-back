import React from 'react';

const MocionDetails = ({ mocion }) => {
    return (
        <div>
            <h2>Detalles de la Moción</h2>
            <p>Tópico: {mocion.Topico}</p>
            <p>Tiempo por Delegado: {mocion.Tiempo_Del}</p>
            <p>Cantidad de Delegados: {mocion.Cant_Del}</p>
            <p>Tiempo Total: {mocion.Tiempo_Total}</p>
            <p>Sesión: {mocion.Sesion}</p>
            <p>Fecha: {mocion.Fecha}</p>
            <h3>Delegados</h3>
            {mocion.Delegado && (
                <div>
                    <p>Nombre: {mocion.Delegado.Nombre}</p>
                    <p>Apellido: {mocion.Delegado.Apellido}</p>
                    <p>Delegación: {mocion.Delegado.Delegacion}</p>
                </div>
            )}
        </div>
    );
};

export default MocionDetails;
