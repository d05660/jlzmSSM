package org.cloud.ssm.utils;

import java.util.UUID;

import org.apache.shiro.authc.credential.DefaultPasswordService;
import org.apache.shiro.crypto.hash.DefaultHashService;

public class GenerateCryptPassword {

    public static void main(String[] args) {
        DefaultHashService hashService = new DefaultHashService();
        hashService.setHashIterations(50000); // 500000
        hashService.setHashAlgorithmName("SHA-256");
        //hashService.setPrivateSalt(new SimpleByteSource("myVERYSECRETBase64EncodedSalt")); // Same salt as in shiro.ini, but NOT base64-encoded.
        hashService.setGeneratePublicSalt(true);

        DefaultPasswordService passwordService = new DefaultPasswordService();
        passwordService.setHashService(hashService);
        String encryptedPassword = passwordService.encryptPassword("123456");
        System.out.println(encryptedPassword);
        System.out.println(UUID.randomUUID());
    }

}
