package com.api.automation.getrequest;

import com.intuit.karate.junit5.Karate;

public class TestJsonPathRunner {

    @Karate.Test
    public Karate runTest() {
        return Karate.run("jsonPathExpression").relativeTo(getClass());
    }
}
