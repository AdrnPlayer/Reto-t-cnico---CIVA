import React, { useEffect, useState } from "react";
import "./App.css";

function App() {
  const [buses, setBuses] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const [busSeleccionado, setBusSeleccionado] = useState(null);
  const [mostrarModal, setMostrarModal] = useState(false);
  const busesPerPage = 5;

  useEffect(() => {
    fetch("http://localhost:8081/bus")
      .then((res) => res.json())
      .then((data) => setBuses(data))
      .catch((err) => console.error("Error al obtener los buses", err));
  }, []);

  const indexOfLastBus = currentPage * busesPerPage;
  const indexOfFirstBus = indexOfLastBus - busesPerPage;
  const currentBuses = buses.slice(indexOfFirstBus, indexOfLastBus);

  const paginate = (pageNumber) => setCurrentPage(pageNumber);

  const handleVerDetalles = (bus) => {
    setBusSeleccionado(bus);
    setMostrarModal(true);
  };

  const cerrarModal = () => {
    setMostrarModal(false);
    setBusSeleccionado(null);
  };

  return (
    <div className="app-container">
      <h1>Lista de Buses</h1>
      <table className="bus-table">
        <thead>
          <tr>
            <th>#</th>
            <th>Número</th>
            <th>Placa</th>
            <th>Fecha creación</th>
            <th>Características</th>
            <th>Estado</th>
            <th>Marca</th>
            <th>Acciones</th>
          </tr>
        </thead>
        <tbody>
          {currentBuses.map((bus, index) => (
            <tr key={index}>
              <td>{indexOfFirstBus + index + 1}</td>
              <td>{bus.numeroBus}</td>
              <td>{bus.placa}</td>
              <td>{bus.fechaCreacion}</td>
              <td>{bus.caracteristicas}</td>
              <td>{bus.estado === 1 ? "Operativo" : "Inactivo"}</td>
              <td>{bus.marcaBus?.nombre}</td>
              <td className="acciones">
                <button className="ver" onClick={() => handleVerDetalles(bus)}>👁️</button>
                <button className="editar">✏️</button>
                <button className="eliminar">🗑️</button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>

      <div className="paginacion">
        {[...Array(Math.ceil(buses.length / busesPerPage))].map((_, i) => (
          <button
            key={i}
            onClick={() => paginate(i + 1)}
            className={currentPage === i + 1 ? "activo" : ""}
          >
            {i + 1}
          </button>
        ))}
      </div>

      {mostrarModal && busSeleccionado && (
        <div className="modal-overlay" onClick={cerrarModal}>
          <div className="modal-content" onClick={(e) => e.stopPropagation()}>
            <h2>Detalles del Bus {busSeleccionado.numeroBus}</h2>
            <p><strong>Placa:</strong> {busSeleccionado.placa}</p>
            <p><strong>Fecha creación:</strong> {busSeleccionado.fechaCreacion}</p>
            <p><strong>Características:</strong> {busSeleccionado.caracteristicas || "N/A"}</p>
            <p><strong>Estado:</strong> {busSeleccionado.estado === 1 ? "Operativo" : "Inactivo"}</p>
            <p><strong>Marca:</strong> {busSeleccionado.marcaBus?.nombre || "Desconocida"}</p>
            <button onClick={cerrarModal} className="btn-cerrar">Cerrar</button>
          </div>
        </div>
      )}
    </div>
  );
}

export default App;
