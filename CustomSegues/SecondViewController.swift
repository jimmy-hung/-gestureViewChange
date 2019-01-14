//
//  SecondViewController.swift
//  CustomSegues
//
//  Created by Gabriel Theodoropoulos on 20/12/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!
    
    var message: NSString!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        var swipeGestureRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(SecondViewController.showFirstViewController))
        swipeGestureRecognizer.direction = UISwipeGestureRecognizer.Direction.down
        self.view.addGestureRecognizer(swipeGestureRecognizer)
        
        
        lblMessage.text = message as! String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "idFirstSegueUnwind" {
            let firstViewController = segue.destination as! ViewController
            firstViewController.lblMessage.text = "You just came back from the 2nd VC"
        }
    }
    
    @objc func showFirstViewController() {
        self.performSegue(withIdentifier: "idFirstSegueUnwind", sender: self)
    }
    
}
