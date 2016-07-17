//
//  main.m
//  RHCProxy
//
//  Created by hairong chen on 16/7/16.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RHCClass.h"
#import "RHCImplementClass.h"

#import "RHCBridgeAClass.h"
#import "RHCBridegBCalss.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        // proxy
        RHCClass *rhc = [RHCClass new];
        RHCImplementClass *impl = [RHCImplementClass new];
        rhc.delegate = impl;
        rhc.dataSource = impl;
        
        // brideg pattern
        RHCBridgeAClass *bridgeA = [RHCBridgeAClass new];
        RHCBridegBCalss *bridgeB = [RHCBridegBCalss new];
        
        id <RHCDelegate> aClass = bridgeA;
        [aClass somethingDone];
        
        id <RHCDelegate> bClass = bridgeB;
        [bClass somethingDone];
        
    }
    return 0;
}
