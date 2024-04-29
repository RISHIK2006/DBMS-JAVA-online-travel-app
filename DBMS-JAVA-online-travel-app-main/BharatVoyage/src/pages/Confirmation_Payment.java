package pages;

import javax.swing.JOptionPane;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */

/**
 *
 * @author jaygo
 */
public class Confirmation_Payment extends javax.swing.JFrame {

    /**
     * Creates new form Confirmation_Payment
     */
    public Confirmation_Payment() {
        initComponents();
        String url = "jdbc:mysql://localhost:3306/travel_agency";
        String username = "root";
        String password = "WARmachineROXXX";
        String query1 = "SELECT * FROM train ";
        String query2="select * from flight";
        
        int avail_seats;
        try{
            String JourneyClass=AppController.getInstance().getJourneyClass();
            String seats=AppController.getInstance().getSeats();
            String journeyID=AppController.getInstance().getJourneyID();
            int NumberOfSeats=0;
            
            if(seats==null){
                int a1=1;
                
            }else{
                NumberOfSeats=Integer.parseInt(seats);
            }
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con= DriverManager.getConnection(url, username, password);
            Statement statement = con.createStatement();
            
            ResultSet resultSet1 = statement.executeQuery(query1);
            
            while(resultSet1.next()){
                String train_id=resultSet1.getString("train_id");
                if(train_id.equals(journeyID)){
                    if(JourneyClass.equals("sleeper")){
               
                        avail_seats=resultSet1.getInt("available_seats_sleeper");
                        avail_seats=avail_seats-NumberOfSeats;
                        String query3="update train set available_seats_sleeper=? where train_id=?";
                        PreparedStatement ptst=con.prepareStatement(query3);
                        ptst.setInt(1, avail_seats);
                        ptst.setString(2, journeyID);
                        
                        ptst.executeUpdate(); 
                        
                        
                    }
                    else if(JourneyClass.equals("ac 2 tier")){
                        avail_seats=resultSet1.getInt("available_seats_ac_2_tier");
                        avail_seats=avail_seats-NumberOfSeats;
                        String query3="update train set available_seats_ac_2_tier=? where train_id=?";
                        PreparedStatement ptst=con.prepareStatement(query3);
                        ptst.setInt(1, avail_seats);
                        ptst.setString(2, journeyID);
                        ptst.executeUpdate();
                    }
                    else if(JourneyClass.equals("ac first class")){
                        avail_seats=resultSet1.getInt("available_seats_ac_first_class");
                        avail_seats=avail_seats-NumberOfSeats;
                        String query3="update train set available_seats_ac_first_class=? where train_id=?";
                        PreparedStatement ptst=con.prepareStatement(query3);
                        ptst.setInt(1, avail_seats);
                        ptst.setString(2, journeyID);
                        ptst.executeUpdate();
                    }
                }
            }
            ResultSet resultSet2 = statement.executeQuery(query2);
            while(resultSet2.next()){
                String flight_id=resultSet2.getString("flight_id");
                if(flight_id.equals(journeyID)){
                    if(JourneyClass.equals("economy")){
                    
                        avail_seats=resultSet2.getInt("available_seats_economy");
                        avail_seats=avail_seats-NumberOfSeats;
                        String query3="update flight set available_seats_economy=? where flight_id=?";
                        PreparedStatement ptst=con.prepareStatement(query3);
                        ptst.setInt(1, avail_seats);
                        ptst.setString(2, journeyID);
                        ptst.executeUpdate();
                    }
                    else if(JourneyClass.equals("business")){
                        avail_seats=resultSet2.getInt("available_seats_business");
                        avail_seats=avail_seats-NumberOfSeats;
                        String query3="update flight set available_seats_business=? where flight_id=?";
                        PreparedStatement ptst=con.prepareStatement(query3);
                        ptst.setInt(1, avail_seats);
                        ptst.setString(2, journeyID);
                        ptst.executeUpdate();
                    }
                    else if(JourneyClass.equals("first class")){
                        avail_seats=resultSet2.getInt("available_seats_first_class");
                        avail_seats=avail_seats-NumberOfSeats;
                        String query3="update flight set available_seats_first_class=? where flight_id=?";
                        PreparedStatement ptst=con.prepareStatement(query3);
                        ptst.setInt(1, avail_seats);
                        ptst.setString(2, journeyID);
                        ptst.executeUpdate();
                    }
                }
            }
        }catch(SQLException e){
           JOptionPane.showMessageDialog(null, e.getMessage()); 
        }catch(ClassNotFoundException ex){        
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(0, 0, 0));

        jLabel2.setFont(new java.awt.Font("Segoe UI", 3, 18)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(153, 255, 255));
        jLabel2.setText("Your booking has been confirmed !");

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(153, 255, 255));
        jLabel1.setText("BOOKING CONFIRMED !!");

        jButton1.setBackground(new java.awt.Color(102, 255, 204));
        jButton1.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jButton1.setText("Continue Booking");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(260, 260, 260)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 291, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(249, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 301, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 263, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)))
                .addGap(248, 248, 248))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(24, 24, 24)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(53, 53, 53)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 183, Short.MAX_VALUE)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(109, 109, 109))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        new HomePage().setVisible(true);
        dispose();// TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Confirmation_Payment.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Confirmation_Payment.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Confirmation_Payment.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Confirmation_Payment.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Confirmation_Payment().setVisible(true);
                
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
}
