package org.dodream.web.fitners.admin.mapper;

import org.dodream.web.fitners.admin.domain.Member;
import org.dodream.web.fitners.admin.domain.Trainer;

import java.util.List;

public interface TrainerMapper {

    List<Trainer> getList();

    Trainer select(String tid);

    boolean remove(Trainer trainer);

    boolean update(Trainer trainer);

}
