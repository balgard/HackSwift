//
//  ViewController.swift
//  HackSwift
//
//  Created by Balgard on 1/10/17.
//  Copyright © 2017 Balgard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var waldoView: UIView!
    @IBOutlet weak var waldo: UIImageView!
    @IBOutlet var background: UIView!
    var wasTapped = false

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTapped(_ sender: UITapGestureRecognizer) {
        if waldoView.frame.contains(sender.location(in: background))
        {
            print("You Win")
            wasTapped = true
        }

    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.backgroundColor = UIColor.clear
        sender.setTitleColor(UIColor.clear, for: .normal)
        DispatchQueue.main.asyncAfter(deadline: .now() + 10, execute:
            {
                self.resignFirstResponder()
                if(self.wasTapped == false)
                {
                    sender.backgroundColor = UIColor.white
                    sender.setTitleColor(UIColor.blue, for: .normal)
                    print("You Lost")
                }
        })
    }
    
}

