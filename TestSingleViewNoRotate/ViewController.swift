//
//  ViewController.swift
//  TestSingleViewNoRotate
//
//  Created by Alex Gibson on 3/13/17.
//  Copyright © 2017 AG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //add our second window and send to back
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate{
            //make main clear
            appDelegate.window?.backgroundColor = UIColor.clear
            appDelegate.nonRotatingWindow = UIWindow(frame: (appDelegate.window?.bounds)!)
            appDelegate.nonRotatingWindow?.windowLevel = UIWindowLevelNormal - 5
            appDelegate.nonRotatingWindow?.layer.zPosition = (appDelegate.window?.layer.zPosition)! - 5
            let dummyController = NoRotateViewController()
            appDelegate.nonRotatingWindow?.rootViewController = dummyController
            appDelegate.nonRotatingWindow?.backgroundColor = dummyController.view.backgroundColor
            appDelegate.nonRotatingWindow?.makeKeyAndVisible()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

