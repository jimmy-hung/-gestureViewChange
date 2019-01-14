//
//  SecondCustomSegue.swift
//  CustomSegues
//
//  Created by Gabriel Theodoropoulos on 20/12/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

import UIKit

class SecondCustomSegue: UIStoryboardSegue {
   
    override func perform() {
        var firstVCView = source.view as UIView!
        var thirdVCView = destination.view as UIView!
        
        let window = UIApplication.shared.keyWindow
        window?.insertSubview(thirdVCView!, belowSubview: firstVCView!)
        
        thirdVCView!.transform = (thirdVCView?.transform.scaledBy(x: 0.001, y: 0.001))!
            //CGAffineTransformScale(thirdVCView!.transform, 0.001, 0.001)
        
        
        UIView.animate(withDuration: 0.5, animations: { () -> Void in
            firstVCView!.transform = (firstVCView?.transform.scaledBy(x: 0.001, y: 0.001))!
            
            }) { (Finished) -> Void in
                
                UIView.animate(withDuration: 0.5, animations: { () -> Void in
                    thirdVCView!.transform = .identity
                    
                    }, completion: { (Finished) -> Void in
                        
                        firstVCView!.transform = CGAffineTransform.identity
                        self.source.present(self.destination as UIViewController, animated: false, completion: nil)
                })
        }
        
    }
    
}
