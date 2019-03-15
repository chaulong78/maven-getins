package com.msp.givn.controller.admin.course;

import com.msp.givn.dto.CourseDTO;
import com.msp.givn.entity.Course;
import com.msp.givn.entity.CourseType;
import com.msp.givn.service.course.CourseDTOService;
import com.msp.givn.service.course.CourseService;
import com.msp.givn.service.course.CourseTypeService;
import com.msp.givn.service.user.UserService;
import com.msp.givn.utility.StringFunction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/admin/course")
public class CourseController {

    @Autowired
    private CourseService courseService;

    @Autowired
    private CourseTypeService typeService;

    @Autowired
    private CourseDTOService courseDTOService;

    @Autowired
    private UserService userService;

    @GetMapping(value = "")
    public ModelAndView showCourseTable() {
        ModelAndView modelAndView = new ModelAndView("admin/course/table-course");
        List<CourseDTO> courseList = courseDTOService.findAll();

        modelAndView.addObject("courseList", courseList);
        return modelAndView;
    }

    @GetMapping(value = "/add")
    public ModelAndView showAddCourseForm() {
        ModelAndView modelAndView = new ModelAndView("admin/course/add-course");
        Course course = new Course();
        List<CourseType> typeList = typeService.findAll();

        modelAndView.addObject("course", course);
        modelAndView.addObject("typeList", typeList);
        return modelAndView;
    }

    @PostMapping(value = "/add")
    public ModelAndView processCreateCourse(
            @ModelAttribute("course") Course course
            , @RequestParam(value = "enabled", required = false) String checkBox
            , BindingResult result
            , RedirectAttributes redirectAttributes) {
        ModelAndView modelAndView = new ModelAndView("redirect:/admin/course");

        if (!result.hasErrors()) {
            course.setAuthorId(userService.getCustomUserDetail().getUserId());
            if (checkBox != null) {
                course.setEnabled(true);
            } else {
                course.setEnabled(false);
            }

            if (course.getTypeId() == 0) {
                course.setTypeId(1);
            }

            course.setUrlName("/khoa-hoc/" + StringFunction.convertNameToUrl(course.getName()));
            courseService.save(course);
            redirectAttributes.addFlashAttribute("message", "Tạo khóa học mới thành công");
            return modelAndView;
        }

        redirectAttributes.addFlashAttribute("message", "Tạo khóa học mới thất bại");
        return modelAndView;
    }

}
