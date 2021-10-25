package org.dodream.web.fitners.auction.mapper;

import org.dodream.web.fitners.auction.domain.Auction;
import org.dodream.web.fitners.auction.domain.Program;
import org.dodream.web.fitners.auction.dto.AuctionListDTO;
import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.security.domain.MemberPhysical;


import java.util.List;

public interface AuctionMapper {

    Auction selectAuction(Long ano);

    MemberPhysical selectMemberPhysical(String mid);

    void insertMemberPhysical(MemberPhysical memberPhysical);

    //auction작성
    Long insertAuction(Auction auction);

    void insertProgram(Program program);

    List<Program> selectProgram();
    //auction작성 끝


    //실제 list에 program
    void insertAuctionCategory(Program program);

    List<Program> getProgramList();

    int getAuctionListCount(PageRequestDTO auctionDTO);

    List<AuctionListDTO> getAuctionLists(PageRequestDTO pageRequestDTO);
}
