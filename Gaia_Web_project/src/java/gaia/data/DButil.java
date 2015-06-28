
package gaia.data;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
/**
 *
 * @author zuo
 */
public class DButil {
    private static EntityManagerFactory emf =  //deleted final
            Persistence.createEntityManagerFactory("gaiaPU");
    
    public static EntityManagerFactory getEmFactory() {
        return emf;
    }
}
