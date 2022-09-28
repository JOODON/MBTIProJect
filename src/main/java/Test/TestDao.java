package Test;

import Dao.MemberDao;

import Dto.MemberDto;
import config.ApplicationConfig;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.Date;

public class TestDao {
    public static void main(String[] args) {
        ApplicationContext ac=new AnnotationConfigApplicationContext(ApplicationConfig.class);

        MemberDao memberDao=ac.getBean(MemberDao.class);

        MemberDto memberDto=new MemberDto();
        memberDto.setMemberName("주동호");
        memberDto.setMemberid("admin");
        memberDto.setMemberPassword("admin");
        memberDto.setPhoneNumber("010-7761-8482");
        memberDto.setMemberEmail("launcher37@naver.com");
        memberDto.setMemberGender("남");
        memberDto.setRegDate(new Date());

        int id=memberDao.insert(memberDto);

        System.out.println("id"+ id);

    }
}
