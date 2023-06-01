package dao;

public class Config {
    private String url;
    private String username;
    private String password;

    public Config(String url, String username, String password) {
        this.url = url;
        this.username = username;
        this.password = password;
    }

    public Config() {

    }

    public String getUrl() {
        return url;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }
}
