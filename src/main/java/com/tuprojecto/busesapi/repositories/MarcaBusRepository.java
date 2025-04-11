package com.tuprojecto.busesapi.repositories;    

import com.tuprojecto.busesapi.models.MarcaBus;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MarcaBusRepository extends JpaRepository<MarcaBus, Long> {
}
