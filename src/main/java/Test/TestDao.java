package Test;

import Dao.MemberDao;
import Dto.MemberDto;
import Service.MemberService;
import config.ApplicationConfig;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.Date;
import java.util.List;

public class TestDao {
    public static void main(String[] args) {
        ApplicationContext ac = new AnnotationConfigApplicationContext(ApplicationConfig.class);

        MemberService memberService =ac.getBean(MemberService.class);

        MemberDao memberDao=ac.getBean(MemberDao.class);


        List<MemberDto> list = memberDao.selectAll();


        for(MemberDto memberDto: list){
            String id=memberDto.getMemberid();
            String pw=memberDto.getMemberPassword();
            System.out.print(id+"\t");
            System.out.println(pw);
        }
    }
}
