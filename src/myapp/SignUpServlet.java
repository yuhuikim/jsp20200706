package myapp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/myapp/signup")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUpServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/view/myapp/signup.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String ageStr = request.getParameter("age");
		int age = 0;

		if (ageStr != null) {
			age = Integer.valueOf(ageStr);
		}

		try {
			// 1. 드라이버 로딩 (listener에서 이미 로딩함)

			// 2. 연결 생성
			Connection con = DriverManager.getConnection("jdbc:apache:commons:dbcp:test1");

			// 3. statement 생성
//			PreparedStatement ps = con.prepareStatement(sql);
			Statement stmt = con.createStatement();

			// 4. 쿼리 실행
//			ps.setString(1, email);
//			ps.setString(2, password);
//			ps.setString(3, name);
//			ps.setInt(4, age);

			String sql = "INSERT INTO member (email, password, name, age)" 
			+ " VALUES ('" + email + "', '" + password
					+ "', '" + name + "', " + age + ")";
			int cnt = stmt.executeUpdate(sql, new String[] { "id" });

			// 5. 결과 처리
			if (cnt == 1) {
				// 정상
				System.out.println("정상 입력");

				ResultSet rs = stmt.getGeneratedKeys();

				if (rs.next()) {
//					System.out.println("id: " + rs.getInt(1));
					Member mem = new Member();
					mem.setAge(age);
					mem.setName(name);
					mem.setEmail(email);
					mem.setPassword(password);
					mem.setId(rs.getInt(1));

					HttpSession session = request.getSession();
					session.setAttribute("member", mem);
				}

				response.sendRedirect("member");

				rs.close();
			} else {
				// 오류
				System.out.println("입력 오류");
				request.getRequestDispatcher("/WEB-INF/view/myapp/signup.jsp").forward(request, response);
			}

			// 6. 자원 종료
			stmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
