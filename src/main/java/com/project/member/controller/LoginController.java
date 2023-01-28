package com.project.member.controller;

import javax.servlet.http.HttpSession;

import com.project.client.oauth.OAuthClient;
import com.project.client.oauth.service.OAuthClientService;
import com.project.member.service.MemberService;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.imgscalr.Scalr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequiredArgsConstructor
public class LoginController {

    @Autowired
    /* NaverLoginBO */
    private final MemberService memberService;

    private final OAuthClientService oAuthClientService;


    /**
     * 로그인 페이지 이동
     */
    @RequestMapping(value = "/loginPage", method = { RequestMethod.GET, RequestMethod.POST })
    public String login() {
        return "member/loginPage";
    }

    @RequestMapping(value = "/login/{provider}")
    public String redirectLoginPage(HttpSession session, @PathVariable String provider) {
        // LoginController ->(의존) OAuthClient(인터페이스) : 컴파일시점의 의존성
        // LoginController ->(의존) NAVER_OAuthClient(구체적클래스) : 런타임시점의 의존성
        // Upcasting , 다형성
        OAuthClient oAuthClient = oAuthClientService.getClient(provider);
        String redirectUrl = oAuthClient.generateRedirectUrl(session);
        System.out.println("url : " + redirectUrl);
        // redirectUrl 로 리다이렉션
        return "redirect:" + redirectUrl;
    }

    @RequestMapping(value="/{provider}/callback")
    public ModelAndView oauthLoginCallback(
            @RequestParam("code") String code,
            @RequestParam(value = "state", defaultValue = "") String state,
            @PathVariable String provider,
            HttpSession session
    ) {
        ModelAndView mav = new ModelAndView();
        Member loginUser = memberService.login(session, provider, code, state);
        session.setAttribute("loginUser", loginUser);
        mav.setViewName("redirect:/mainPage");
        return mav;
    }

    @RequestMapping(value="/logout")
    public ModelAndView logout(HttpSession session) {
        ModelAndView mav = new ModelAndView();
        session.removeAttribute("loginUser");
        mav.setViewName("redirect:/");
        return mav;
    }

    @RequestMapping(value = "/myPage")
    public String myPage(){return "member/myPage";}

    @RequestMapping(value = "/memberModify")
    public String memberModify(){return "member/memberModify";}

    // 회원정보를 수정하면 회원등급 변경
    @RequestMapping(value = "/updateMember")
    public String updateMember(@RequestParam("code") String code,
                               @RequestParam(value = "state", defaultValue = "") String state,
                               @PathVariable String provider,
                               HttpSession session,
                               Model model){

        int result = memberService.updateMember(session, provider, code, state);

        System.out.println(result);

        if(result > 0 ){
            int updateMember = memberService.updateMember(session, provider, code, state);
            session.setAttribute("loginUser", updateMember);
            session.setAttribute("alertMsg", "회원정보 수정 완료");
            return "member/myPage";
        }
        else{
            model.addAttribute("errorMsg","회원정보 수정 실패");
            return "common/errorPage";
        }
    }

    @RequestMapping(value = "/phoneCheck", method = RequestMethod.GET)
    @ResponseBody
    public String sendSMS(@RequestParam("phone") String userPhoneNumber) { // 휴대폰 문자보내기
        int randomNumber = (int)((Math.random()* (9999 - 1000 + 1)) + 1000);//난수 생성

        memberService.certifiedPhoneNumber(userPhoneNumber,randomNumber);

        return Integer.toString(randomNumber);
    }

}
