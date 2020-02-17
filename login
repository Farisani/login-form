import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class LoginFrame extends JFrame implements ActionListener {

Container Container = getContentPane();
JLabel userLabel = new JLabel("Username");
JLabel passwordLabel = new JLabel("Password");
JTextField userTextField = new JTextField();
JPasswordField passwordField = new JTextField();
JButton loginButton = new JButton("Login");
JButton resetButton = new JButton("Reset");

  LoginFrame() {
    setLayoutManager();
    setLocationAndSize();
    addComponentsToContainer();
    addActionEvent();
  }
  public void setLayoutManager(){
    container.setLayout(null);
  }

  public void setLocationAndSize(){
    userLabel.setBounds(50,150,100,30);
    passwordLabel.setBounds(50,220,100,30);
    userTextField.setBounds(150,150,150,30);
    passwordField.setBounds(150,220,150,30);
    showPassword.setBounds(150,220,150,30);
    loginButton.setBounds(50,300,100,30);
    resetButton.setBounds(200,300,100,30);

  }

  public void addComponentsToContainer(){
    container.add(userLabel);
    container.add(passwordLabel);
    container.add(userTextField);
    container.add(passwordField);
    container.add(showPassword);
    container.add(loginButton);
    container.add(resetButton);
  }

  public void addActionEvent(){
    loginButton.addActionListener(this);
    resetButton.addActionListener(this);
    showPassword.addActionEvent(this);
  }
  @Override
  public void actionPerformed(ActionEvent e){
    //Coding Part of LOGIN button
         if (e.getSource() == loginButton) {
             String userText;
             String pwdText;
             userText = userTextField.getText();
             pwdText = passwordField.getText();
             if (userText.equalsIgnoreCase("mehtab") && pwdText.equalsIgnoreCase("12345")) {
                 JOptionPane.showMessageDialog(this, "Login Successful");
             } else {
                 JOptionPane.showMessageDialog(this, "Invalid Username or Password");
             }

         }
         //Coding Part of RESET button
         if (e.getSource() == resetButton) {
             userTextField.setText("");
             passwordField.setText("");
         }
        //Coding Part of showPassword JCheckBox
         if (e.getSource() == showPassword) {
             if (showPassword.isSelected()) {
                 passwordField.setEchoChar((char) 0);
             } else {
                 passwordField.setEchoChar('*');
             }


         }
     }

 }
  
public class login  {
  public static void main(String[] args) {
    LoginFrame frame= new LoginFrame();
    frame.setTitle("Login Form");
    frame.setVisible(true);
    frame.setBounds("10,10,370,600");
    frame.setDefaultCloseOperation("JFrame.EXIT_ON_CLOSE");
    frame.setResizable(false);
  }
}
