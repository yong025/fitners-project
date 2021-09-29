package org.dodream.web.fitners.admin.mapper;

import org.dodream.web.fitners.admin.domain.Member;
import org.dodream.web.fitners.admin.dto.MemberDTO;

import java.util.List;

public interface MemberMapper {

    List<Member> getList();

    Member select(String mid);

    boolean remove(Member member);

    boolean update(Member member);

}
