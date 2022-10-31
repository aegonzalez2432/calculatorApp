//
//  ViewController.swift
//  Calculator
//
//  Created by Consultant on 10/29/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayScreen: UILabel!
    @IBOutlet weak var clearButton: UIButton!
    
    @IBOutlet weak var buttonNum1: UIButton!
    
    @IBOutlet weak var buttonNum2: UIButton!
    
    @IBOutlet weak var buttonNum3: UIButton!
    
    @IBOutlet weak var buttonNum0: UIButton!
    
    @IBOutlet weak var buttonNum4: UIButton!
    @IBOutlet weak var buttonNum5: UIButton!
    
    @IBOutlet weak var buttonNum6: UIButton!
    @IBOutlet weak var buttonNum7: UIButton!
    @IBOutlet weak var buttonNum8: UIButton!
    
    @IBOutlet weak var buttonNum9: UIButton!
    @IBOutlet weak var multButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var subButton: UIButton!
    @IBOutlet weak var divButton: UIButton!
    @IBOutlet weak var decimalButton: UIButton!
    
    @IBOutlet weak var equalButton: UIButton!
    
    
    var addMeUp: [Any] = []
    var dispNum: String = ""
    var mathEq: String = ""
    enum parser {
        case addition
        case subtraction
        case division
        case multiplication
    }
    func calcTotal(str: String) -> String {

        let equation = NSExpression(format: str)
        let answer = equation.expressionValue(with: nil, context: nil) as? Double
        if let unwrapMe = answer {
            self.dispNum = "\(unwrapMe)"
            self.mathEq = "\(unwrapMe)"
            return "\(dispNum)"
        }
        return "\(self.dispNum)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func clearButtonHit(_ sender: Any) {
        self.displayScreen.text = "0"
        self.addMeUp = []
        self.dispNum = ""
        self.mathEq = ""
    }
    //numbers are added to screen display and math eq
    //
    @IBAction func num1Hit(_ sender: Any) {
        self.dispNum.append("1")
        self.mathEq.append("1")

        self.displayScreen.text = "\(dispNum)"
    }
    @IBAction func num2Hit(_ sender: Any) {
        self.dispNum.append("2")
        self.mathEq.append("2")

        self.displayScreen.text = "\(dispNum)"
    }
    @IBAction func num3Hit(_ sender: Any) {
        self.dispNum.append("3")
        self.mathEq.append("3")

        self.displayScreen.text = "\(dispNum)"
    }
    @IBAction func num4Hit(_ sender: Any) {
        self.dispNum.append("4")
        self.mathEq.append("4")

        self.displayScreen.text = "\(dispNum)"
    }
    @IBAction func num5Hit(_ sender: Any) {
        self.dispNum.append("5")
        self.mathEq.append("5")

        self.displayScreen.text = "\(dispNum)"
    }
    @IBAction func num6Hit(_ sender: Any) {
        self.dispNum.append("6")
        self.mathEq.append("6")

        self.displayScreen.text = "\(dispNum)"
    }
    @IBAction func num7Hit(_ sender: Any) {
        self.dispNum.append("7")
        self.mathEq.append("7")

        self.displayScreen.text = "\(dispNum)"
    }
    @IBAction func num8Hit(_ sender: Any) {
        self.dispNum.append("8")
        self.mathEq.append("8")

        self.displayScreen.text = "\(dispNum)"
    }
    
    @IBAction func num9Hit(_ sender: Any) {
        self.dispNum.append("9")
        self.mathEq.append("9")

        self.displayScreen.text = "\(dispNum)"
    }
    @IBAction func num0Hit(_ sender: Any) {
        self.dispNum.append("0")
        self.mathEq.append("0")

        self.displayScreen.text = "\(dispNum)"
    }
    @IBAction func addHit(_ sender: Any) {
        //self.addMeUp.append(num)
        dispNum = ""
        self.mathEq.append("+")
        //self.addMeUp.append(ViewController.parser.addition)
        
    }
    @IBAction func subHit(_ sender: Any) {
        self.addMeUp.append(dispNum)
        dispNum = ""
        self.mathEq.append("-")
        //self.addMeUp.append(ViewController.parser.subtraction)
    }
    
    @IBAction func multHit(_ sender: Any) {
        self.addMeUp.append(dispNum)
        dispNum = ""
        self.mathEq.append("*")
        //self.addMeUp.append(ViewController.parser.multiplication)
    }
    @IBAction func divHit(_ sender: Any) {
        self.addMeUp.append(dispNum)
        dispNum = ""
        self.mathEq.append("/")
        //self.addMeUp.append(ViewController.parser.division)
    }
    @IBAction func decimalHit(_ sender: Any) {
        if(dispNum.contains(".")){}else{
            self.dispNum.append(".")
            self.mathEq.append(".")
            self.displayScreen.text = "\(dispNum)"
        }
    }
    @IBAction func equalHit(_ sender: Any) {
        self.displayScreen.text = calcTotal(str: mathEq)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

