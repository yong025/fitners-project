package org.dodream.web.fitners.admin.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.admin.domain.Member;
import org.dodream.web.fitners.admin.dto.MemberDTO;
import org.dodream.web.fitners.admin.mapper.MemberMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j2
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService{

    private final MemberMapper memberMapper;


    @Override
    public List<MemberDTO> getList() {
        return memberMapper.getList().stream().map(member -> member.getDTO()).collect(Collectors.toList());
    }

    @Override
    public MemberDTO read(String mid) {
        Member member = memberMapper.select(mid);

        if(member != null){
            return member.getDTO();
        }
        return null;
    }

    @Override
    public boolean remove(MemberDTO memberDTO) {
        return memberMapper.remove(memberDTO.getDomain()) ;
    }

    @Override
    public boolean update(MemberDTO memberDTO) {
        return memberMapper.update(memberDTO.getDomain());
    }
}
