//
//  ViewController.swift
//  contractCalculator
//
//  Created by Min Jun Park on 4/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labortxt: UITextField!
    @IBOutlet weak var materialstxt: UITextField!
    
    @IBAction func calcbtn(_ sender: Any) {
        let labor = Double(labortxt.text!)
        let materials = Double(materialstxt.text!)
        let subtotal = labor! + materials!
        subtotalLbl.text = String(subtotal)
        
        let taxnum = 0.05
        let taxtotal = taxnum * subtotal
        taxLbl.text = String(taxtotal)
        
        let total = subtotal + taxtotal
        totalLbl.text = String(total)
    }
    @IBOutlet weak var subtotalLbl: UILabel!
    @IBOutlet weak var taxLbl: UILabel!
    @IBOutlet weak var totalLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

