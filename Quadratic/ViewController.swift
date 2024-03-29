//
//  ViewController.swift
//  Quadratic
//
//  Created by David Mattia on 9/30/14.
//  Copyright (c) 2014 David Mattia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var xx: UITextField!
    @IBOutlet weak var x: UITextField!
    @IBOutlet weak var x0: UITextField!
    @IBOutlet weak var solution1: UILabel!
    @IBOutlet weak var solution2: UILabel!
    @IBOutlet weak var quad: UILabel!
   
    @IBAction func Solve(sender: AnyObject) {
        var a:Double = Double(xx.text.toInt()!)
        var b:Double = Double(x.text.toInt()!)
        var c:Double = Double(x0.text.toInt()!)
        let det = b * b - 4 * a * c
        if (det >= 0) {
            let sqt = sqrt(det)
            let sol1 = (-b + sqt) / (2 * a)
            let sol2 = (-b - sqt) / (2 * a)
            solution1.text = "\(sol1)"
            solution2.text = "\(sol2)"
        } else {
            let d = -det;
            let sqt = sqrt(d)
            let realPart = -b / (2*a)
            let imagPart = abs(sqt / (2*a))
            solution1.text = "\(realPart) + \(imagPart)i"
            solution2.text = "\(realPart) - \(imagPart)i"
           
        }
    }
    


}

