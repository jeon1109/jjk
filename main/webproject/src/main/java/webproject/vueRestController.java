package webproject;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import database.vueJdbc;

@RestController
public class vueRestController extends vueJdbc{

	@RequestMapping(value="/insert.do", method = RequestMethod.POST)
	public void insert(ModelMap model)throws Exception {
		System.out.println("insert !!!!!!!!!!!!!!!!!!!!!");
		
		insert();
	}

}
