import javax.annotation.Resource;

import com.muly.entity.User;
import com.muly.service.IUserService;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;


/**
 * 测试spring mybatis整合
 *
 * @author zhoubo
 * @create 2017-03-02 15:34
 **/
public class TestMybatis {

    private static Logger logger = Logger.getLogger(TestMybatis.class);
    private ApplicationContext ac = null;
    @Resource
    private IUserService userService = null;

	@Before
	public void before() {
		ac = new ClassPathXmlApplicationContext("spring-mybatis.xml");
		userService = (IUserService) ac.getBean("userService");
	}

    @Test
    public void test1() {
        User user = userService.getUserById(1);
        // System.out.println(user.getUserName());
        // logger.info("值："+user.getUserName());
        logger.info(JSON.toJSONString(user));
    }
}

