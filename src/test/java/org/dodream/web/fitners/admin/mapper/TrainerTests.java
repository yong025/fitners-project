package org.dodream.web.fitners.admin.mapper;

import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.common.config.RootConfig;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {RootConfig.class})
public class TrainerTests {

    @Autowired(required = false)
    TrainerMapper trainerMapper;

    @Test
    public void testList() {

        log.warn("=======================================================");
        trainerMapper.getList().forEach(trainer -> log.warn(trainer));
        log.warn("=======================================================");
    }
}
