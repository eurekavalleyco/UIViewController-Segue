//
//  UIViewController+Segue.h
//  UIViewController+Segue
//
//  Created by Ken M. Haggerty on 12/17/15.
//  Copyright © 2015 MCMDI. All rights reserved.
//

#pragma mark - // NOTES (Public) //

#pragma mark - // IMPORTS (Public) //

#import <UIKit/UIKit.h>

#pragma mark - // PROTOCOLS //

//@protocol UIStoryboardSegueSender <NSObject>
//@property (nonatomic, strong) _Nullable id segueObject;
//@end

#pragma mark - // DEFINITIONS (Public) //

@interface UIViewController (Segue)
@property (nonatomic, strong) _Nullable id segueObject;
- (void)performSegueWithIdentifier:(nonnull NSString *)identifier sender:(nullable id)sender object:(nullable id)object;
@end
