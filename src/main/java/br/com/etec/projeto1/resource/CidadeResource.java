package br.com.etec.projeto1.resource;

import java.net.URI;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import br.com.etec.projeto1.model.Cidade;
import br.com.etec.projeto1.service.CidadeService;

@RestController
@RequestMapping("/cidades")
public class CidadeResource {
	@Autowired
	private CidadeService cidadeService;

	@GetMapping("/todas")
	public List<Cidade> listarTodas() {
		return cidadeService.listarTodasCidades();
	}

	@GetMapping("/{id}")
	public ResponseEntity<Cidade> find(@PathVariable Integer id) {
		Cidade cidade = cidadeService.findCidade(id);
		return ResponseEntity.ok().body(cidade);
	}

	@GetMapping()
	public Page<Cidade> pesquisar(@RequestParam(required = false, defaultValue = "") String nome, Pageable pageable) {
		return cidadeService.pesquisar(nome, pageable);
	}

	@PostMapping()
	public ResponseEntity<Void> insert(@RequestBody Cidade cidade) {
		cidade = cidadeService.insert(cidade);
		URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(cidade.getId()).toUri();
		return ResponseEntity.created(uri).build();
	}

	@DeleteMapping("/{id}")
	public ResponseEntity<Void> delete(@PathVariable Integer id) {
		cidadeService.delete(id);
		return ResponseEntity.noContent().build();
	}

	@PutMapping("/{id}")
	public ResponseEntity<Void> update(@RequestBody Cidade cidade, @PathVariable Integer id) {
		cidadeService.update(cidade);
		return ResponseEntity.ok().build();
	}

}
