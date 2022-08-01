
@interface Student : NSobject
@property (nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSString *major;
@property(nonatomic, copy) NSInteger *age;

-(void) study: (CGFloat time);
@end
