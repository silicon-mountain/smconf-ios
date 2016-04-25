//
//  QASessionsViewController.swift
//  trySwift
//
//  Created by Natasha Murashev on 2/11/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class QASessionsViewController: ButtonBarPagerTabStripViewController {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        title = "Q&A"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonBarView.registerNib(UINib(nibName: "NavTabButtonCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        buttonBarView.backgroundColor = UIColor.whiteColor()
        buttonBarView.selectedBar.backgroundColor = UIColor.trySwiftAccentColor()
        
        moveToCorrectDate()
    }
    
    override func viewControllersForPagerTabStrip(pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        let qaSessionDay1ViewController = QASessionsTableViewController()
        qaSessionDay1ViewController.dataSource = QASessionDataSourceDay1()
        
        
        
        return [qaSessionDay1ViewController]
    }
}

private extension QASessionsViewController {
    
    func moveToCorrectDate() {
        let today = NSDate.today()
        
        let day2 = NSDate.date(year: 2016, month: 3, day: 3)
        if today == day2 {
            moveToViewControllerAtIndex(1)
        }
        
        let day3 = NSDate.date(year: 2016, month: 3, day: 4)
        if today == day3 {
            moveToViewControllerAtIndex(2)
        }
    }
}
