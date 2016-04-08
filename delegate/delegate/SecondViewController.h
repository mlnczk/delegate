//
//  SecondViewController.h
//  delegate
//
//  Created by Rafal Kampa on 08.04.2016.
//  Copyright © 2016 Rafal Kampa. All rights reserved.
//

#import <UIKit/UIKit.h>


//tworzenie delegaty
@protocol SecondViewControllerDelegate <NSObject>

- (void)sendText:(NSString *)text;

@end

@interface SecondViewController : UIViewController

//tworzenie propertki delegaty zeby sie do niej odwolac

@property (nonatomic, weak)id<SecondViewControllerDelegate>delegate;



@end
