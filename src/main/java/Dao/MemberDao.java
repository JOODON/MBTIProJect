package Dao;
import org.mybatis.spring.SqlSessionTemplate;
import Dto.MemberDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;


import javax.sql.DataSource;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import static Dao.MemberDaoSqls.*;
@Repository
public class MemberDao {
    private NamedParameterJdbcTemplate jdbc;

    private SimpleJdbcInsert insertAction;
    private RowMapper<MemberDto> rowMapper = BeanPropertyRowMapper.newInstance(MemberDto.class);

    private SqlSessionTemplate mybatis;

    public MemberDao(DataSource dataSource){
        this.jdbc=new NamedParameterJdbcTemplate(dataSource);
        this.insertAction=new SimpleJdbcInsert(dataSource)
                .withTableName("MBTIMEMBER")
                .usingGeneratedKeyColumns("id");
    }

    public List<MemberDto> selectAll(){
        return jdbc.query(SELECT_ALL,Collections.<String, Object>emptyMap(),rowMapper);
    }

    public int insert(MemberDto dto){
        SqlParameterSource params=new BeanPropertySqlParameterSource(dto);
        return insertAction.executeAndReturnKey(params).intValue();
    }
    public MemberDto loginUser(MemberDto memberDto){
        System.out.println("My Natis로 로그인기능 처리");
        return mybatis.selectOne("MemberDao.loginUser",memberDto);
    }
    public MemberDto login(MemberDto dto) throws Exception {
        return mybatis.selectOne("MemberMapper.login",dto);
    }
}
