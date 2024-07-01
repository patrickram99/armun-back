import React, { useState, useEffect } from 'react';

const MocionForm = ({ initialData, onSubmit, onClose }) => {
    const [formData, setFormData] = useState({
        Topico: '',
        Tiempo_Del: '',
        Cant_Del: '',
        Sesion: '',
        Fecha: ''
    });

    useEffect(() => {
        if (initialData) {
            setFormData(initialData);
        }
    }, [initialData]);

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData({ ...formData, [name]: value });
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        formData.Tiempo_Total = formData.Tiempo_Del * formData.Cant_Del;
        onSubmit(formData);
        onClose();
    };

    return (
        <div className="modal">
            <form onSubmit={handleSubmit}>
                <label>
                    Tópico:
                    <input
                        type="text"
                        name="Topico"
                        value={formData.Topico}
                        onChange={handleChange}
                        required
                    />
                </label>
                <label>
                    Tiempo por Delegado:
                    <input
                        type="number"
                        name="Tiempo_Del"
                        value={formData.Tiempo_Del}
                        onChange={handleChange}
                        required
                    />
                </label>
                <label>
                    Cantidad de Delegados:
                    <input
                        type="number"
                        name="Cant_Del"
                        value={formData.Cant_Del}
                        onChange={handleChange}
                        required
                    />
                </label>
                <label>
                    Sesión:
                    <input
                        type="text"
                        name="Sesion"
                        value={formData.Sesion}
                        onChange={handleChange}
                        required
                    />
                </label>
                <label>
                    Fecha:
                    <input
                        type="date"
                        name="Fecha"
                        value={formData.Fecha}
                        onChange={handleChange}
                        required
                    />
                </label>
                <button type="submit">Guardar</button>
                <button type="button" onClick={onClose}>Cancelar</button>
            </form>
        </div>
    );
};

export default MocionForm;
