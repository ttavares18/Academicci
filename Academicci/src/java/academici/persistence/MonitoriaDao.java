package academici.persistence;

import academici.connection.ConnectionFactory;
import academici.entity.Monitoria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MonitoriaDao {
    
    private String sql;

    public boolean incluir(Monitoria monitoria) {
        boolean isOk = false;
        Connection conn = ConnectionFactory.getConnection();
        PreparedStatement ps = null;

        if (conn == null) {
            return isOk;
        }

        sql = "INSERT INTO candidatos(matricula) VALUES(?);";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, monitoria.getMatricula());
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(MonitoriaDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps);
        }

        return isOk;
    }

    public boolean alterar(Monitoria monitoria) {
        boolean isOk = false;
        Connection conn = ConnectionFactory.getConnection();
        PreparedStatement ps = null;

        if (conn == null) {
            return isOk;
        }

        sql = "UPDATE candidatos SET matricula=? WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, monitoria.getMatricula());
            ps.setInt(2, monitoria.getId());
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(MonitoriaDao.class.getName()).log(Level.SEVERE, null, ex);
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

        sql = "DELETE FROM candidatos WHERE candidatos.id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(MonitoriaDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps);
        }

        return isOk;
    }

    public Monitoria getMonitoria(int id) {
        Monitoria monitoria = null;
        Connection conn = ConnectionFactory.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        if (conn == null) {
            return monitoria;
        }

        sql = "SELECT * FROM candidatos WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                monitoria = new Monitoria();
                monitoria.setId(rs.getInt("id"));
                monitoria.setMatricula(rs.getInt("matricula"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(MonitoriaDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps, rs);
        }
        return monitoria;
    }

    public List<Monitoria> getMonitores() {
        List<Monitoria> lstMonitoria = null;
        Connection conn = ConnectionFactory.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        if (conn == null) {
            return lstMonitoria;
        }

        sql = "SELECT * FROM usuários ORDER BY nome;";

        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            lstMonitoria = new ArrayList<Monitoria>();
            while (rs.next()) {
                Monitoria monitoria = new Monitoria();
                monitoria.setId(rs.getInt("id"));
                monitoria.setMatricula(rs.getInt("matricula"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(MonitoriaDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps, rs);
        }

        return lstMonitoria;
    }
    
}
