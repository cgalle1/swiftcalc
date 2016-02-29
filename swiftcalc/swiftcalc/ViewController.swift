//
//  ViewController.swift
//  swiftcalc
//
//  Created by Christopher Galle on 29/02/16.
//  Copyright © 2016 Christopher Galle. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBOutlet weak var inputField: NSTextField!

    @IBAction func textEntered(sender: AnyObject) {
        
    }
    @IBOutlet weak var enterButton: NSButton!
    @IBAction func enterPressed(sender: AnyObject) {
        
//        calculatorStack.textStorage?.appendAttributedString(inputField.attributedStringValue + "\n")
        calculatorStack.textContainer?.textView?.string?.appendContentsOf(inputField.stringValue + "\n")
     //   calculatorStack.textStorage?.appendAttributedString(NSAttributedString("\n"))
    }
    @IBOutlet var calculatorStack: NSTextView!
    @IBAction func keyPressed(sender: AnyObject) {
        if(inputField.stringValue != "")
        {
            if ((Double(inputField.stringValue)) < 0){
                inputField.stringValue.appendContentsOf("NaN\n")
            }
            else
            {
                calculatorStack.textContainer?.textView?.string?.appendContentsOf(inputField.stringValue + "\n")
                inputField.stringValue = ""
            }
        }
    }
   }

