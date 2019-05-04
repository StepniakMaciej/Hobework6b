package servlet;

import freemarker.TemplateProvider;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigInteger;
import java.util.*;

@WebServlet("/fibonnaci")

public class FibonnaciApplication extends HttpServlet {
    @Inject
    TemplateProvider templateProvider;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {


        Template template = templateProvider.getTemplate(getServletContext(), "setNumber.ftlh");

        try {
            template.process(null, resp.getWriter());
        } catch (TemplateException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        int number = Integer.parseInt(req.getParameter("number"));

        Template template = templateProvider.getTemplate(getServletContext(), "printString.ftlh");
        Map<String, Object> model = new HashMap<>();

        model.put("number", number);
        model.put("value", countFibonacci(number));
        model.put("string", fibonnaciString(number));


        try {
            template.process(model, resp.getWriter());
        } catch (TemplateException e) {
            e.printStackTrace();
        }

    }

    private static BigInteger countFibonacci(int number) {
        if (number == 1 || number == 2) {
            return BigInteger.ONE;
        } else {
            return countFibonacci(number - 1).add(countFibonacci(number - 2));
        }
    }

    private List<BigInteger> fibonnaciString(int number) {

        List<BigInteger> fullString = new ArrayList<>();
        for (int i = 1; i <= number; i++) {

            fullString.add(countFibonacci(i));
        }

        return fullString;
    }
}


