//
//  ViewController.swift
//  TestTest
//
//  Created by 鄭淳澧 on 2021/6/26.
//

import UIKit

class Sample {
    var a = 0
    var b = 0
    
    init(_ a: Int, _ b: Int) {
        self.a = a
        self.b = b
    }
    
    func add() -> Int {
        return (a + b)
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var lblText: UITextField!
    
    @IBAction func btnRun(_ sender: Any) {
        let obj = Sample(12, 8)
        lblText.text = "\(obj.add())"
    }
    
    @IBOutlet weak var lbl2Text: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func plus(_ a: Int?, _ b: Int?) -> Int? {
        guard let numberA = a, let numberB = b else {return nil}
        return numberA + numberB
    }
    
    func changeWording(_ wording: String) {
        lbl2Text.text = wording
    }
}

