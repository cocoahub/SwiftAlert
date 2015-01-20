//
//  SwiftAlert.swift
//  SwiftAlert
//
//  Created by Anton Schmidt Gregersen on 20/01/15.
//  Copyright (c) 2015 Anton Schmidt Gregersen. All rights reserved.
//

import UIKit

class SwiftAlert: UIAlertView, UIAlertViewDelegate {

	private var cancelBlock : ((Int) -> (Void))?
	
	init(showWithActionClosure closure:(buttonIndex:Int) -> Void, title: String?, message: String?, cancelButtonTitle: String?, otherButtonTitle:String?...) {
		
		
		super.init(title: title, message: message, delegate: nil, cancelButtonTitle: cancelButtonTitle)
		
		// unwrap otherButtonTitle
		for (index, title) in enumerate(otherButtonTitle) {
			self.addButtonWithTitle(title!)
		}
		
		self.delegate = self
		self.show(block: closure)
		
	}
	
	required init(coder aDecoder: NSCoder) {
	    fatalError("init(coder:) has not been implemented")
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)
	}
	
	
	// Looks up in the documentation for UIAlertViewDelegate what methods are REQUIRED.
	
	func alertViewCancel(alertView: UIAlertView) {
		
		
	}
	
	func alertView(alertView: UIAlertView, didDismissWithButtonIndex buttonIndex: Int) {
		
	}
	
	func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
		self.cancelBlock!(buttonIndex)
	}
	
	
	func show(#block: (buttonIndex:Int) -> Void) {
		
		self.cancelBlock = block;
		
		super.show()
	}
	
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
