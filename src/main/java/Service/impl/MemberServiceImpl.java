package Service.impl;

import Dao.MemberDao;
import Dto.MemberDto;
import Service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;

public class MemberServiceImpl implements MemberService {
    @Autowired
    MemberDao memberDao;

    @Override
    public void memberJoin(MemberDto member) throws Exception {
        memberDao.insert(member);
    }
}
