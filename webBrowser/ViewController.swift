//
//  ViewController.swift
//  webBrowser
//
//  Created by Sol on 2/9/23.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate{
    var webView: WKWebView!
        
        override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView()
            webView.navigationDelegate = self
            view = webView
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let myURL = URL(string:"https://www.apple.com")
               let myRequest = URLRequest(url: myURL!)
               webView.load(myRequest)
        webView.allowsBackForwardNavigationGestures = true
    }


}

