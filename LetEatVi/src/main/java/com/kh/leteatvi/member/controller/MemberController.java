package com.kh.leteatvi.member.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.leteatvi.member.model.service.MemberService;
import com.kh.leteatvi.exception.MemberException;
import com.kh.leteatvi.member.model.vo.Member;

@SessionAttributes({"member"})
@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	

	/**
	 * 
	 * Auth : DABABY
	 * Date : 2021-05-29
	 * 회원 가입 '화면 이동' 처리
	 * 
	 * */
	@RequestMapping("/member/memberEnroll.do")
	public String memberEnroll() {
		
		return "member/memberEnroll";

	}
	
	
	
	/**
	 * 
	 * Auth : DABABY
	 * Date : 2021-05-29
	 * 회원 가입
	 * 
	 * */
	
	@RequestMapping("/member/memberEnrollEnd.do")
	public String memberEnrollEnd(SessionStatus status, Member m, Model model) {
		
		System.out.println("들어온 정보 : " + m);
		
		/* ------ 비밀번호 암호화 ------ */
		
		String pass1 = m.getPassword();  // 원래 비밀번호
		String pass2 = bcryptPasswordEncoder.encode(pass1); // 암호화 처리
		
		m.setPassword(pass2);
		
		/* ------    암호화 끝    ------ */
		
		try {
			
			// 1. 서비스를 통해 비즈니스 로직 수행하기
			int result = memberService.insertMember(m);
			
			// 2. 처리 결과에 따라 view 나누기
			String loc = "/";  // 이동할 주소, '/' --> welcome-file
			String msg = "";
			
			if( result > 0 ) msg = "회원가입 성공!";
			else msg = "회원가입 실패";
			
			status.setComplete();
			
			model.addAttribute("loc", loc);
			model.addAttribute("msg", msg);
			
		} catch( Exception e) {
			
			System.out.println("회원 가입 시 에러 발생!");
			

			throw new MemberException(e.getMessage());
			
		}
		
		return "common/msg";
	}
	
	
	/**
	 * 
	 * Auth : DABABY
	 * Date : 2021-05-29
	 * 로그인 '화면 이동' 처리
	 * 
	 * */
	@RequestMapping("/member/memberLogin.do")
	public String memberLogin() {
		
		return "member/memberLogin";

	}
	

	/**
	 * 
	 * Auth : DABABY
	 * Date : 2021-05-29
	 * 회원 로그인
	 * 
	 * */
	@RequestMapping("/member/memberLoginEnd.do")
	public String memberLoginEnd(
			@RequestParam String userId,
			@RequestParam String password,
			Model model				
		) {
	// HttpSession session
	
	System.out.println("로그인 기능 접근!");
	System.out.println(password);
	
	Member result = memberService.selectOneMember(userId);

	System.out.println("회원 조회 결과 : " + result);

	
	String loc = "/";
	String msg = "";

	System.out.println(bcryptPasswordEncoder.encode(password));
	
	if(result != null ) {
		if ( bcryptPasswordEncoder.matches(password, result.getPassword())) {
			msg = "로그인 성공!";
			model.addAttribute("member", result);  
		} else {
			msg = "비밀번호가 일치하지 않습니다!";
			
		}
	} else {
		msg = "존재하지 않는 아이디입니다.";
	}
	
	model.addAttribute("loc", loc);
	model.addAttribute("msg", msg);
	
	return "common/msg";
}

	/**
	 * 
	 * Auth : DABABY
	 * Date : 2021-05-29
	 * 회원 로그아웃
	 * 
	 * */
	@RequestMapping("/member/memberLogout.do")
	public String memberLogout(SessionStatus status) {
		

		if( ! status.isComplete() ) {
			status.setComplete();
		}
		
		return "redirect:/";
	}
	
	
	@RequestMapping("/member/memberDelete.do")
	public String memberDelete(SessionStatus status, Model model, Member member) {
		
		int result = memberService.deleteMember(member.getUserId());
		
		String loc="/";
		String msg="";
		
		if( result > 0 ) {
			status.setComplete();
			msg="회원 탈퇴 완료!";
		} else {
			msg = "회원 탈퇴 실패!";
		}
		
		model.addAttribute("loc", loc);
		model.addAttribute("msg", msg);
		
		return "common/msg";
		
	}
	
	@RequestMapping("/member/checkIdDuplicate.do")
	@ResponseBody
	public Map<String, Object> checkIdDuplicate(@RequestParam String userId){
		
		Map<String, Object> map = new HashMap<String ,Object>();
		
		int check = memberService.checkIdDuplicate(userId);
		
		boolean data = (check == 0 ? true : false);
		
		map.put("data", data);	
		
		return map;
	}

}


