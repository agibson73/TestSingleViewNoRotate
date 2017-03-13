//
//  NoRotateViewController.swift
//  TestSingleViewNoRotate
//
//  Created by Alex Gibson on 3/13/17.
//  Copyright © 2017 AG. All rights reserved.
//

import UIKit

class NoRotateViewController: UIViewController {
    
    override var shouldAutorotate: Bool{
        get{
            return false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let testLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        testLabel.text = "I don't want to rotate"
        testLabel.sizeToFit()
        testLabel.center = self.view.center
        testLabel.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        self.view.addSubview(testLabel)
        
        self.view.backgroundColor = UIColor.yellow
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
