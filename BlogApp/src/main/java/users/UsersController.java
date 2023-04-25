package users;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import apps.Users;
import database.BlogDatabase;

@Controller
public class UsersController {
	
	private BlogDatabase connection= new BlogDatabase();

	@RequestMapping("/users")
	public String home(@ModelAttribute("user") Users user,BindingResult result)
	{
		return "users";
	}
	
	@RequestMapping("/createuser")
	public String createUser(@ModelAttribute("user") Users user, BindingResult result) throws ClassNotFoundException, SQLException
	{
		connection.createUser(user);
		return "redirect:/userlogin";
	}
	
	@RequestMapping("/userlogin")
	public String login(@ModelAttribute("user") Users user, BindingResult result, Model model, String createBlog, HttpSession session) throws ClassNotFoundException, SQLException
	{
		if(session.getAttribute("FirstName")!=null) {
			return "welcome";
		}
		String data=(String) model.asMap().get("mapping1Form");
		model.addAttribute("data", data);
		return "loginPage";
	}
	
	@RequestMapping("/getuser")
	public String getuser(@ModelAttribute("user") Users user, BindingResult result, RedirectAttributes redirectAttributes, HttpServletRequest request) throws ClassNotFoundException, SQLException
	{
		
		List<Users> users=connection.getUser(user.getEmail());
		
			
			for(Users userd :users)
			{
				System.out.println(userd.getEmail());
				System.out.println(userd.getPassword());
				System.out.println(userd.getFirstName());
				System.out.println(userd.getPassword());
				System.out.println(userd.getUseruuid());


				if(userd.getEmail().equals(user.getEmail()) && userd.getPassword().equals(user.getPassword())) {
					
					HttpSession session = request.getSession();
					session.setAttribute("FirstName", userd.getFirstName());
					String name=request.getParameter("data");
					if(name.isEmpty()) {
						return "welcome";
					}
					return "redirect:/createblog";
				}
			}
			redirectAttributes.addFlashAttribute("message", "Incorrect email or password. Please Re-Enter");
		    return "redirect:/userlogin";
	}
	
	@RequestMapping("/logout")
	public String logout( HttpServletRequest request)
	{
		HttpSession session = request.getSession(false);
		 if (session != null) {
		        session.invalidate();
		    }
		return "redirect:/userlogin";
	}
	
}
