package Controller;

import Dao.MemberDao;
import Dto.MemberDto;
import Service.MemberService;
import config.ApplicationConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Date;


@Controller
public class MemberController {
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

    ApplicationContext ac=new AnnotationConfigApplicationContext(ApplicationConfig.class);

    MemberDao memberDao=ac.getBean(MemberDao.class);

    MemberDto memberDto=new MemberDto();

    memberDto.setMemberName(memberName);
    memberDto.setMemberid(memberid);
    memberDto.setMemberPassword(memberPassword);
    memberDto.setPhoneNumber(PhoneNumber);
    memberDto.setMemberEmail(memberEmail);
    memberDto.setMemberGender(memberGender);
    memberDto.setRegDate(new Date());

    int id=memberDao.insert(memberDto);

    return "login";
  }
}
