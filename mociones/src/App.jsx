import React, { useEffect, useState } from 'react';
import { BrowserRouter as Router, Route, Routes, Link } from 'react-router-dom';
import MocionesList from './components/MocionesList';
import CreateMocion from './components/CreateMocion';
import EditMocion from './components/EditMocion';
import VerMocion from './components/VerMocion';
import './App.css';

function App() {
    const [mociones, setMociones] = useState([]);

    useEffect(() => {
        fetchMociones();
    }, []);

    const fetchMociones = () => {
        fetch('http://localhost:8080/mociones')
            .then(response => response.json())
            .then(data => setMociones(data))
            .catch(error => console.error('Error fetching mociones:', error));
    };

    const addMocion = (newMocion) => {
        fetch('http://localhost:8080/mociones', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(newMocion)
        })
            .then(response => response.json())
            .then(data => {
                setMociones([...mociones, data]);
            })
            .catch(error => console.error('Error adding mocion:', error));
    };

    const updateMocion = (updatedMocion) => {
        fetch(`http://localhost:8080/mociones/${updatedMocion.ID}`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(updatedMocion)
        })
            .then(response => response.json())
            .then(data => {
                setMociones(mociones.map(mocion => (mocion.ID === data.ID ? data : mocion)));
            })
            .catch(error => console.error('Error updating mocion:', error));
    };

    const deleteMocion = (id) => {
        fetch(`http://localhost:8080/mociones/${id}`, {
            method: 'DELETE'
        })
            .then(response => {
                if (response.ok) {
                    fetchMociones();
                } else {
                    console.error('Error deleting mocion:', response.statusText);
                }
            })
            .catch(error => console.error('Error deleting mocion:', error));
    };

    return (
        <Router>
            <div>
                <nav>
                    <Link to="/">Lista de Mociones</Link> | <Link to="/crear">Agregar Moción</Link>
                </nav>
                <Routes>
                    <Route path="/" element={<MocionesList mociones={mociones} deleteMocion={deleteMocion} />} />
                    <Route path="/crear" element={<CreateMocion addMocion={addMocion} />} />
                    <Route path="/editar/:id" element={<EditMocion mociones={mociones} updateMocion={updateMocion} />} />
                    <Route path="/ver/:id" element={<VerMocion />} />
                </Routes>
            </div>
        </Router>
    );
}

export default App;
