/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pages;

/**
 *
 * @author Priyanka
 */
import java.util.HashMap;
import java.util.Map;
public class AppController {
    
    
    
    private static AppController instance;

    // Map to store shared data
    private Map<String, String> userData;

    // Private constructor for Singleton pattern
    private AppController() {
        userData = new HashMap<>();
    }

    // Get the Singleton instance
    public static AppController getInstance() {
        if (instance == null) {
            instance = new AppController();
        }
        return instance;
    }

    // Set a user detail
    public void setUserData(String key, String value) {
        userData.put(key, value);
    }

    // Get a user detail
    public String getUserData(String key) {
        return userData.get(key);
    }

    // Convenience methods for specific user details
    public void setUsername(String username) {
        setUserData("username", username);
    }

    public String getUsername() {
        return getUserData("username");
    }

    public void setEmailId(String emailId) {
        setUserData("email_id", emailId);
    }

    public String getEmailId() {
        return getUserData("email_id");
    }

    public void setPhoneNo(String phoneNo) {
        setUserData("phone_no", phoneNo);
    }

    public String getPhoneNo() {
        return getUserData("phone_no");
    }

    public void setPassword(String password) {
        setUserData("password", password);
    }

    public String getPassword() {
        return getUserData("password");
    }
    public void setAccountId(String accountId) {
        setUserData("account_id", accountId);
    }

    public String getAccountId() {
        return getUserData("account_id");
    }
    public void setSeats(String seats) {
        setUserData("seats", seats);
    }

    public String getSeats() {
        return getUserData("seats");
    }
    public void setJourneyClass(String class1) {
        setUserData("class", class1);
    }

    public String getJourneyClass() {
        return getUserData("class");
    }
}
