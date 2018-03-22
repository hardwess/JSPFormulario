package Recursos;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/alunoControle")
public class AlunoControle extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AlunoControle() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String txtID = request.getParameter("txtID");
		String txtRA = request.getParameter("txtRA");
		String txtNome = request.getParameter("txtNome");
		String txtNasc = request.getParameter("txtNasc");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lesnoite", "root", "");
			String sql = "INSERT INTO alunos (id, ra, nome, nasc) VALUES (?, ?, ?, ?)";
			PreparedStatement stmt = con.prepareStatement( sql );
			stmt.setInt(1, Integer.parseInt(txtID));
			stmt.setString(2, txtRA);
			stmt.setString(3, txtNome);
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyy");
			Date d = (Date) sdf.parse(txtNasc);
			stmt.setInt(4, Integer.parseInt(txtNasc));
			stmt.executeUpdate();
			response.getWriter().append("ID :" + txtID + " - ");
			response.getWriter().append("RA :" + txtRA + " - ");
			response.getWriter().append("Nome :" + txtNome + " - ");
			response.getWriter().append("Nascimento :" + txtNasc + " - ");
			response.getWriter().append("Aluno Cadastrado Com Sucesso");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
}
