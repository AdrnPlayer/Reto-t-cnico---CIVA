package com.tuprojecto.busesapi.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tuprojecto.busesapi.models.Bus;
import com.tuprojecto.busesapi.repositories.BusRepository;

@RestController
@RequestMapping("/bus")
@CrossOrigin(origins = "http://localhost:3000") // Permite peticiones desde React
public class BusController {

    @Autowired
    private BusRepository busRepository;

    // GET /bus - lista todos los buses
    @GetMapping
    public List<Bus> obtenerTodosLosBuses() {
        return busRepository.findAll();
    }

    // GET /bus/{id} - obtiene un bus por ID
    @GetMapping("/{id}")
    public ResponseEntity<Bus> obtenerBusPorId(@PathVariable Long id) {
        return busRepository.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }
}
