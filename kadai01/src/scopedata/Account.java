package scopedata;

import java.io.Serializable;

public class Account implements Serializable{
   private String gaku_id;
   private String pass;
   private String name;
   private int graduation;
   public Account() {}
   public Account( String _gaku_id , String _pass , String _name ,int _graduation) {
	   gaku_id = _gaku_id; pass = _pass; name = _name; graduation = _graduation;
   }
   public String  getName()   { return name;   }
   public int  getGraduation() { return graduation; }
   public String  getGaku_id() { return gaku_id; }
   public String  getPass() { return pass; }
}
