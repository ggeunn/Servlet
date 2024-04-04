package com.ohgiraffers.controller;

import com.ohgiraffers.model.GugudanCalculator;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/gugudan")
public class GugudanServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 요청(request)에 대한 처리
        int first = Integer.parseInt(req.getParameter("first"));
        int second = Integer.parseInt(req.getParameter("second"));

        System.out.println("first = " + first);
        System.out.println("second = " + second);

        // 비즈니스 로직
        // menuName, amount 를 넘겨서 우리가 선택 메뉴와 갯수에 대한 총 가격을 반환
        int value = new GugudanCalculator().clacGugudan(first,second);

        req.setAttribute("first",first);
        req.setAttribute("second",second);
        req.setAttribute("value",value);

        // forward
        RequestDispatcher rd = req.getRequestDispatcher("/jsp/calculator.jsp");
        rd.forward(req,resp);


    }
}
