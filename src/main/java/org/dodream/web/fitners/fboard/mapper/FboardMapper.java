package org.dodream.web.fitners.fboard.mapper;

import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.fboard.domain.Fboard;
import org.dodream.web.fitners.fboard.domain.FboardAttach;

import java.util.List;

public interface FboardMapper {

    Long insertFboard(Fboard fboard);

    List<Fboard> getFboardList(PageRequestDTO pageRequestDTO);

    int getCount(PageRequestDTO pageRequestDTO);

    Fboard select(Long bno);

    int update(Fboard fboard);

    int delete(Long bno);

    void insertAttach(FboardAttach fboardAttach);

    void deleteAttach(Long bno);

    void updateViewCount(Long bno);

}
