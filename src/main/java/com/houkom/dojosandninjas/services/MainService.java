package com.houkom.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.houkom.dojosandninjas.models.Dojo;
import com.houkom.dojosandninjas.models.Ninja;
import com.houkom.dojosandninjas.repositories.DojoRepository;
import com.houkom.dojosandninjas.repositories.NinjaRepository;

@Service
public class MainService {
	
	@Autowired
	NinjaRepository ninjaRepository;
	
	@Autowired
	DojoRepository dojoRepository;
	
	public List<Ninja> allNinjas() {
		return ninjaRepository.findAll();
	}
	
	public List<Dojo> allDojos() {
		return dojoRepository.findAll();
	}
	
	public Ninja saveNinja(Ninja ninja) {
		return ninjaRepository.save(ninja);
	}
	
	public Dojo saveDojo(Dojo dojo) {
		return dojoRepository.save(dojo);
	}
	
	public Dojo findOneDojo(Long id) {
		Optional<Dojo>optionalDojo = dojoRepository.findById(id);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		}else {
			return null;
		}
	}
}
