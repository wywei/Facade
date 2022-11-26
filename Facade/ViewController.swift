//
//  ViewController.swift
//  Facade
//
//  Created by 王亚威 on 2022/11/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 普通代码
        let s1 = Stock1()
        let s2 = Stock2()
        let s3 = Stock3()
        let n = NationalDebt1()
        let r = Realty1()
        
        s1.Buy()
        s1.Sell()
        s2.Buy()
        s2.Sell()
        s3.Buy()
        s3.Sell()
        n.Buy()
        n.Sell()
        r.Buy()
        r.Sell()
        
        
        // 外观模式
        let f = Fund()
        f.sellFund()
        f.buyFund()
    }

}

class Stock1 {
    
    // 卖股票
    func Sell() {
        print("股票1卖出")
    }
    
    // 买股票
    func Buy() {
        print("股票1买入")
    }
 
}

class Stock2 {
    
    // 卖股票
    func Sell() {
        print("股票2卖出")
    }
    
    // 买股票
    func Buy() {
        print("股票2买入")
    }
 
}


class Stock3 {
    
    // 卖股票
    func Sell() {
        print("股票3卖出")
    }
    
    // 买股票
    func Buy() {
        print("股票3买入")
    }
    
}


class NationalDebt1 {
    
    // 卖国债
    func Sell() {
        print("国债卖出")
    }
    
    // 买国债
    func Buy() {
        print("国债买入")
    }
 
}

class Realty1 {
    
    // 卖房地产
    func Sell() {
        print("房地产卖出")
    }
    
    // 买房地产
    func Buy() {
        print("房地产买入")
    }
 
}


// 外观模式
class Fund {
    private var s1: Stock1!
    private var s2: Stock2!
    private var s3: Stock3!
    private var n: NationalDebt1!
    private var r: Realty1!
    init() {
        self.s1 = Stock1()
        self.s2 = Stock2()
        self.s3 = Stock3()
        self.n = NationalDebt1()
        self.r = Realty1()
    }

    func buyFund() {
        s1.Buy()
        s2.Buy()
        s3.Buy()
        n.Buy()
        r.Buy()
    }
    
    func sellFund() {
        s1.Sell()
        s2.Sell()
        s3.Sell()
        n.Sell()
        r.Sell()
    }

}
