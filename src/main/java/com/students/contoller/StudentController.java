package com.students.contoller;

import java.io.File;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.students.domain.Student;

@Controller
public class StudentController {

	@ModelAttribute("genderList")
	List<String> genderList() {
		return Arrays.asList("F", "M");
	}

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String showForm(@ModelAttribute("student") Student student, Model model) {

		return "registration";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String processForm(@Valid @ModelAttribute("student") Student student, BindingResult bindingResult,
			Model model, HttpServletRequest request) {
		if (bindingResult.hasErrors()) {
			return "registration";
		}
		try {
			student.getImageFile().transferTo(new File(request.getServletContext().getRealPath("/")
					+ "resources/images/" + student.getFirstName() + ".png"));
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return "success";

	}

}
