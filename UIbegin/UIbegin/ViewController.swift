//
//  ViewController.swift
//  UIbegin
//
//  Created by July on 14-6-25.
//  Copyright (c) 2014年 July. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label = UILabel(frame:CGRect(origin: CGPointMake(10.0, 50.0), size: CGSizeMake(150,50)))
        label.text = "This is a Label"
        self.view.addSubview(label)
        
        let btn = UIButton(frame:CGRect(origin: CGPointMake(10.0, 110.0), size: CGSizeMake(150,50)))
        btn.setTitle("button", forState: UIControlState.Normal)
        btn.backgroundColor = UIColor.orangeColor()
        btn.addTarget(self, action: "buttonClickcc:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonClickcc(sender: UIButton!){
        //直接这样创建有bug, 不知道为什么？
        //var alert = UIAlertView(title: "haha", message: "this is an alert", delegate: self, cancelButtonTitle: "cancel")
        //alert.addButtonWithTitle("cancel")
        
        var alert = UIAlertView()
        alert.title = "alert"
        alert.delegate = self
        alert.addButtonWithTitle("cancel")
        alert.message = "this is an alert"
        
        alert.show()
    }
    /*
    func alertView(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int){
        println("buttonIndex:\(buttonIndex)")
    }
    */

}

