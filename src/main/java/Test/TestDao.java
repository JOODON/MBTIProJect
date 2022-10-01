package Test;

import Dao.MemberDao;
import Dto.MemberDto;
import Service.MemberService;
import config.ApplicationConfig;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.Date;

public class TestDao {
    public static void main(String[] args) {
        ApplicationContext ac = new AnnotationConfigApplicationContext(ApplicationConfig.class);

        MemberService memberService =ac.getBean(MemberService.class);

        MemberDto memberDto = new MemberDto();

        memberDto.setMemberid("dongho");
        memberDto.setMemberName("주동호");
        memberDto.setMemberPassword("test");
        memberDto.setPhoneNumber("010-7761-8482");
        memberDto.setMemberEmail("launcher37@naver.com");
        memberDto.setMemberGender("남");

        MemberDto result=memberService.addUser(memberDto);
    }
}
