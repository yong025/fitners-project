package org.dodream.web.fitners.fboard.mapper;

import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.common.config.RootConfig;
import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.fboard.config.FboardRootConfig;
import org.dodream.web.fitners.fboard.domain.Fboard;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.stream.IntStream;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {FboardRootConfig.class, RootConfig.class}) //경로 지정 필요
public class BoardMapperTests {

    @Autowired(required = false) //test코드에서는 autowired 필요
    FboardMapper fboardMapper;

    @Test
    public void testDummies() {

        IntStream.rangeClosed(1, 10).forEach(i -> {
            Fboard fboard = Fboard.builder()
                    .title("TestTitle" + i)
                    .content("Content" + i)
                    .writer("user" + (i % 10))
                    .build();

            fboardMapper.insertFboard(fboard);
        });
    }

    @Test
    public void getListTest() {
        PageRequestDTO pageRequestDTO = PageRequestDTO.builder()
                .page(2)
                .build();
        log.warn(pageRequestDTO);
        fboardMapper.getFboardList(pageRequestDTO).forEach(fboard -> log.warn(fboard));
    }

    @Test
    public void selectTest() {
        fboardMapper.select(10L);
    }

    @Test
    public void updateTest() {
        log.warn("test update...................");
        Fboard fboard = Fboard.builder()
                .bno(110L)
                .title("수정타이틀")
                .content("수정내용")
                .build();
        fboardMapper.update(fboard);
    }

    @Test
    public void removeTest(){
        log.warn("remove test..........................");
        fboardMapper.remove(110L);
        log.warn("remove success!!!!!!!!!!!!!!!!!!!!!!!!!1");
    }
}
