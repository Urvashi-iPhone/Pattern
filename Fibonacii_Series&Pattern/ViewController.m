//
//  ViewController.m
//  Fibonacii_Series&Pattern
//
//  Created by Tecksky Techonologies on 3/20/17.
//  Copyright © 2017 Tecksky Technologies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   // [self fibonaci];
  // [self pattren_star];
   // [self pattren];
 //   [self pattren_number];
   // [self pt1];
  //   [self pt2];
    //[self pt3];
    [self pt4];
    
}

-(void)fibonaci

{
    int first = 0;
    int second = 1;
    int n = 25;
    int next = first+second;
    
    for (int i =0; i<n; i++)
    {
        NSLog(@"%d\n",next);
        first = second;
        second = next;
        next = first+second;
        
    }

}
-(void)pattren_number
{
    
    //    1
    //   121
    //  12321
    // 1234321
    //123454321
    // 1234321
    //  12321
    //   121
    //    1
    
    NSString *lbl=@"";
    int n =5;
    int spaceFlage = n-1;
    int starFlage = 1;
    for (int i = 0; i<n; i++)
    {
        for (int j = 0; j<spaceFlage; j++)
        {
            NSLog(@"");
            lbl = [lbl stringByAppendingString:@" "];
        }
        spaceFlage--;
        int tmp = 1;
        for (int k = 0; k<starFlage; k++)
        {
            
            NSLog(@"tmp%d",starFlage/2);
            NSLog(@"*");
            if (k<=(starFlage/2))
            {
                lbl = [lbl stringByAppendingString:[NSString stringWithFormat:@"%d",tmp]];
                if (k<(starFlage/2))
                {
                tmp++;
                }
            }
            else
            {
                tmp--;
                lbl = [lbl stringByAppendingString:[NSString stringWithFormat:@"%d",tmp]];
            }
            
        }
        starFlage = starFlage+2;
        NSLog(@"\n");
        lbl = [lbl stringByAppendingString:@"\n"];
    }
    
    n--;
    spaceFlage++;
    starFlage = starFlage-2;
    for (int i = 0; i<n; i++)
    {
        spaceFlage++;
        for (int j = 0; j<spaceFlage; j++)
        {
            NSLog(@"");
            lbl = [lbl stringByAppendingString:@" "];
        }
        starFlage = starFlage-2;
        int tmp = 1;
        for (int k = 0; k<starFlage; k++) {
//            NSLog(@"*");
//            lbl = [lbl stringByAppendingString:@"*"];
            if (k<=(starFlage/2))
            {
                lbl = [lbl stringByAppendingString:[NSString stringWithFormat:@"%d",tmp]];
                if (k<(starFlage/2))
                {
                    tmp++;
                }
            }
            else
            {
                tmp--;
                lbl = [lbl stringByAppendingString:[NSString stringWithFormat:@"%d",tmp]];
            }
        }
        
        NSLog(@"\n");
        lbl = [lbl stringByAppendingString:@"\n"];
    }
    NSLog(@"%@",lbl);
    _lbl.text =lbl;
}

-(void)pattren
{
//    *
//   ***
//  *****
// *******
//*********
// *******
//  *****
//   ***
//    *

    NSString *lbl=@"";
    int n =5;
    int spaceFlage = n-1;
    int starFlage = 1;
    for (int i = 0; i<n; i++)
    {
        for (int j = 0; j<spaceFlage; j++)
        {
            NSLog(@"");
            lbl = [lbl stringByAppendingString:@" "];
        }
        spaceFlage--;
        for (int k = 0; k<starFlage; k++) {
            NSLog(@"*");
            lbl = [lbl stringByAppendingString:@"*"];
        }
        starFlage = starFlage+2;
        NSLog(@"\n");
        lbl = [lbl stringByAppendingString:@"\n"];
    }
    
    n--;
    spaceFlage++;
    starFlage = starFlage-2;
    for (int i = 0; i<n; i++)
    {
        spaceFlage++;
        for (int j = 0; j<spaceFlage; j++)
        {
            NSLog(@"");
            lbl = [lbl stringByAppendingString:@" "];
        }
        starFlage = starFlage-2;
        for (int k = 0; k<starFlage; k++) {
            NSLog(@"*");
            lbl = [lbl stringByAppendingString:@"*"];
        }
        
        NSLog(@"\n");
        lbl = [lbl stringByAppendingString:@"\n"];
    }
    NSLog(@"%@",lbl);
    _lbl.text =lbl;
}





-(void)pattren_star
{
//    *
//   ***
//  *****
// *******
//*********


    NSString *lbl=@"";
    int n =5;
    int spaceFlage = n-1;
    int starFlage = 1;
    for (int i = 0; i<n; i++)
    {
        for (int j = 0; j<spaceFlage; j++)
        {
            NSLog(@"");
            lbl = [lbl stringByAppendingString:@" "];
        }
        spaceFlage--;
        for (int k = 0; k<starFlage; k++) {
            NSLog(@"*");
            lbl = [lbl stringByAppendingString:@"*"];
        }
        starFlage = starFlage+2;
        NSLog(@"\n");
        lbl = [lbl stringByAppendingString:@"\n"];
    }
    NSLog(@"%@",lbl);
    _lbl.text =lbl;
}


-(void)pt1
{
//    *
//    * *
//    * * *
//    * * * *
//    * * * * *
    
    NSString *lbl=@"";
    int n= 5;
    
    for (int i = 0; i<=n; ++i)
    {
        for (int j=0; j<i; ++j)
        {
            
            NSLog(@"*");
             lbl = [lbl stringByAppendingString:@"*"];
        }
        NSLog(@"\n");
        lbl = [lbl stringByAppendingString:@"\n"];
    }
    NSLog(@"%@",lbl);
    _lbl.text =lbl;
}

-(void)pt2
{
    //    1
    //    1 2
    //    1 2 3
    //    1 2 3 4
  
    
    NSString *lbl=@"";
    int n= 5;
    
    for (int i = 1; i<=n; ++i)
    {
        for (int j=1; j<i; ++j)
        {
            
            NSLog(@"*");
            lbl = [lbl stringByAppendingString:[NSString stringWithFormat:@"%d",j]];
        }
        NSLog(@"\n");
        lbl = [lbl stringByAppendingString:@"\n"];
    }
    NSLog(@"%@",lbl);
    _lbl.text =lbl;
}

-(void)pt3
{
    //    1 2 3 4 5
    //    1 2 3 4
    //    1 2 3
    //    1 2
    //    1
    
    
    NSString *lbl=@"";
    int n= 5;
    
    for (int i = 5; i>=1; --i)
    {
        for (int j=1; j<=i; ++j)
        {
            
            NSLog(@"*");
            lbl = [lbl stringByAppendingString:[NSString stringWithFormat:@"%d",j]];
        }
        NSLog(@"\n");
        lbl = [lbl stringByAppendingString:@"\n"];
    }
    NSLog(@"%@",lbl);
    _lbl.text =lbl;
}


-(void)pt4
{
//      *
//    * *
//  * * *
//* * * *
    
    NSString *lbl=@"";
    int n = 5;
    int spaceFlage = n-1;
    
    for (int i =0; i<n; i++)
    {
        for (int k = 0; k<spaceFlage; k++)
        {
            lbl = [lbl stringByAppendingString:@" "];
        }
        spaceFlage--;
        for (int j = 0; j<=i; j++)
        {
            
            lbl = [lbl stringByAppendingString:@"*"];
        }
         lbl = [lbl stringByAppendingString:@"\n"];
    }
    NSLog(@"%@",lbl);
    _lbl.text =lbl;
}


@end
