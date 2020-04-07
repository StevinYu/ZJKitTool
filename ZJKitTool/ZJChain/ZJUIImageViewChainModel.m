//
//  ZJUIImageViewChainModel.m
//  ZJKitTool
//
//  Created by 邓志坚 on 2020/3/28.
//  Copyright © 2020 kapokcloud. All rights reserved.
//

#import "ZJUIImageViewChainModel.h"
#import <objc/runtime.h>

#define  ZJ_CHAIN_IMAGEVIEW_IMPLEMENTATION(methodName, viewMethod, ParmaType)  ZJ_CHAIN_IMPLEMENTATION(methodName, viewMethod, ParmaType, ZJUIImageViewChainModel * , UIImageView)
@implementation ZJUIImageViewChainModel

ZJ_CHAIN_IMAGEVIEW_IMPLEMENTATION(image, setImage, UIImage *);
ZJ_CHAIN_IMAGEVIEW_IMPLEMENTATION(highlightedImage, setHighlightedImage, UIImage *);
ZJ_CHAIN_IMAGEVIEW_IMPLEMENTATION(highlighted, setHighlighted, BOOL);


@end



@implementation UIImageView (ZJChain)

- (ZJUIImageViewChainModel *)zj_chain{
    
    ZJUIImageViewChainModel *model = objc_getAssociatedObject(self, _cmd);
    if (!model) {

        NSAssert(![self isKindOfClass:[ZJUIImageViewChainModel class]], @"类型错误");

        model = [ZJUIImageViewChainModel new];
        model.view = self;
        objc_setAssociatedObject(self, _cmd, model, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
            
    }
    return model;
}

@end
