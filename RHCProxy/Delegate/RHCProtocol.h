//
//  RHCProtocol.h
//  RHCProxy
//
//  Created by hairong chen on 16/7/16.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RHCDelegate <NSObject>
- (void)somethingDone;
@end

@protocol RHCDataSource <NSObject>
- (id)someDatas;
@end


