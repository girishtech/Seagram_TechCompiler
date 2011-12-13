//
//  DataAccess.h
//  ForceMultiplier
//
//  Created by Garrett Shearer on 5/13/11.
//  Copyright 2011 Rochester Institute of Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHCSV.h"
//#import "ForceMultiplierAppDelegate.h"
@class ForceMultiplierAppDelegate;
@class AuthorizedConnector;

@interface DataAccess : NSObject {
    //CoreData
    NSManagedObjectContext *context;
    NSPersistentStoreCoordinator *coordinator;
    
    NSString *currentSession;
    
    AuthorizedConnector *web;
    
    NSString *brandID;
    
    
}

@property (nonatomic, retain) NSManagedObjectContext *context;
@property (nonatomic, retain) NSPersistentStoreCoordinator *coordinator;
@property (nonatomic) NSString *currentSession;
@property (nonatomic, retain) AuthorizedConnector *web;
@property (nonatomic, retain) NSString *brandID;

-(NSString*)logoImage;
-(NSMutableArray*)allPeople;
-(NSString*)uniqueObjectURIString:(NSManagedObject*)obj;
-(void)addSession:(NSMutableDictionary*)session;
@end
