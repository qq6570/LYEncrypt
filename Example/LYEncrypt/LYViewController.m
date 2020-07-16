//
//  LYViewController.m
//  LYEncrypt
//
//  Created by 657035229@qq.com on 07/16/2020.
//  Copyright (c) 2020 657035229@qq.com. All rights reserved.
//

#import "LYViewController.h"
#import "LYEncryptHeader.h"
@interface LYViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tf;
@property (weak, nonatomic) IBOutlet UILabel *decWithPrivKeyL;
@property (weak, nonatomic) IBOutlet UILabel *encWithPrivKeyL;
@property (weak, nonatomic) IBOutlet UILabel *decWithPublicKeyL;
@property (weak, nonatomic) IBOutlet UITextField *pubTF;
@property (weak, nonatomic) IBOutlet UITextField *pivTF;

@end

@implementation LYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *pubkey =@"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCGg84r7ujs7GG9CeOgt9Mbh7PnTBTadOTjEuTuGUxAJlfz7Oo0K+wxbaaMtE8Gq74U50RBGnHOQoUkUaSVpJqIC695PkUMKPmFj4xUPICv9H+PI/pBmHWpFjBW0eULUlcjCuQDsA0yW21fiOG+KrRNP23JAuNJlmrxRHTzG+ClpwIDAQAB";
    NSString *privkey = @"-----BEGIN PRIVATE KEY-----\nMIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAMMjZu9UtVitvgHS\ntpmAU/rRVdhy9GaT2rnpCJOYSb0deVI+rXPKHI9Aca2LkWiRgkzM1wqbRvAvWrqK\ngm4PgQUjnoNr7vRd1HPUKNA9ATfJetddW86yar0ux3FMVaxUFN6F0KatqkplVXHo\n8qXubKHRx9dCbK95P96rJkrWBiO9AgMBAAECgYBO1UKEdYg9pxMX0XSLVtiWf3Na\n2jX6Ksk2Sfp5BhDkIcAdhcy09nXLOZGzNqsrv30QYcCOPGTQK5FPwx0mMYVBRAdo\nOLYp7NzxW/File//169O3ZFpkZ7MF0I2oQcNGTpMCUpaY6xMmxqN22INgi8SHp3w\nVU+2bRMLDXEc/MOmAQJBAP+Sv6JdkrY+7WGuQN5O5PjsB15lOGcr4vcfz4vAQ/uy\nEGYZh6IO2Eu0lW6sw2x6uRg0c6hMiFEJcO89qlH/B10CQQDDdtGrzXWVG457vA27\nkpduDpM6BQWTX6wYV9zRlcYYMFHwAQkE0BTvIYde2il6DKGyzokgI6zQyhgtRJ1x\nL6fhAkB9NvvW4/uWeLw7CHHVuVersZBmqjb5LWJU62v3L2rfbT1lmIqAVr+YT9CK\n2fAhPPtkpYYo5d4/vd1sCY1iAQ4tAkEAm2yPrJzjMn2G/ry57rzRzKGqUChOFrGs\nlm7HF6CQtAs4HC+2jC0peDyg97th37rLmPLB9txnPl50ewpkZuwOAQJBAM/eJnFw\nF5QAcL4CYDbfBKocx82VX/pFXng50T7FODiWbbL4UnxICE0UBFInNNiWJxNEb6jL\n5xd0pcy9O2DOeso=\n-----END PRIVATE KEY-----";

    NSString *originString = @"hello world!";
    NSLog(@"Original string(%d): %@", (int)originString.length, originString);
    _tf.text = originString;
    _pubTF.text = pubkey;
    _pivTF.text = privkey;
    
 
}
- (IBAction)action:(UIButton *)sender {
     _encWithPrivKeyL.text = [NSString stringWithFormat:@"私钥加密内容: %@", [LYEncrypt encryptRSAWithPubkey:_pubTF.text privkey:_pivTF.text word:_tf.text]];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
@end
