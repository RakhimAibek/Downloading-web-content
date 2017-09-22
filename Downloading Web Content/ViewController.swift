//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Aibek Rakhim on 9/13/17.
//  Copyright © 2017 Next Step. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webVIew: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://stackoverflow.com") {
            
            let request = NSMutableURLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) { data, response, error in
                
                if error != nil {
                    
                    print(error?.localizedDescription)
                    
                } else {
                    
                    if let data = data {
                        
                        let dataString = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
                        print(dataString!)
                        
                        DispatchQueue.main.sync(execute: { 
                            // Update UI
                            
                        })
                    }
                }
            }
            task.resume()
        }
        
    }

}

