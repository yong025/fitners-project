package org.dodream.web.fitners.admin.domain;


import lombok.*;
import org.dodream.web.fitners.admin.dto.MemberDTO;


import java.sql.Timestamp;

@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Member {

    private String mid;
    private String mpassword;
    private String mname;
    private String memail;
    private Timestamp regDate;
    private Timestamp modDate;
    private int disabled;

    public MemberDTO getDTO() {
        MemberDTO memberDTO = MemberDTO.builder()
                .mid(mid)
                .mpassword(mpassword)
                .mname(mname)
                .memail(memail)
                .regDate(regDate)
                .modDate(modDate)
                .disabled(disabled)

                .build();

        return memberDTO;
    }
}

