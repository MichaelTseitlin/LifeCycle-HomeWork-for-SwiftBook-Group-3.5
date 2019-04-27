//
//  Helper.swift
//  LifeCycle
//
//  Created by Michael Tseitlin on 4/27/19.
//  Copyright © 2019 Michael Tseitlin. All rights reserved.
//

import UIKit

class Helper: NSObject {
    
    static let shared = Helper()
    private var arrayOfMethods = [String]()
    
    private override init() {
        super.init()
    }
    
    func printMessage(textView: UITextView, viewController: UIViewController, function: String = #function) {
        
        arrayOfMethods.append((viewController.title ?? "nil") + " - " + (function))
        let string = arrayOfMethods.joined(separator: "\n")
        textView.text = string
        
        textViewScrollToBottom(textView)
    }
}

// MARK: - Function for autoscrolling TextView
extension Helper {
    private func textViewScrollToBottom(_ textView: UITextView) {
        let bottom = NSMakeRange(textView.text.count-1, 1)
        textView.scrollRangeToVisible(bottom)
    }
}
