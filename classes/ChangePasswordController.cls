/**
 * An apex page controller that exposes the change password functionality
 */
public with sharing class ChangePasswordController {
    public String oldPassword {get; set;}
    public String newPassword {get; set;}
    public String verifyNewPassword {get; set;}        
    
    public PageReference changePassword() {
        System.PageReference result = Site.changePassword(newPassword, verifyNewPassword, oldpassword);
        
        return result; // works
        //return result == null ? new System.PageReference('https://www.google.com') : result; // breaks test
    }     
    
    public ChangePasswordController() {}
}