//
//  Settings.m
//  ForceMultiplier
//
//  Created by Garrett Shearer on 10/25/11.
//  Copyright (c) 2011 Rochester Institute of Technology. All rights reserved.
//

#import "Constants.h"



@implementation Constants

//APP-WIDE
BOOL const USES_SURVEY = YES;


// DEV = 0
// STG = 1
// PROD = 2
int const RELEASE = 2;

NSString * const CURRENTVERSION = @"2.0.0.7";

NSString * const WS_DEV = @"http://ssv2dev.etghosting.net/API/";
NSString * const WS_STG = @"http://ssv2stg.etghosting.net/API/";
NSString * const WS_PROD = @"http://ssv2prod.etghosting.net/API/";

NSString * const STUDYID_DEV_ENG = @"102";
NSString * const STUDYID_STG_ENG = @"102";
NSString * const STUDYID_PROD_ENG = @"10";

NSString * const STUDYID_DEV_ES = @"102";
NSString * const STUDYID_STG_ES = @"102";
NSString * const STUDYID_PROD_ES = @"30";

NSString * const APIKEY_DEV_ENG = @"90D83C10-E107-4B45-876B-D9EA756DD25C";
NSString * const APIKEY_STG_ENG = @"C5D76495-6810-41EA-B863-8FD99851AB0E";
NSString * const APIKEY_PROD_ENG = @"C5D76495-6810-41EA-B863-8FD99851AB0E";

NSString * const APPKEY_DEV_ENG = @"41947193-06ff-43e4-9beb-180852029a2c";
NSString * const APPKEY_STG_ENG = @"A7DC1447-6D66-4B02-BA69-5638B7A70AD6";
NSString * const APPKEY_PROD_ENG = @"982826EA-1E33-435E-9F36-140C244223A9";

//Fonts
NSString * const mainFont = @"FirstConstant";

//Header/Logo
CGFloat const HEADER_HEIGHT = 79.0f;

//OPTIN CONFIRMATION CONTROLLER
BOOL const HIDES_HEADER_ON_OPTIN_PAGE = NO;

//SURVEY CONTROLLER
BOOL const HIDES_HEADER_ON_SURVEY_PAGE = NO;

//THANKYOU CONTROLLER
BOOL const HIDES_HEADER_ON_THANKYOU_PAGE = NO;

//SETTINGS CONTROLLER


@end

//COLORS!!!!
@implementation UIColor (ProjectName)
    +(UIColor *) foregroundColor { return [UIColor whiteColor]; }
    +(UIColor *) backgroundColor { return [UIColor blackColor]; }
    +(UIColor *) highlightColor  { return [UIColor blackColor]; }

    +(UIColor *) eventsTableHeader_BackgroundColor { return [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0]; }
    +(UIColor *) eventsTableHeader_LabelBackgroundColor { return [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0]; }
    +(UIColor *) eventsTableHeader_FontColor { return [UIColor colorWithRed:.619 green:0.227 blue:0.003 alpha:1.0]; }

    +(UIColor *) eventsTable_FontColor { return [UIColor colorWithRed:.87 green:0.36 blue:0.023 alpha:1.0]; }
    +(UIColor *) eventsTable_OddFontColor { return [UIColor whiteColor]; }
    +(UIColor *) eventsTable_BackgroundColor { return [UIColor colorWithRed:.87 green:0.36 blue:0.023 alpha:1.0]; }
    +(UIColor *) eventsTable_OddBackgroundColor { return [UIColor colorWithRed:.87 green:0.36 blue:0.023 alpha:1.0]; }
    +(UIColor *) eventsTable_SelectedBackgroundColor { return [UIColor colorWithRed:0.1 green:0.1 blue:0.8 alpha:0.7]; }
@end