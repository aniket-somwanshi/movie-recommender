
package DAO;
import HelpingClasses.SeesionFactory;
import Bean.User;
import com.sun.media.sound.SF2GlobalRegion;
import org.hibernate.*;


public class UserOperation implements UserDeclaration{
 SessionFactory sf;
Session ss;
Transaction tr;


    public UserOperation(){
        sf=HelpingClasses.SeesionFactory.getSessionFactory();
        ss=sf.openSession();
    }
    @Override
    public int insertUser(User u) {
  
      tr=ss.beginTransaction();
      int l=(int)ss.save(u);
      tr.commit();
      if(l>0){
          return 1;
      }
      else{
          return 0;
      }
        
       
       
    }

    @Override
    public int updateUser(int id, User u) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean deleteUser(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User selectUser(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public User insertUsers(User u) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
