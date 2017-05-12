package com.sterling.controller.web;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sterling.contacts.model.ContactVO;
import com.sterling.controller.service.AddressBookService;

@Controller
@RequestMapping ("/")
public class WebController {
	static final Logger logger = LogManager.getLogger(WebController.class.getName());
	
	private final AddressBookService service;
	
	@Autowired
	public WebController(AddressBookService service){
		this.service = service;
	}

	
	@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST})
	public String index(Map<String, Object> model) {

		//logger.debug("index() is executed!");

		model.put("title", service.getTitle(""));
		model.put("msg", service.getDesc());

		return "index";
	}
	
	@RequestMapping(value = "/contacts", method = RequestMethod.GET)
	public String getAllContacts(@ModelAttribute("contactForm")ContactVO contact, Map<String, Object> model) {
		
		List<ContactVO>  contacts = service.getAllContacts();
		model.put("contacts", contacts);

		return "contacts";
	}
/*	@RequestMapping(value = "addressbook/searchByName/{nameToSearch}", method = RequestMethod.GET)
		public String getSearchContactByName(@PathVariable String nameToSearch, Map<String, Object> model) {
		List<ContactVO>  contacts = service.getContactByName(nameToSearch);
        model.put("contacts", contacts);

		return "contacts";
	}*/
	//@RequestParam("somedata")
	@RequestMapping(value = "/search", method = RequestMethod.POST)

	  // public String getSearchContactByName(@ModelAttribute("SpringWeb")ContactVO contact,   ModelMap model) 
	   public String getSearchContactByName(@ModelAttribute("contactForm")ContactVO contact,   ModelMap model)

{
		
	    // model.addAttribute("contactName", contact.getContactName());
		  List<ContactVO>  contacts = service.getContactByName(contact);
	      //List<ContactVO>  contacts = service.getContactByName("SAMSUNG");
	        model.put("contacts", contacts);

			return "contacts";

}
	
	/**
     * This method will list all existing users.
     */
    @RequestMapping(value = { "/list" }, method = RequestMethod.POST)
    public String listUsers(Map<String, Object> model) {
    	List<ContactVO>  contacts = service.getAllContacts();
        model.put("contacts", contacts);
        return "userslist";
    }

}
