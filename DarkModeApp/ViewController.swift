//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Yılmaz Karaağaç on 1/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //force THIS viewcontroller use light mode. For test, toggle dark mode
        //overrideUserInterfaceStyle = .light
        
        //For whole app, we should add UserInterfaceStyle key with Light or Dark value to Info.plist file
        
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        //For test, you should toggle dark or light modes. Settings > Developer > Dark Appearance
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.orange
        } else {
            changeButton.tintColor = UIColor.blue
        }
    }

    //If app is open and you changed dark appearance, app style changes happen by below function
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        //For test, you should toggle dark or light modes. Settings > Developer > Dark Appearance
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.orange
        } else {
            changeButton.tintColor = UIColor.blue
        }
    }
    
}

