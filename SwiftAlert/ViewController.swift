//
//  ViewController.swift
//  SwiftAlert
//
//  Created by Anton Schmidt Gregersen on 20/01/15.
//  Copyright (c) 2015 cocoahub.io All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	@IBAction func buttonPressed(sender: UIButton) {
		
		
		SwiftAlert(showWithActionClosure: { (buttonIndex) -> Void in
			println("Button number \(buttonIndex) pressed")
			}, title: "Alert", message: "Alert message", cancelButtonTitle: "Cancel",otherButtonTitle:"Ok")

	}

}

