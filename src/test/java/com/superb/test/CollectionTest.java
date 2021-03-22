package com.superb.test;

import com.superb.entity.Attention;
import com.superb.entity.Collection;
import com.superb.service.AttentionService;
import com.superb.service.CollectionService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @author Superb
 * @date 2020/11/17 - 18:50
 * @E_mail superb12580@163.com
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class CollectionTest {
    @Autowired
    private CollectionService collectionService;

    @Test
    public void test1(){
        Collection collection = new Collection();
        collection.setStyleId(2);
        collection.setUserId(2L);
        collectionService.save(collection);
    }
}
