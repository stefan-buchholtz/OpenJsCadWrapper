//
//  ViewController.swift
//  OpenJSCad
//
//  Created by Stefan Buchholtz on 05.03.15.
//  Copyright (c) 2015 Stefan Buchholtz. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let openJsCad = NSBundle.mainBundle().URLForResource("index", withExtension: "html", subdirectory: "OpenJSCAD.org") {
            webView.mainFrameURL = openJsCad.absoluteString
        }
        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBOutlet weak var webView: WebView!

}

