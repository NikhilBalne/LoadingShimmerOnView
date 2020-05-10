//
//  ViewController.swift
//  LoadingShimmerOnView
//
//  Created by Nikhil Balne on 10/05/20.
//  Copyright © 2020 Nikhil Balne. All rights reserved.
//

import UIKit
import LoadingShimmer

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        LoadingShimmer.startCovering(view, with: nil)
        
        let delayTime = DispatchTime.now() + 3.0
        
        DispatchQueue.main.asyncAfter(deadline: delayTime, execute: {
            LoadingShimmer.stopCovering(self.view)
        })
        
    }

    @IBAction func startButtonTapped(_ sender: Any) {
        LoadingShimmer.startCovering(view, with: nil)
    }
    
    @IBAction func stopButtonTapped(_ sender: Any) {
        LoadingShimmer.stopCovering(view)
    }
}

