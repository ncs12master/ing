package total.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import total.service.FindService;

@Controller
public class LogInOutController {
	@Autowired
	FindService findService;
	
	
	@RequestMapping(path="/login", method=RequestMethod.GET)
	public String loginGetHandle() {
		return "login";
	}
	
	@RequestMapping(path="/session", method=RequestMethod.POST)
	public String loginPostHandle(@RequestParam Map<String, String> param, HttpSession session, Model model) {
		
		Map rst = findService.findByIdMailAndPass(param);
		if(rst != null) {
			session.setAttribute("logon", rst.get("ID"));
			return "redirect:/";
		} else {
			model.addAttribute("err", "logon failed");
			model.addAttribute("main" , "/login.jsp");
			model.addAttribute("title" , "login faild.");
			return "t_el_title";
		}
	}
}
