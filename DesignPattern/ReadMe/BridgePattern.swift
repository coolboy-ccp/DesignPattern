//
//  BridgePattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/16.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Bridge Pattern(桥接模式)
 ** Decouple an abstraction from its implementation so that the two can vary independently.
 ** 将抽象和实现解耦，使得两者可以独立变化。
 */

/*
 ** 角色
 ** Abstraction 抽象
 ** Implementor 实现
 ** Refined Abstraction 抽象修正
 ** Concrete Implementor 具体实现
 */

/*
 **
 现需要提供大中小3种型号的画笔，能够绘制5种不同颜色，如果使用蜡笔，我们需要准备3*5=15支蜡笔，也就是说必须准备15个具体的蜡笔类。而如果使用毛笔的话，只需要3种型号的毛笔，外加5个颜料盒，用3+5=8个类就可以实现15支蜡笔的功能。实际上，蜡笔和毛笔的关键一个区别就在于笔和颜色是否能够分离
 所以桥梁模式的精髓就是尽量使用聚合/组合来实现弱关联
 */

/*
 ** 优点
 ** 1.抽象和实现分离，解决继承的缺点而提出的设计模式
 ** 2.优秀的扩充能力
 ** 3.实现细节对客户透明，可以对用户隐藏实现细节
 */

protocol Implementor {
    func doSomething()
    func doAnyThing()
}

class ConcreteImplementor: Implementor {
    func doSomething() {}
    func doAnyThing() {}
}

class Abstraction {
    let imp: Implementor
    init(_ imp: Implementor) {
        self.imp = imp
    }
    
    func request() {
        imp.doSomething()
    }
}

class RefinedAbstraction: Abstraction {
    override func request() {
        //修正业务
        super.request()
        imp.doAnyThing()
    }
}

