// src/apiService.js

const API_URL = 'http://localhost:8080/mociones';

export const fetchMociones = () => {
    return fetch(API_URL)
        .then(response => response.json())
        .catch(error => {
            console.error('Error fetching mociones:', error);
            throw error;
        });
};

export const addMocion = (newMocion) => {
    return fetch(API_URL, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(newMocion)
    })
        .then(response => response.json())
        .catch(error => {
            console.error('Error adding mocion:', error);
            throw error;
        });
};

export const updateMocion = (updatedMocion) => {
    return fetch(`${API_URL}/${updatedMocion.ID}`, {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(updatedMocion)
    })
        .then(response => response.json())
        .catch(error => {
            console.error('Error updating mocion:', error);
            throw error;
        });
};

export const deleteMocion = (id) => {
    return fetch(`${API_URL}/${id}`, {
        method: 'DELETE'
    })
        .then(response => {
            if (!response.ok) {
                throw new Error('Error deleting mocion:', response.statusText);
            }
        })
        .catch(error => {
            console.error('Error deleting mocion:', error);
            throw error;
        });
};
