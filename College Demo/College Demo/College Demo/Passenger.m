//
//  Passenger.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Passenger.h"


@implementation Orders
- (instancetype)initWithOrderID:(NSNumber *)OrderID SourceStation:(NSString *)SourceStation DestinationStation:(NSString *)DestinationStation DepartureTime:(NSDate *)DepartureTime PassengerName:(NSString *)PassengerName IDNumber:(NSNumber *)IDNumber{
    if (self = [super init]) {
        [self createOrderWithOrderID:OrderID SourceStation:SourceStation DestinationStation:DestinationStation DepartureTime:DepartureTime PassengerName:PassengerName IDNumber:IDNumber];
    }
    return self;
}
-(void)createOrderWithOrderID:(NSNumber *)OrderID SourceStation:(NSString *)SourceStation DestinationStation:(NSString *)DestinationStation DepartureTime:(NSDate *)DepartureTime PassengerName(NSString *)PassengerName {
    self.OrderID = OrderID;
    self.SourceStation = SourceStation;
    self.DestinationStation = DestinationStation;
    self.DepartureTime = DepartureTime;
    self.PassangerName = PassangerName;
    self.IDNumber = IDNumber;
}
@end

@implementation Passenger
-(void)BookTicketWithOrderID:(NSNumber *)OrderID SourceStation:(NSString *)SourceStation DestinationStation:(NSString *)DestinationStation DepartureTime:(NSDate *)DepartureTime PassengerName:(NSString *)PassengerName IDNumber:(NSNumber *)IDNumber{
    Orders NewOrder = [[Orders alloc] initWithOrderID:OrderID SourceStation:SourceStation DestinationStation:DestinationStation DepartureTime:DepartureTime PassangerName:PassangerName IDNumber:IDNumber];
    [UnusedOrders addObject:NewOrder]
}
-(void)CheckTicket:(NSNumber *)OrderID {
    for(int i = 0; i < UnusedOrders.count; i++) {
        Orders temp = UnusedOrders[i];
        if([temp OrderID] == OrderID) {
            [HistoryOrders addObject: temp]
            [UnusedOrders removeObjectAtIndex:i]
        }
}
@end
