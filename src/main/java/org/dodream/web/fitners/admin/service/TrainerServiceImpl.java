package org.dodream.web.fitners.admin.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.admin.domain.Member;
import org.dodream.web.fitners.admin.domain.Trainer;
import org.dodream.web.fitners.admin.dto.MemberDTO;
import org.dodream.web.fitners.admin.dto.TrainerDTO;
import org.dodream.web.fitners.admin.mapper.MemberMapper;
import org.dodream.web.fitners.admin.mapper.TrainerMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j2
@RequiredArgsConstructor
public class TrainerServiceImpl implements TrainerService{

    private final TrainerMapper trainerMapper;

    @Override
    public List<TrainerDTO> getList() {
        return trainerMapper.getList().stream().map(trainer -> trainer.getDTO()).collect(Collectors.toList());
    }

    @Override
    public TrainerDTO read(String tid) {
        Trainer trainer = trainerMapper.select(tid);

        if(trainer != null){
            return trainer.getDTO();
        }
        return null;
    }

    @Override
    public boolean remove(TrainerDTO trainerDTO) {
        return trainerMapper.remove(trainerDTO.getDomain()) ;
    }

    @Override
    public boolean update(TrainerDTO trainerDTO) {
        return trainerMapper.update(trainerDTO.getDomain());
    }
}
