//
//  ViewController.swift
//  Calculator
//
//  Created by 樋口大樹 on 2017/03/27.
//  Copyright © 2017年 樋口大樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var number1: Int = 0 //ボタンを押した時の値が代入される
    var number2: Int = 0
    var number3: Int = 0
    
    var ope: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func select0 () {
        number1 = number1*10+0
        label.text = String(number1)
    }
    
    @IBAction func select1 () {
        number1 = number1*10+1
        label.text = String(number1)
    }
    
    @IBAction func select2 () {
        number1 = number1*10+3
        label.text = String(number1)
    }
    
    @IBAction func select3 () { //3のボタンを押した時の処理
        number1 = number1*10+3 //numer1=0なら3になるので整合性取れる。
        label.text = String(number1)
    }
    
    @IBAction func select4 () { //４のボタンを押した時の処理
        number1 = number1*10+4 //numer1=0なら3になるので整合性取れる。
        label.text = String(number1)
    }
    
    @IBAction func select5 () {
        number1 = number1*10+5
        label.text = String(number1)
    }
    
    
    @IBAction func select6 () {
        number1 = number1*10+6
        label.text = String(number1)
    }
    
    @IBAction func select7 () {
        number1 = number1*10+7
        label.text = String(number1)
    }
    
    @IBAction func select8 () {
        number1 = number1*10+8
        label.text = String(number1)
    }
    
    @IBAction func select9 () {
        number1 = number1*10+9
        label.text = String(number1)
    }
    
    @IBAction func clear() {
        number1 = 0
        number2 = 0
        number3 = 0
        ope = 0
        label.text = String(number1) //number1でなくても2でも。0が代入されれば。
    }
    
    @IBAction func plus() {
        number2=number1 //この処理をする事で、上のnumber1への代入が再利用できる。１の値を２に代入しておく。
        number1 = 0 //この後に、押したボタンの数値はnumber1に代入される。
        ope = 1
    }
    
    @IBAction func minus() {
        number2=number1 //この処理をする事で、上のnumber1への代入が再利用できる。１の値を２に代入しておく。
        number1 = 0 //この後に、押したボタンの数値はnumber1に代入される。
        ope = 2
    }

    @IBAction func kakeru() {
        number2=number1 //この処理をする事で、上のnumber1への代入が再利用できる。１の値を２に代入しておく。
        number1 = 0 //この後に、押したボタンの数値はnumber1に代入される。
        ope = 3
    }
    
    @IBAction func waru() {
        number2=number1 //この処理をする事で、上のnumber1への代入が再利用できる。１の値を２に代入しておく。
        number1 = 0 //この後に、押したボタンの数値はnumber1に代入される。
        ope = 4
    }

    @IBAction func tougou() {
        if ope == 1 {
        number3 = number1 + number2 //最初に押したボタンの数値は２に入り、次に押したボタンの数値は１に入る
        label.text = String(number3)
        }else if ope == 2{
            number3 = number2-number1
            label.text = String(number3)
        }else if ope == 3 {
            number3 = number2*number1
            label.text = String(number3)
        }else if ope == 4 {
            number3 = number2/number1
            label.text = String(number3)
        }
        
    }
}

