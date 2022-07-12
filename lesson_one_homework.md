##### 1.按顺序打印出App、ViewController生命周期各个事件
App：
点击程序图标->执行main函数->执行UIApplicationMain函数初始化UIApplication对象并为其设置代理对象->UIApplication代理对象使用UIApplicationDelegate定义的方法监听应用级事件在前后台、活跃和非活跃等之间切换App的状态->UIApplication对象监听系统事件并处理->应用程序结束

UIViewController：
allocinit->loadView->viewDidLoad->viewWillAppear->viewDidAppear->viewWillDisappear->viewDidDisappear->dealloc
##### 2.写出五种常用的UI控件
UIScrollView、UITableView、UICollectionView、UIWebView、WKWebView
##### 3.列举出三个UITableViewDelegate声明的方法
 -(void)tableView:(UITableView *)tableView 
  willDisplayCell:(UITableViewCell *)cell 
forRowAtIndexPath:(NSIndexPath *)indexPath;

告诉代理对象将为特定行设置单元格格式

-(NSIndexPath *)tableView:(UITableView *)tableView 
 willSelectRowAtIndexPath:(NSIndexPath *)indexPath;
 
告诉代理对象即将选中特定行

-(CGFloat)tableView:(UITableView *)tableView 
heightForRowAtIndexPath:(NSIndexPath *)indexPath;

询问代理对象在某个特定位置的行的高度
