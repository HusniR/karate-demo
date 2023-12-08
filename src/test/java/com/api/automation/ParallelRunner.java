package com.api.automation;

import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

public class ParallelRunner {
    @Test
    public void executeKarateTests(){
        Runner.path("classpath:com/api/automation/getrequest").parallel(5);
        Runner.path("classpath:com/api/automation/postrequest").parallel(5);
        Runner.path("classpath:com/api/automation/putrequest").parallel(5);
        Runner.path("classpath:com/api/automation/patchrequest").parallel(5);
        Runner.path("classpath:com/api/automation/deleterequest").parallel(5);
    }
}
