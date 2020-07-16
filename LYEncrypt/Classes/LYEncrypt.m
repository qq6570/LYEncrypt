//
//  LYEncrypt.m
//  RSAUtil
//
//  Created by ly-yangliu on 2020/7/16.
//  Copyright © 2020 ideawu. All rights reserved.
//

#import "LYEncrypt.h"

@implementation LYEncrypt

/// RSA加密
/// @param pubkey 共钥
/// @param privkey 私钥
/// @param word 需要加密内容
+ (NSString *) encryptRSAWithPubkey:(NSString *)pubkey privkey:(NSString *)privkey word:(NSString *)word{
    
    NSString *originString = word;
    NSString *encWithPubKey;
    NSString *decWithPrivKey;
    NSString *encWithPrivKey;
    NSString *decWithPublicKey;
    
    NSLog(@"Original string(%d): %@", (int)originString.length, originString);
    
    // Demo: encrypt with public key
    encWithPubKey = [RSA encryptString:originString publicKey:pubkey];
    NSLog(@"Enctypted with public key: %@", encWithPubKey);
    // Demo: decrypt with private key
//    decWithPrivKey = [RSA decryptString:encWithPubKey privateKey:privkey];
//    NSLog(@"Decrypted with private key: %@", decWithPrivKey);
    
//    decWithPrivKey = [RSA decryptString:encWithPubKey privateKey:privkey];
//    NSLog(@"(PHP enc)Decrypted with private key: %@", decWithPrivKey);
    
    // Demo: encrypt with private key
//    encWithPrivKey = [RSA encryptString:originString privateKey:privkey];
//    NSLog(@"Enctypted with private key: %@", encWithPrivKey);

    // Demo: decrypt with public key
//    decWithPublicKey = [RSA decryptString:encWithPrivKey publicKey:pubkey];
//    NSLog(@"(PHP enc)Decrypted with public key: %@", decWithPublicKey);
    return encWithPubKey;
}
@end
