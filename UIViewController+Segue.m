//
//  UIViewController+Segue.m
//  UIViewController+Segue
//
//  Created by Ken M. Haggerty on 12/17/15.
//  Copyright © 2015 MCMDI. All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "UIViewController+Segue.h"
#import "AKDebugger.h"
#import "AKGenerics.h"
#import <objc/runtime.h>

#pragma mark - // DEFINITIONS (Private) //

@implementation UIViewController (Segue)

#pragma mark - // SETTERS AND GETTERS //

- (void)setSegueObject:(id)segueObject
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetter tags:@[AKD_UI] message:nil];
    
    objc_setAssociatedObject(self, @selector(segueObject), segueObject, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)segueObject
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeGetter tags:@[AKD_UI] message:nil];
    
    return objc_getAssociatedObject(self, @selector(segueObject));
}

#pragma mark - // INITS AND LOADS //

#pragma mark - // PUBLIC METHODS //

- (void)performSegueWithIdentifier:(nonnull NSString *)identifier sender:(nullable id)sender object:(nullable id)object
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeUnspecified tags:@[AKD_UI] message:nil];
    
    [sender setSegueObject:object];
    [self performSegueWithIdentifier:identifier sender:sender];
}

#pragma mark - // DELEGATED METHODS //

#pragma mark - // OVERWRITTEN METHODS //

#pragma mark - // PRIVATE METHODS //

@end
