package com.msp.givn.controller.admin.course;

import com.msp.givn.entity.Course;
import com.msp.givn.entity.CourseType;
import com.msp.givn.service.classroom.ClassRoomService;
import com.msp.givn.service.course.CourseService;
import com.msp.givn.service.course.CourseTypeService;
import com.msp.givn.service.user.UserDetailService;
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
public class CourseEditController {

    @Autowired
    private CourseService courseService;

    @Autowired
    private CourseTypeService typeService;

    @Autowired
    private UserDetailService userDetailService;

    @GetMapping(value = "/edit")
    public ModelAndView showAddCourseForm(@RequestParam(value = "id", required = false) Integer id
            , RedirectAttributes redirectAttributes) {
        ModelAndView modelAndView = new ModelAndView("admin/course/edit-course");

        if (id != null) {
            Course course = courseService.findById(id);
            if (course != null) {
                modelAndView.addObject("course", course);

                List<CourseType> typeList = typeService.findAll();
                String author = userDetailService.findNameById(course.getAuthorId());

                modelAndView.addObject("typeList", typeList);
                modelAndView.addObject("author", author);
                return modelAndView;
            }
        }

        modelAndView.setViewName("redirect:/admin/course");
        redirectAttributes.addFlashAttribute("message", "Khóa học không tồn tại");
        return modelAndView;
    }

    @PostMapping(value = "/edit")
    public ModelAndView processEditCourse(@ModelAttribute("course") Course course
            , @RequestParam(value = "enabled", required = false) String checkBox
            , BindingResult result
            , RedirectAttributes redirectAttribute) {
        ModelAndView modelAndView = new ModelAndView("redirect:/admin/course");

        if (!result.hasErrors()) {
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
            redirectAttribute.addFlashAttribute("message", "Cập nhật khóa học thành công");
            return modelAndView;
        }

        redirectAttribute.addFlashAttribute("message", "Cập nhật khóa học thất bại");
        return modelAndView;
    }

    @GetMapping(value = "/delete")
    public ModelAndView deleteCourse(@RequestParam(value = "id") Integer id
            , RedirectAttributes redirectAttribute) {
        ModelAndView modelAndView = new ModelAndView("redirect:/admin/course");

        if (id != null) {
            Course course = courseService.findById(id);
            if (course != null) {
//                if (id == 1) {
//                    redirectAttribute.addFlashAttribute("message", "Không thể xóa thể loại mặc định này");
//                    return modelAndView;
//                }
//                roomService.updateCourseForClass(id);
                courseService.delete(id);
                redirectAttribute.addFlashAttribute("message", "Xóa khóa học thành công");
                return modelAndView;
            }
        }

        redirectAttribute.addFlashAttribute("message", "Khóa học không tồn tại");
        return modelAndView;
    }
}
