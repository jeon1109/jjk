package webproject;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import database.vueJdbc;
import vo.vueVo;

@RestController
public class vueRestController extends vueJdbc{
	
	
	
	@RequestMapping(value="/insert.do", method = RequestMethod.POST)
	public ResponseEntity<Void> insert(Model model
			, @ModelAttribute vueVo vuevo
			
			) throws Exception {

		System.out.println("insert !!!!!!!!!!!!!!!!!!!!!");
		
		//String title = request.getParameter("title");
		
		model.addAttribute(vuevo);
		inserts(vuevo);
		System.out.println("vuevo =="+vuevo.getTitle());
		return new ResponseEntity<>(HttpStatus.OK);
	
	}

}
