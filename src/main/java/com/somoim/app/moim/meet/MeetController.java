package com.somoim.app.moim.meet;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.somoim.app.moim.MoimDTO;

@Controller
@RequestMapping("/moim/main/*")
public class MeetController {
	
	@Autowired
	private MeetService meetService;
	
	//정모 list
	@GetMapping("together")
	public void together(MoimDTO moimDTO, MeetDTO meetDTO, Model model) throws Exception {
		
		List<MeetDTO> ar = meetService.getList(meetDTO);
		model.addAttribute("moimDTO", moimDTO);
		model.addAttribute("list", ar);
	}
	
	//add
	@GetMapping("add")
	public void mainAdd(MoimDTO moimDTO, Model model) throws Exception {
		model.addAttribute("dto",moimDTO);
	}
	@PostMapping("add")
	public String mainAdd(MeetDTO meetDTO, MultipartFile file) throws Exception {

		int result = meetService.add(meetDTO, file);
		
		return "redirect:./together";
		
	}
	
	//delete
	@PostMapping("delete")
	public String delete(MeetDTO meetDTO, Model model) throws Exception{
		
		int result = meetService.delete(meetDTO);
		
		//다시조회
		List<MeetDTO> ar = meetService.getList(meetDTO);
		
		model.addAttribute("list", ar);
		
		return "main/ajaxList";
		
	}
	
	
}
