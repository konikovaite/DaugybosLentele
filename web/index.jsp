<%-- 
    Document   : index
    Created on : 2020-03-04, 22.14.36
    Author     : Simona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            text-align: center;
        }
    </style>
    <body>
        <h1 style="text-align: center">Multiplication table</h1>

        <table style="width: 100%">
            <tr style="background-color: lightgrey"> 
                <th>                    
                    *                       
                </th>             
                <%
                    String f = request.getParameter("from");   // is langelio from paima skaiciu, nuo kuriopradesime daugyba                
                    int from = 1;
                    try {
                        from = new Integer(f);  // priskiriam pasiimtu skaiciu
                    } catch (Exception ex) {
                        // ignore
                    }
                    String t = request.getParameter("to");  // is langelio to paima skaiciu                 
                    int to = 10;
                    try {
                        to = new Integer(t);
                    } catch (Exception ex) {
                        // ignore
                    }

                    if (from > to) {  // jei pirmiau iveda didesni skaiciu, tai sukeiciam juos vietom
                        int tarp;
                        tarp = from;
                        from = to;
                        to = tarp;
                    }

                    for (int i = from; i <= to; i++) {
                %>
                <th>
                    <%=i%>
                </th>
                <%
                    }
                %>
            </tr>
            <tr>
                <%
                    for (int i = from; i <= to; i++) {
                %>
                <td style="background-color: lightgrey">
                    <%=i%>
                </td>
                <%
                    for (int j = from; j <= to; j++) {
                %>
                <td>
                    <%=i * j%>
                </td>
                <%
                    }
                %>
            </tr>
            <%
                }
            %>
        </table>
        <form method="POST"> 
            <br>
            from:
            <input type="number" name="from" value="<%=from%>">
            to:
            <input type="number" name="to" value="<%=to%>">
            <input type="submit" value="Submit">
        </form>
        <hr>    
    </body>

</html>
