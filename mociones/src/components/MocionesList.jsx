import React from 'react';
import { Link } from 'react-router-dom';

function MocionesList({ mociones, deleteMocion }) {
    return (
        <div>
            <h2>Lista de Mociones</h2>
            <table>
                <thead>
                <tr>
                    <th>Tópico</th>
                    <th>Tiempo por Delegado</th>
                    <th>Cantidad de Delegados</th>
                    <th>Tiempo Total</th>
                    <th>Sesión</th>
                    <th>Fecha</th>
                    <th>Acciones</th>
                </tr>
                </thead>
                <tbody>
                {mociones.map(mocion => (
                    <tr key={mocion.ID}>
                        <td>{mocion.Topico}</td>
                        <td>{mocion.Tiempo_Del}</td>
                        <td>{mocion.Cant_Del}</td>
                        <td>{mocion.Tiempo_Total}</td>
                        <td>{mocion.Sesion}</td>
                        <td>{new Date(mocion.Fecha).toLocaleDateString()}</td>
                        <td>
                            <Link to={`/ver/${mocion.ID}`} className="button-link">Ver</Link>
                            <Link to={`/editar/${mocion.ID}`} className="button-link">Editar</Link>
                            <button onClick={() => deleteMocion(mocion.ID)} className="button-delete">Eliminar</button>
                        </td>
                    </tr>
                ))}
                </tbody>
            </table>
        </div>
    );
}

export default MocionesList;
