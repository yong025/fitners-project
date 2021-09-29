package org.dodream.web.fitners.admin.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.admin.dto.MemberDTO;
import org.dodream.web.fitners.admin.service.MemberService;
import org.dodream.web.fitners.fboard.dto.FboardDTO;
import org.dodream.web.fitners.fboard.service.FboardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Log4j2
@RequestMapping("/admin/member/*")
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;


    @GetMapping("/list")
    public void getList(Model model) {

        log.info("admin     get member List............................");
        model.addAttribute("dtoList",memberService.getList());
    }

    @GetMapping("/read")
    public void read(String mid, Model model){
        log.info("c        read" +mid);
        model.addAttribute("memberDTO",memberService.read(mid));

    }

    @PostMapping("/remove")
    public String remove(MemberDTO memberDTO, RedirectAttributes redirectAttributes){

        log.info("c                     remove: " + memberDTO);
        if(memberService.remove(memberDTO)){
            log.info("remove success");
            redirectAttributes.addFlashAttribute("result","RemoveSuccess");
        }
        return "redirect:/admin/member/list";
    }

    @PostMapping("/modify")
    public String modify(MemberDTO memberDTO, RedirectAttributes redirectAttributes){
        log.warn("================fboard modify post======================");
        memberService.update(memberDTO);
        log.warn("============================================================");


        if (memberService.update(memberDTO)) {
            log.info("success");
            redirectAttributes.addFlashAttribute("result", "modified");
        }

        redirectAttributes.addAttribute("mid", memberDTO.getMid()); //flash가 아닌 계속 bno를 가지고 있게함
        return "redirect:/admin/member/read";
    }
}


