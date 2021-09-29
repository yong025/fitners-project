package org.dodream.web.fitners.admin.domain;


import lombok.*;
import org.dodream.web.fitners.admin.dto.TrainerDTO;
import org.dodream.web.fitners.fboard.dto.FboardDTO;

import java.sql.Timestamp;

@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Trainer {

    private String tid;
    private String tpw;
    private String temail;
    private String tname;
    private int auth;
    private Timestamp regDate;
    private Timestamp modDate;
    private int bidhistory;
    private int disabled;


    public TrainerDTO getDTO() {
        TrainerDTO trainerDTO = TrainerDTO.builder()
                .tid(tid)
                .tpw(tpw)
                .temail(temail)
                .tname(tname)
                .auth(auth)
                .regDate(regDate)
                .modDate(modDate)
                .bidhistory(bidhistory)
                .disabled(disabled)
                .build();

        return trainerDTO;
    }


}
