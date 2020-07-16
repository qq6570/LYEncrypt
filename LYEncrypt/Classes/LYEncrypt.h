//
//  LYEncrypt.h
//  RSAUtil
//
//  Created by ly-yangliu on 2020/7/16.
//  Copyright © 2020 ideawu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RSA.h"
NS_ASSUME_NONNULL_BEGIN

@interface LYEncrypt : NSObject

/// RSA加密
/// @param pubkey 共钥
/// @param privkey 私钥
/// @param word 需要加密内容
+ (NSString *) encryptRSAWithPubkey:(NSString *)pubkey privkey:(NSString *)privkey word:(NSString *)word;

@end

NS_ASSUME_NONNULL_END
