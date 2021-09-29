package org.dodream.web.fitners.admin.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.admin.dto.MemberDTO;
import org.dodream.web.fitners.admin.dto.TrainerDTO;
import org.dodream.web.fitners.admin.service.MemberService;
import org.dodream.web.fitners.admin.service.TrainerService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Log4j2
@RequestMapping("/admin/trainer/*")
@RequiredArgsConstructor
public class TrainerController {

    private final TrainerService trainerService;


    @GetMapping("/list")
    public void getList(Model model) {

        log.info("admin     get member List............................");
        model.addAttribute("dtoList",trainerService.getList());
    }

    @GetMapping("/read")
    public void read(String tid, Model model){
        log.info("trainer  read" +tid);
        model.addAttribute("trainerDTO",trainerService.read(tid));

    }

    @PostMapping("/remove")
    public String remove(TrainerDTO trainerDTO, RedirectAttributes redirectAttributes){

        if(trainerService.remove(trainerDTO)){
            log.info("remove success");
            redirectAttributes.addFlashAttribute("result","RemoveSuccess");
        }
        return "redirect:/admin/trainer/list";
    }

    @PostMapping("/modify")
    public String modify(TrainerDTO trainerDTO, RedirectAttributes redirectAttributes){
        log.warn("================trainer modify post======================");
        trainerService.update(trainerDTO);
        log.warn("============================================================");


        if (trainerService.update(trainerDTO)) {
            log.info("success");
            redirectAttributes.addFlashAttribute("result", "modified");
        }

        redirectAttributes.addAttribute("tid", trainerDTO.getTid()); //flash가 아닌 계속 bno를 가지고 있게함
        return "redirect:/admin/trainer/read";
    }

}
