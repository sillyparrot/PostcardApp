//
//  ViewController.swift
//  Postcard
//
//  Created by Alice Wang on 2014-11-21.
//  Copyright (c) 2014 Alice Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextBox: UITextField!
    @IBOutlet weak var enterMessageTextBox: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //When we press the send mail button
        messageLabel.text=enterMessageTextBox.text
        messageLabel.hidden = false
        messageLabel.textColor=UIColor.redColor()
        
        nameLabel.text=enterNameTextBox.text
        nameLabel.hidden=false
        nameLabel.textColor=UIColor.blueColor()
        
        enterNameTextBox.text=""
        enterMessageTextBox.text=""
        enterMessageTextBox.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

