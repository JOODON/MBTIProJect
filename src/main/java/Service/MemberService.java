package Service;

import Dto.MemberDto;

import java.util.List;

public interface MemberService {
    public MemberDto addUser(MemberDto memberDto);

    public MemberDto loginUser(MemberDto memberDto);

}
