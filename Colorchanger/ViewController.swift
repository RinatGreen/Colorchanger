//
//  ViewController.swift
//  Colorchanger
//
//  Created by Rinat Galiev on 23.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorizedview: UIView!
    @IBOutlet weak var bluevalue: UILabel!
    @IBOutlet weak var greenvalue: UILabel!
    @IBOutlet weak var redvalue: UILabel!
    @IBOutlet weak var redslider: UISlider!
    @IBOutlet weak var blueslider: UISlider!
    @IBOutlet weak var greenslider: UISlider!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var intredvalue: Float = 0.5
    var intgreenvalue: Float = 0.5
    var intbluevalue: Float = 0.5
    
    
    @IBAction func redcolordrag(_ sender: UISlider) {
        intredvalue = redslider.value
        redvalue.text = String(Int(255*intredvalue))
        intbluevalue = blueslider.value
        bluevalue.text = String(Int(255*intbluevalue))
        intgreenvalue = greenslider.value
        greenvalue.text = String(Int(255*intgreenvalue))
        
        let viewback = UIColor(red: CGFloat(intredvalue), green: CGFloat(intgreenvalue), blue: CGFloat(intbluevalue), alpha: 0.50)
        colorizedview.backgroundColor = viewback
    }
    
}

