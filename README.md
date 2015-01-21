# SwiftAlert
Repository for the SwiftAlert class to quickly display and handle a UIAlertView.
<br>
From [this](http://www.cocoahub.io/swift/uialertview-with-blocks-in-swift/) blog post at [cocoahub.io](www.cocoahub.io)

#Usage
Import <code>SwiftAlert.swift</code> into your Xcode project. <br>
Then show the alert view
<code>
SwiftAlert(showWithActionClosure: { (buttonIndex) -> Void in <br>
			println("Button number \(buttonIndex) pressed") <br>
			}, title: "Alert", message: "Alert message", cancelButtonTitle: "Cancel",otherButtonTitle:"Ok")<br>
</code>
