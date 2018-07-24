package com.zhbit.express.service.impl;

/**
 * Created by hugo on 2018/1/26/.
 */
import com.zhbit.express.service.TestService;
import org.springframework.stereotype.Service;

@Service
public class TestServiceImpl implements TestService {
    public String test() {
        System.out.println("-------------test--------------");
        return "test";
    }
}