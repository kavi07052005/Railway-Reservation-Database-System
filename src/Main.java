import java.sql.*;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws Exception {
        Connection con = DBConnection.getConnection();
        Scanner sc = new Scanner(System.in);

        System.out.println("---- Railway Reservation System ----");
        System.out.println("1. Add Train");
        System.out.println("2. View Trains");

        int ch = sc.nextInt();

        if (ch == 1) {
            System.out.print("Train ID: ");
            int id = sc.nextInt();
            sc.nextLine();

            System.out.print("Train Name: ");
            String name = sc.nextLine();

            PreparedStatement ps = con.prepareStatement(
              "INSERT INTO trains VALUES (?, ?, ?, ?, ?)"
            );
            ps.setInt(1, id);
            ps.setString(2, name);
            ps.setString(3, "Source");
            ps.setString(4, "Destination");
            ps.setInt(5, 100);
            ps.executeUpdate();
            System.out.println("Train Added!");
        }

        else if (ch == 2) {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM trains");
            while (rs.next()) {
                System.out.println(rs.getInt(1) + " | " + rs.getString(2));
            }
        }
        con.close();
    }
}
