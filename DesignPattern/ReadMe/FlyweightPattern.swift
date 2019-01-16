//
//  FlyweightPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/15.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Flyweight Pattern(享元模式)，池技术的重要实现方式
 ** Use sharing to support large numbers of fine-grained objects efficiently.
 ** 使用共享对象可有效地支持大量的细粒度的对象
 
 ** 要求d细粒度对象，那么不可避免的使得对象数量多，且性质相近，将对象的信息分为两个部分：内部状态(intrinsic), 外部状态(extrinstic)
 *** 内部状态: 对象可共享出来的信息，存储在享元对象内部并且不会随环境改变而改变。
 *** 外部状态: 对象得以依赖的一个标记，是随环境改变而改变的，不可以共享的状态
 */

/*
 ** 角色
 ** flyweight 抽象享元角色
 ** concrete flyweight 具体享元角色
 ** unshared conctrte flyweight 不可共享的享元角色
 ** flyweight factory 享元工厂
 */

/*
 ** 使用场景
 ** 1.系统中存在大量的相似对象
 ** 2.细粒度的对象都具备接近的外部状态，而且内部状态与环境无关，也就是说对象没有特定身份。
 ** 3.需要缓冲池的场景
 */

class Flyweight {
    var instrinsic = ""
    let extrinsic: String
    func operate(){ }
    init(_ extrinsic: String) {
        self.extrinsic = extrinsic
    }
}

class ConcreteFlyweight: Flyweight {
    override func operate() {
        super.operate()
        //do something
    }
}

class ConcreteFlyweight1: Flyweight {
    override func operate() {
        super.operate()
        //do something
    }
}

class FlyweightFactory {
    private var pool = [String : Flyweight]()
    func flyweight(_ extrinsic: String) -> Flyweight {
        if let poolFw = pool[extrinsic] {
            return poolFw
        }
        let flyweight = ConcreteFlyweight(extrinsic)
        pool[extrinsic] = flyweight
        return flyweight
    }
}

