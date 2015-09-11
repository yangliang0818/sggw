import com.opensymphony.xwork2.ActionSupport;
import com.sggw.dao.BaseDao;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 12-8-31
 * Time: 下午5:54
 * To change this template use File | Settings | File Templates.
 */
public class WebcomeAction extends ActionSupport {
    public String init() throws Exception {
        //BaseDao.main(null);
        System.out.println("11111");
        return SUCCESS;
    }
}

