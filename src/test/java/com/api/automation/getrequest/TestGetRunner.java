package com.api.automation.getrequest;

import com.intuit.karate.junit5.Karate;


public class TestGetRunner {
    @Karate.Test
    public Karate runTest() {
        return Karate.run("getRequest","responseMatcher","validateJSONArray").relativeTo(getClass());
    }

    @Karate.Test
    public Karate runTestUsingClassPath(){
        return Karate.run("classpath:/com/api/automation/getrequest/getRequest.feature");
    }
}
