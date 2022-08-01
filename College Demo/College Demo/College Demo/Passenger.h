//
//  Passenger.h
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject

@property(nonatomic, readonly) NSNumber *OrderID;
@property(nonatomic, readonly) NSString *SourceStation;
@property(nonatomic, readonly) NSString *DestinationStation;
@property(nonatomic, readonly) NSDate *DepartureTime;
@property(nonatomic, readonly) NSString *PassengerName;
@property(nonatomic, readonly) NSNumber *IDNumber;


- (instancetype)initWithOrderID:(NSNumber *)OrderID SourceStation:(NSString *)SourceStation DestinationStation:(NSString *)DestinationStation DepartureTime:(NSDate *)DepartureTime PassengerName(NSString *)PassengerName;
@end

@interface Passenger : Person
@property(nonatomic, copy) BeyondEighteen;
@property(nonatomic, strong) NSmutableArray *UnusedOrders;
@property(nonatomic, strong) NSmutableArray *HistoryOrders;

-(void) BookTicketWithOrderID:(NSNumber *)OrderID IDNumber:(NSNumber *)IDNumber PassangerName:(NSString *)PassengerName SourceStation:(NSString *)SourceStation DestinationStation:(NSString *)DestinationStation DepartureTime(NSDate *)DepartureTime;
-(void) CheckTicket:(NSNumber *)OrderID;
@end

NS_ASSUME_NONNULL_END
