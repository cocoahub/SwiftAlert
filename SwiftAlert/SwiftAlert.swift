//
//  SwiftAlert.swift
//  SwiftAlert
//
//  Created by Anton Schmidt Gregersen on 20/01/15.
//  Copyright (c) 2015 cocoahub.io All rights reserved.
//

import UIKit

class SwiftAlert: NSObject, UIAlertViewDelegate {
	
	private var callBack : ((Int) -> (Void))
	private let unmanaged : Unmanaged<NSObject>?
	
	 init(showWithActionClosure closure:(buttonIndex:Int) -> Void, title: String?, message: String?, cancelButtonTitle: String?, otherButtonTitle:String?...) {
		self.callBack = closure
		super.init() // To set the delegate as self we need to call its super.init() first.
		var alert = UIAlertView(title: title, message: message, delegate: self, cancelButtonTitle: cancelButtonTitle)
		
		//Add buttons from otherButtonTitle
		for (index, title) in enumerate(otherButtonTitle) {
			alert.addButtonWithTitle(title!)
		}

		self.unmanaged = Unmanaged.passRetained(self)
		
		alert.show()
	}
	
	internal func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
		self.callBack(buttonIndex)
		self.unmanaged?.release()
	}

}
