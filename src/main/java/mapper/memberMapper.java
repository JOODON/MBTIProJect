package mapper;

import Dto.MemberDto;

import java.util.List;

public interface memberMapper {
    public MemberDto login(MemberDto memberDto)throws Exception;

}
