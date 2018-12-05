package spring.sts.heyyo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.model.buisness_required.Buisness_requiredDAO;

@Controller
public class Buisness_requiredController {
	
	/*
	@Autowired
	private ReplyDAO rdao;

	
	@Autowired
	private BbsService mgr;

*/
/*	
	 @Autowired
	private Buisness_requiredDAO dao;
	


 */
	
	@RequestMapping(value="/buisness/list", method=RequestMethod.GET)
	public String list(HttpServletRequest request, Model model) {
		
		
		
		return "/buisness/list";
	}
	/*
	@RequestMapping(value="/shop/01", method=RequestMethod.GET)
	public String shop01() {
		
		
		return "/shop/01";
	}
	
	@RequestMapping(value="/shop/02", method=RequestMethod.GET)
	public String shop02() {
		
		
		return "/shop/02";
	}
	
	@RequestMapping(value="/boss/001", method=RequestMethod.GET)
	public String boss001() {
		
		
		return "/boss/001";
	}
	
	@RequestMapping(value="/myshop/000", method=RequestMethod.GET)
	public String myshop000() {
		
		
		return "/myshop/000";
	}
	
	@RequestMapping(value="/myshop/001", method=RequestMethod.GET)
	public String myshop001() {
		
		
		return "/myshop/001";
		
	}
	@RequestMapping(value="/myshop/002", method=RequestMethod.GET)
	public String boss002() {
		
		
		return "/myshop/002";
	}
	@RequestMapping(value="/myshop/003", method=RequestMethod.GET)
	public String myshop003() {
		
		
		return "/myshop/003";
	}
	@RequestMapping(value="/myshop/004", method=RequestMethod.GET)
	public String myshop004() {
		
		
		return "/myshop/004";
	}
	
*/

	
	
}
