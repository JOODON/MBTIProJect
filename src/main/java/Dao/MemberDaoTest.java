package Dao;

import Dto.MemberDto;
import config.ApplicationConfig;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.List;

public class MemberDaoTest {
    public static void main(String[] args) {
        ApplicationContext ac=new AnnotationConfigApplicationContext(ApplicationConfig.class);

        MemberDao memberDao=ac.getBean(MemberDao.class);

        List<MemberDto> list = memberDao.selectAll();

        System.out.println(list);

    }
}
