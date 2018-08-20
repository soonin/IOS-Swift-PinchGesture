//
//  ViewController.swift
//  IOS-Swift-PinchGesture
//
//  Created by Pooya on 2018-08-20.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewPinch: UIView!
    var pinchGesture  = UIPinchGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // PINCH Gesture
        pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.pinchedView))
        viewPinch.isUserInteractionEnabled = true
        viewPinch.addGestureRecognizer(pinchGesture)
    }

    
    @objc func pinchedView(sender:UIPinchGestureRecognizer){
        self.view.bringSubview(toFront: viewPinch)
        sender.view?.transform = (sender.view?.transform)!.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1.0
    }

}

