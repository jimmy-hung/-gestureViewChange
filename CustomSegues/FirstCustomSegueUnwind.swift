//
//  FirstCustomSegueUnwind.swift
//  CustomSegues
//
//  Created by Gabriel Theodoropoulos on 20/12/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

import UIKit

class FirstCustomSegueUnwind: UIStoryboardSegue {
 
    override func perform() {
        // Assign the source and destination views to local variables.
        var secondVCView = self.source.view as UIView!
        var firstVCView = self.destination.view as UIView!
     
        let screenHeight = UIScreen.main.bounds.size.height
        
        let window = UIApplication.shared.keyWindow
        window?.insertSubview(firstVCView!, aboveSubview: secondVCView!)
        
        
        // Animate the transition.
        UIView.animate(withDuration: 0.4, animations: { () -> Void in
            firstVCView!.frame = (firstVCView?.frame.offsetBy(dx: 0.0, dy: screenHeight))!
            secondVCView!.frame = (firstVCView?.frame.offsetBy(dx: 0.0, dy: screenHeight))! 
            
            }) { (Finished) -> Void in
                
                self.source.dismiss(animated: false, completion: nil)
        }
    }
    
}
