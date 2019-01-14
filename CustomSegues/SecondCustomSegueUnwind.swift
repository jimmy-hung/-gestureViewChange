//
//  SecondCustomSegueUnwind.swift
//  CustomSegues
//
//  Created by Gabriel Theodoropoulos on 20/12/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

import UIKit

class SecondCustomSegueUnwind: UIStoryboardSegue {
   
    override func perform() {
        var firstVCView = destination.view as UIView!
        var thirdVCView = source.view as UIView!
        
        let screenHeight = UIScreen.main.bounds.size.height
     
        firstVCView!.frame = (firstVCView?.frame.offsetBy(dx: 0.0, dy: screenHeight))!

        firstVCView!.transform = (firstVCView?.transform.scaledBy(x: 0.001, y: 0.001))!
        
        
        let window = UIApplication.shared.keyWindow
        window?.insertSubview(firstVCView!, aboveSubview: thirdVCView!)
        
        
        UIView.animate(withDuration: 0.5, animations: { () -> Void in
            
            thirdVCView!.transform = (thirdVCView?.transform.scaledBy(x: 0.001, y: 0.001))! 
            thirdVCView!.frame = (thirdVCView?.frame.offsetBy(dx: 0.0, dy: -screenHeight))!
            
            firstVCView!.transform = CGAffineTransform.identity
            firstVCView!.frame = (firstVCView?.frame.offsetBy(dx: 0.0, dy: -screenHeight))!
            
            }) { (Finished) -> Void in
                
                self.source.dismiss(animated: false, completion: nil)
        }
    }
    
}
