//
//  ViewController.swift
//  LifeCycle
//
//  Created by Michael Tseitlin on 4/27/19.
//  Copyright © 2019 Michael Tseitlin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var greenLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Helper.shared.printMessage(textView: greenLabel, viewController: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Helper.shared.printMessage(textView: greenLabel, viewController: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Helper.shared.printMessage(textView: greenLabel, viewController: self)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        Helper.shared.printMessage(textView: greenLabel, viewController: self)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        Helper.shared.printMessage(textView: greenLabel, viewController: self)
    }
}

