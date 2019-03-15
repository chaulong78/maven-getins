package com.msp.givn.controller.admin.contact;

import com.msp.givn.entity.ContactUser;
import com.msp.givn.service.contact.ContactUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ContactUserController {

    @Autowired
    private ContactUserService contactService;

    @GetMapping("/admin/account/contact")
    public ModelAndView showAllContact() {
        ModelAndView modelAndView = new ModelAndView("admin/statistic/table-contact");
        List<ContactUser> contactUserList = contactService.findAll();

        modelAndView.addObject("contactList", contactUserList);
        return modelAndView;
    }

    @PostMapping("/contact")
    public String saveContact(@ModelAttribute("contact") ContactUser contact, HttpServletRequest request) {
        if (contact != null) {
            contactService.save(contact);
        }

        System.out.println();
        return "redirect:" + request.getHeader("referer");
    }

    @GetMapping("/admin/account/contact/delete")
    public ModelAndView deleteContact(@RequestParam(value = "id", required = false) Integer id) {
        ModelAndView modelAndView = new ModelAndView("redirect:/admin/account/contact");
        if (id != null) {
            contactService.deleteById(id);
        }

        return modelAndView;
    }
}
