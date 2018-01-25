package org.cloud.ssm;

import java.util.Arrays;

import org.junit.Test;

/**
 * Unit test for simple App.
 */
public class AppTest {

    @Test
    public void test1() {
        String[] strings = new String[10];
        Arrays.fill(strings, "");
        strings[1] = "asdf";
        boolean isBlank = true;
        for(String mString : strings) {
            if(mString.length()>0) {
                isBlank = false;
            }
        }
        System.out.println(isBlank? 0 : 1);
    }

}
