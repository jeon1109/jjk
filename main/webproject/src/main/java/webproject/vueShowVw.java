package webproject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class vueShowVw {

	@RequestMapping(value="/home.do")
	public String home(ModelMap model)throws Exception {
		System.out.println("접속하기      home !!!!!!!!!!!!!!!!!!!!!");
		return "home";
	}
	
	@RequestMapping(value="/addInfo.do")
	public String addInfo(ModelMap model)throws Exception {
		System.out.println("접속하기      addInfo !!!!!!!!!!!!!!!!!!!!!");
		return "addInfo";
	}

}
