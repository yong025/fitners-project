package org.dodream.web.fitners.admin.dto;

import lombok.*;
import org.dodream.web.fitners.admin.domain.Member;
import org.dodream.web.fitners.fboard.domain.Fboard;

import java.sql.Timestamp;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MemberDTO {

    private String mid;
    private String mpassword;
    private String mname;
    private String memail;
    private Timestamp regDate;
    private Timestamp modDate;
    private int disabled;

    //dto를 vo로 변환
    public Member getDomain() {
        Member member = Member.builder()
                .mid(mid)
                .mpassword(mpassword)
                .mname(mname)
                .memail(memail)
                .regDate(regDate)
                .modDate(modDate)
                .disabled(disabled)
                .build();

        return member;
    }

}
