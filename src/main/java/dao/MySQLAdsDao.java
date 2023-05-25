package dao;
import models.Ad;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection;

    public MySQLAdsDao(Config config) {
        String url = config.getUrl();
        String username = config.getUsername();
        String password = config.getPassword();

        try {
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Ad> all() {
        List<Ad> ads = new ArrayList<>();
        String query = "SELECT * FROM ads";

        try (Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {
            while (resultSet.next()) {
                long id = resultSet.getLong("id");
                long userId = resultSet.getLong("user_id");
                String title = resultSet.getString("title");
                String description = resultSet.getString("description");

                Ad ad = new Ad(id, userId, title, description);
                ads.add(ad);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return ads;
    }

    public Long insert(Ad ad) {
        String query = "INSERT INTO ads (id, user_id, title, description) VALUES (?, ?, ?, ?)";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setLong(1, ad.getId());
            statement.setLong(2, ad.getUserId());
            statement.setString(3, ad.getTitle());
            statement.setString(4, ad.getDescription());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}

