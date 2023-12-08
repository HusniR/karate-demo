package com.api.automation.mocks;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class ProductCompositeParallelRunnerTest {

    @Test
    void testApi() {
        Results results = Runner.path("classpath:com/api/automation/mocks/ProductCompositeServiceTest.feature")
                .systemProperty("url.base", "http://localhost:8080" )
                .parallel(1);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}