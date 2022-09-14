package scopedata3;

import java.io.Serializable;

public class AAccount implements Serializable{
   private String co_id;
   private String name;
   private String region;
   private String type;
   private String content;
   private String pdf;
   public AAccount() {}
   public AAccount( String _co_id , String _name,String _region,String _type,String _content,String _pdf) {
	   co_id = _co_id; name = _name; region = _region; type = _type;content = _content;pdf = _pdf;
   }
   public String  getCo_id() { return co_id; }
   public String  getName() { return name; }
   public String  getRegion() { return region; }
   public String  getType() { return type; }
   public String  getContent() { return content; }
   public String  getPdf() { return pdf; }
}
