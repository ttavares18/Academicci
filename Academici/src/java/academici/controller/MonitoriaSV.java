package academici.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import academici.entity.Cadastro;
import academici.entity.Monitoria;
import academici.persistence.CadastroDao;


public class MonitoriaSV extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action");

        if (action.equals("novo")) {
            request.setAttribute("objMonitoria", new Monitoria());
            request.getRequestDispatcher("candidatarmonitoria.jsp").forward(request, response);
            return;
        }
        if (action.equals("listar")) {
            request.setAttribute("lstCadastros", new CadastroDao().getCadastros());
            request.getRequestDispatcher("lstcadastros.jsp").forward(request, response);
            return;
        }
        if (action.equals("salvar")) {
            if (save(request)) {
                request.setAttribute("msg", "Operação realizada com Sucesso!");
            } else {
                request.setAttribute("msg", "Ops!! Operação não realizada!");
            }
            request.setAttribute("objMonitoria", new Monitoria());
            request.getRequestDispatcher("candidatarmonitoria.jsp").forward(request, response);
            return;
        }

    }

    private boolean save(HttpServletRequest request) {

        Cadastro cadastro = new Cadastro();
        
        cadastro.setNome(request.getParameter("nome"));
        cadastro.setMatricula(Integer.parseInt(request.getParameter("matricula")));
        cadastro.setSexo(request.getParameter("sexo"));
        cadastro.setEmail(request.getParameter("email"));
        cadastro.setSenha(request.getParameter("senha"));
        cadastro.setCpf(Integer.parseInt(request.getParameter("cpf")));
        cadastro.setRg(Integer.parseInt(request.getParameter("rg")));
        cadastro.setTelefone(Integer.parseInt(request.getParameter("telefone")));
        cadastro.setNivelAcesso(Integer.parseInt(request.getParameter("nivelAcesso")));
        

        if (cadastro.getId() == 0) {
            return new CadastroDao().incluir(cadastro);
        } else {
            return new CadastroDao().alterar(cadastro);
        }

    }

}
