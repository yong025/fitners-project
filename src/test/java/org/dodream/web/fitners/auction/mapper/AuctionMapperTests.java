package org.dodream.web.fitners.auction.mapper;

import lombok.extern.log4j.Log4j2;
import org.apache.ibatis.annotations.Param;
import org.dodream.web.fitners.auction.config.AuctionRootConfig;
import org.dodream.web.fitners.auction.domain.Bidding;
import org.dodream.web.fitners.common.config.RootConfig;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;
import java.util.stream.IntStream;


@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {AuctionRootConfig.class, RootConfig.class})
public class AuctionMapperTests {

    @Autowired(required = false)
    AuctionMapper auctionMapper;

    @Test
    public void selectAuctionTest() {
        log.warn(auctionMapper.selectAuction(1L));
    }

    @Test
    public void selectMemberPhysicalTest() {
        log.warn(auctionMapper.selectMemberPhysical("yong025"));
    }

    @Test
    public void SelectBidding(){
      /*  List<Bidding> biddingList = (auctionMapper.selectBidding(1L));
        log.warn(biddingList);
        log.warn(biddingList.getClass());

        Object[] biddings = biddingList.toArray();


        log.warn(biddings.getClass());*/
        Long ano = 1L;
        String tid = "aljatt";

        Bidding[] biddings = auctionMapper.selectBidding2(ano);
        log.warn(biddings);
        log.warn(biddings.getClass());


        for (int i = 0; biddings.length < i; i++) {
            log.warn(biddings[i].toString());
        }

    }


}
