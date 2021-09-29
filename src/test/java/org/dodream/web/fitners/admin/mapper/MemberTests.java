package org.dodream.web.fitners.admin.mapper;

import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.admin.domain.Member;
import org.dodream.web.fitners.common.config.RootConfig;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {RootConfig.class})
public class MemberTests {

    @Autowired(required = false)
    MemberMapper memberMapper;

    @Test
    public void testList() {

        log.warn("=======================================================");
        memberMapper.getList().forEach(member -> log.warn(member));
        log.warn("=======================================================");
    }

    @Test
    public void testremove(){
        Member member = Member.builder()
                .mid("yong025")
                .build();
        log.warn(memberMapper.remove(member));
    }

    @Test
    public void testupdate(){
        Member member = Member.builder()
                .mid("yong025")
                .mname("용용용")
                .memail("bbb@bbb.bbb")
                .build();
        log.warn(memberMapper.update(member));
    }
}
