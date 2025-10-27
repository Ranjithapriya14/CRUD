package com.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.model.Student;
import com.service.StudentService;

@Controller
@RequestMapping("/students")
public class StudentController{
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/new")
	public String showNewStudentForm(Model model) {
		System.out.println("im in show");
		Student student = new Student();
		model.addAttribute("student",student);
		return "create";
	}

	@RequestMapping("/save")
	public String saveStudent(@ModelAttribute("student")Student student,@RequestParam("image1") MultipartFile images)throws IOException {
		if(images != null && !images.isEmpty()) {
			student.setImage(images.getBytes());
		}else {
			System.out.println("No Image Uploaded");
		}
		
        studentService.saveStudent(student);
	    return "redirect:/students/list";
	}
	@GetMapping("/list")
	public String listStudents(Model model) {
		List<Student> stulist=studentService.getAllStudents();
		model.addAttribute("studentsstulist",stulist);
		return "list-student";
	}
	@RequestMapping("/view/{id}")
	public String viewStudent(@PathVariable("id")Long id,Model model) {
		Student student=studentService.getStudentById(id);
		model.addAttribute("student",student);
		return "view-student";
	}
	

}
