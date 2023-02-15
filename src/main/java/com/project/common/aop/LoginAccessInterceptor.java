package com.project.common.aop;

import com.project.common.annotation.RequiredLogin;
import com.project.member.vo.Member;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginAccessInterceptor extends HandlerInterceptorAdapter {
    // 로그인 하지 않은 사용자가 로그인 해야하는 경로 접속했을 때
    @Override
    public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) throws ServletException, IOException {
        if (hasRequiredLoginAnnotation(handler)) {
            if (!existLoginUser(req.getSession())) {
                res.setContentType("text/html; charset=utf-8");
                PrintWriter out = res.getWriter();
                String pageUrl = req.getContextPath();
                String element =
                        "<script> alert('로그인을 해야합니다!'); " +
                                "location.href='"+pageUrl+"/loginPage'; </script>";
                out.println(element);
                out.flush();//브라우저 출력 비우기
                out.close();//아웃객체 닫기
                return false;
            }
        }
        return true;
    }

    private boolean hasRequiredLoginAnnotation(Object handler) {
        if (handler instanceof HandlerMethod) {
            return ((HandlerMethod) handler).hasMethodAnnotation(RequiredLogin.class)
                    || ((HandlerMethod) handler).getMethod().getDeclaringClass().isAnnotationPresent(RequiredLogin.class);
        }
        return false;
    }

    public boolean existLoginUser(HttpSession session) {
        Member member = (Member) session.getAttribute("loginUser");
        return member != null;
    }
}
