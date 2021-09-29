package org.dodream.web.fitners.admin.service;

import org.dodream.web.fitners.admin.domain.Member;
import org.dodream.web.fitners.admin.dto.MemberDTO;
import org.dodream.web.fitners.fboard.domain.Fboard;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface MemberService {

    List<MemberDTO> getList();

    MemberDTO read(String mid);

    boolean remove(MemberDTO memberDTO);

    boolean update(MemberDTO memberDTO);

}
