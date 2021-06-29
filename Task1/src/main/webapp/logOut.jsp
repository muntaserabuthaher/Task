<% 
session.removeAttribute("authorized");
session.removeAttribute("nameUser");
session.removeAttribute("position");
RequestDispatcher requestDispatcher=request.getRequestDispatcher("index.jsp");
requestDispatcher.forward(request,response);
%>