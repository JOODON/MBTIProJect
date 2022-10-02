package Service.impl;

import Dao.MemberDao;
import Dto.MemberDto;
import Service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
public class MemberServiceImpl implements MemberService{
    @Autowired
    MemberDao memberDao;

    @Override
    public MemberDto addUser(MemberDto memberDto) {
        memberDto.setRegDate(new Date());
        int id=memberDao.insert(memberDto);
        memberDto.setId(id);

        return memberDto;
    }

    @Override
    public List<MemberDto> getMembers(String id) {
        List<MemberDto> list=memberDao.selectAll();
        return list;
    }
}
