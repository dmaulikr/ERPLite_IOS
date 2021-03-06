//
//  MapViewController.swift
//  ERPLite
//
//  Created by RInz on 14-9-10.
//  Copyright (c) 2014年 RInz. All rights reserved.
//

import UIKit

@objc(MapViewControllerDelegate)
protocol MapViewControllerDelegate{
    func MapViewControllerDidBack(controller : MapViewController)
}

class MapViewController: UIViewController{
    
    @IBOutlet var pinchGesture: UIPinchGestureRecognizer!
    var delegate : MapViewControllerDelegate?
    
    override func viewDidLoad() {
        pinchGesture.addTarget(self, action:"pinchView")
        self.view.addGestureRecognizer(pinchGesture)
    }
    
    @IBAction func Back(sender: AnyObject) {
        delegate?.MapViewControllerDidBack(self)
    }
    
    func pinchView(pinchGestureRecognizer:UIPinchGestureRecognizer){
    }
}