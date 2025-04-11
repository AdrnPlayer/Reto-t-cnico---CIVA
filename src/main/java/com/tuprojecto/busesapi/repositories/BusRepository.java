package com.tuprojecto.busesapi.repositories;

import com.tuprojecto.busesapi.models.Bus;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BusRepository extends JpaRepository<Bus, Long> {
}
