//
//  LQJHeadNewsViewController.m
//  LQJTea
//
//  Created by  on 15/10/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "LQJHeadNewsViewController.h"
#import "LQJTableViewCell.h"
@interface LQJHeadNewsViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView * _tableview;
}
@end

@implementation LQJHeadNewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
       // Do any additional setup after loading the view.
    self.view.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 300);
    
    //self.view.backgroundColor =[UIColor greenColor];
    self.title = @"头条";
    [self requestData];
    [self creatTableView];
}

-(void)requestData
{


}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(void)creatTableView
{
    //_tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
  //[_tableview registerNib:[UINib nibWithNibName:@"LQJTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"ID"];
 _tableview=[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
   // [self.view addSubview:_tableview];
    _tableview.delegate = self;
    _tableview.dataSource = self;
    
    [self.view addSubview:_tableview];
    
    
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * ID = @"ID";
    
  
       LQJTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:ID];
         if (cell==nil) {
               // cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
               cell= [[[NSBundle mainBundle]loadNibNamed:@"LQJTableViewCell" owner:nil options:nil] firstObject];
          }
   
   // LQJTableViewCell * cell =  [tableView dequeueReusableCellWithIdentifier:ID];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
