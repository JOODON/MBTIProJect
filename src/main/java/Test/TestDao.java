package Test;

import Dao.MemberDao;
import Dto.MemberDto;
import Service.MemberService;
import config.ApplicationConfig;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.sql.ResultSet;
import java.util.Date;
import java.util.List;

public class TestDao {
    public static void main(String[] args) {
        ApplicationContext ac = new AnnotationConfigApplicationContext(ApplicationConfig.class);

        MemberService memberService =ac.getBean(MemberService.class);

        MemberDao memberDao=ac.getBean(MemberDao.class);

        List<MemberDto> list = memberDao.selectAll();

        for(MemberDto memberDto: list) {
            String id = memberDto.getMemberid();
            String pw = memberDto.getMemberPassword();
            System.out.print(id + "\t");
            System.out.println(pw);
            String inid="admin";
            String inpw="kkjjss103@";

            if (id.equals(inid) && pw.equals(inpw)) {
                System.out.println("로그인 성공");
                break;
            }
            else if (id.equals(inid) && !pw.equals(inpw)){
                System.out.println("로그인 실패 사유 비밀번호 다름");
            }
            else if (!id.equals(inid) && pw.equals(inpw)){
                System.out.println("로그인 실패 사유 아이디 다름");
            }
            else {
                System.out.println("로그인에 실패하셨습니다");
            }
        }



    }
}
