//
//  ViewController.swift
//  PLSStatusBar
//
//  Created by Wani on 08/12/2018.
//  Copyright (c) 2018 Wani. All rights reserved.
//

import UIKit
import PLSFlashBar

class ViewController: UIViewController {

    let statusBar: PLSFlashBar = {
        let bar = PLSFlashBar()
        bar.text = "Demo Flash Bar"
        bar.leftImage = #imageLiteral(resourceName: "DemoIcon")
        return bar
    }()
    
    @IBAction func handleTap(_ sender: Any) {
        if statusBar.isShowing {
            statusBar.hide()
        } else {
            statusBar.show()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let navigationController = navigationController {
            statusBar.addTo(navigationController: navigationController)
        }
     
    }
}

