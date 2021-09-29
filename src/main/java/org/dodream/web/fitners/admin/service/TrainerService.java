package org.dodream.web.fitners.admin.service;

import org.dodream.web.fitners.admin.dto.MemberDTO;
import org.dodream.web.fitners.admin.dto.TrainerDTO;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface TrainerService {

    List<TrainerDTO> getList();

    TrainerDTO read(String tid);

    boolean remove(TrainerDTO trainerDTO);

    boolean update(TrainerDTO trainerDTO);

}
