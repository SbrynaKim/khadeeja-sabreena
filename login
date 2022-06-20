import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.Color;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class login extends JFrame {

	private JPanel contentPane;
	private JTextField textusername;
	private JTextField textField;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					login frame = new login();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public login() {
		setTitle("AURUM CINEMA login");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 384, 195);
		contentPane = new JPanel();
		contentPane.setBackground(new Color(248, 248, 255));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblusername = new JLabel("Username:");
		lblusername.setFont(new Font("Times New Roman", Font.BOLD, 15));
		lblusername.setBounds(57, 45, 85, 18);
		contentPane.add(lblusername);
		
		textusername = new JTextField();
		textusername.setBounds(137, 45, 162, 20);
		contentPane.add(textusername);
		textusername.setColumns(10);
		
		JLabel lblpassword = new JLabel("Password:");
		lblpassword.setFont(new Font("Times New Roman", Font.BOLD, 15));
		lblpassword.setBounds(57, 74, 85, 18);
		contentPane.add(lblpassword);
		
		textField = new JTextField();
		textField.setBounds(137, 74, 162, 20);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JButton btnlogin = new JButton("login");
		btnlogin.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				movielist ml = new movielist();
				ml.setVisible(true);
			}
		});
		btnlogin.setBounds(137, 103, 89, 23);
		contentPane.add(btnlogin);
		
		JLabel lblAurumCinema = new JLabel("AURUM CINEMA");
		lblAurumCinema.setFont(new Font("Times New Roman", Font.BOLD | Font.ITALIC, 25));
		lblAurumCinema.setBounds(73, 11, 204, 23);
		contentPane.add(lblAurumCinema);
	}
}
