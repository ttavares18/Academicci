package academici.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import academici.connection.ConnectionFactory;
import academici.entity.Cadastro;

public class CadastroDao {

    private String sql;

    public boolean incluir(Cadastro cadastro) {
        boolean isOk = false;
        Connection conn = ConnectionFactory.getConnection();
        PreparedStatement ps = null;

        if (conn == null) {
            return isOk;
        }

        sql = "INSERT INTO usuarios(nome, matricula, sexo, email, senha, "
                + "cpf,rg,telefone, nivel_acesso) VALUES(?,?,?,?,?,?,?,?,?);";

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, cadastro.getNome());
            ps.setInt(2, cadastro.getMatricula());
            ps.setString(3, cadastro.getSexo());
            ps.setString(4, cadastro.getEmail());
            ps.setString(5, cadastro.getSenha());
            ps.setInt(6, cadastro.getCpf());
            ps.setInt(7, cadastro.getRg());
            ps.setInt(8, cadastro.getTelefone());
            ps.setInt(9, cadastro.getNivelAcesso());
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(CadastroDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps);
        }

        return isOk;
    }

    public boolean alterar(Cadastro cadastro) {
        boolean isOk = false;
        Connection conn = ConnectionFactory.getConnection();
        PreparedStatement ps = null;

        if (conn == null) {
            return isOk;
        }

        sql = "UPDATE usuarios SET nome=?, matricula=?, sexo=?, email=?, "
                + "senha=?, cpf=?, rg=?, telefone=?, nivel_acesso=? WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, cadastro.getNome());
            ps.setInt(2, cadastro.getMatricula());
            ps.setString(3, cadastro.getSexo());
            ps.setString(4, cadastro.getEmail());
            ps.setString(5, cadastro.getSenha());
            ps.setInt(6, cadastro.getCpf());
            ps.setInt(7, cadastro.getRg());
            ps.setInt(8, cadastro.getTelefone());
            ps.setInt(9, cadastro.getNivelAcesso());
            ps.setInt(10, cadastro.getId());
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(CadastroDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps);
        }

        return isOk;
    }

    public boolean excluir(int id) {
        boolean isOk = false;
        Connection conn = ConnectionFactory.getConnection();
        PreparedStatement ps = null;

        if (conn == null) {
            return isOk;
        }

        sql = "DELETE FROM usuarios WHERE usuarios.id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(CadastroDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps);
        }

        return isOk;
    }

    public Cadastro getCadastro(int id) {
        Cadastro cadastro = null;
        Connection conn = ConnectionFactory.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        if (conn == null) {
            return cadastro;
        }

        sql = "SELECT * FROM usuarios WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                cadastro = new Cadastro();
                cadastro.setId(rs.getInt("id"));
                cadastro.setNome(rs.getString("nome"));
                cadastro.setMatricula(rs.getInt("matricula"));
                cadastro.setSexo(rs.getString("sexo"));
                cadastro.setEmail(rs.getString("email"));
                cadastro.setSenha(rs.getString("senha"));
                cadastro.setCpf(rs.getInt("cpf"));
                cadastro.setRg(rs.getInt("rg"));
                cadastro.setTelefone(rs.getInt("telefone"));
                cadastro.setNivelAcesso(rs.getInt("nivel_acesso"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CadastroDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps, rs);
        }
        return cadastro;
    }

    public List<Cadastro> getCadastros() {
        List<Cadastro> lstCadastros = null;
        Connection conn = ConnectionFactory.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        if (conn == null) {
            return lstCadastros;
        }

        sql = "SELECT * FROM usuários ORDER BY nome;";

        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            lstCadastros = new ArrayList<Cadastro>();
            while (rs.next()) {
                Cadastro cadastro = new Cadastro();
                cadastro.setId(rs.getInt("id"));
                cadastro.setNome(rs.getString("nome"));
                cadastro.setMatricula(rs.getInt("matricula"));
                cadastro.setSexo(rs.getString("sexo"));
                cadastro.setEmail(rs.getString("email"));
                cadastro.setSenha(rs.getString("senha"));
                cadastro.setCpf(rs.getInt("cpf"));
                cadastro.setRg(rs.getInt("rg"));
                cadastro.setTelefone(rs.getInt("telefone"));
                cadastro.setNivelAcesso(rs.getInt("nivel_acesso"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(CadastroDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps, rs);
        }

        return lstCadastros;
    }

}
