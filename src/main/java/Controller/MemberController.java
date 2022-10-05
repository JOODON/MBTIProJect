package Controller;


import Dao.MemberDao;
import Dto.MemberDto;
import Service.MemberService;
import config.ApplicationConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
<<<<<<< Updated upstream
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Locale;
=======
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
>>>>>>> Stashed changes

@Controller
public class MemberController {
    @Autowired
    MemberService memberService;
    @GetMapping(path = "/Join")
    public String Joinfrom(){
        return "SingUp";
    }
    @PostMapping(path = "/Join")
    public String Join(@RequestParam(name ="memberName",required = true)String memberName,
                       @RequestParam(name ="memberid",required = true)String memberid,
                       @RequestParam(name ="memberPassword",required = true)String memberPassword,
                       @RequestParam(name = "PhoneNumber",required = true)String PhoneNumber,
                       @RequestParam(name = "memberEmail",required = true)String memberEmail,
                       @RequestParam(name = "memberGender",required = true)String memberGender, ModelMap modelMap){

        ApplicationContext ac = new AnnotationConfigApplicationContext(ApplicationConfig.class);

        MemberService memberService = ac.getBean(MemberService.class);

        MemberDto memberDto = new MemberDto();

        memberDto.setMemberid(memberid);
        memberDto.setMemberName(memberName);
        memberDto.setMemberPassword(memberPassword);
        memberDto.setPhoneNumber(PhoneNumber);
        memberDto.setMemberEmail(memberEmail);
        memberDto.setMemberGender(memberGender);


        MemberDto result=memberService.addUser(memberDto);

        return "login";
    }
    @GetMapping(path = "/login")
    public String loginform(){
        return "login";
    }
    @PostMapping(path = "/login")
<<<<<<< Updated upstream
    public String login(MemberDto memberDto,Model model){
        MemberDto loginUser=memberService.loginUser(memberDto);

        if(loginUser==null){
            model.addAttribute("check", 1);
            model.addAttribute("message", "아이디와 비밀번호를 확인해주세요.");
            return "login";
        }
        else {
            model.addAttribute("loginUser",loginUser);
            return "main";
        }
=======
    public String  loginAction(
            @RequestParam(name ="memberid",required = true)String memberid,
            @RequestParam(name ="memberPassword",required = true)String memberPassword, ModelMap modelMap
                        ,HttpServletRequest request, HttpServletResponse response) throws IOException {


    
>>>>>>> Stashed changes
    }
}
