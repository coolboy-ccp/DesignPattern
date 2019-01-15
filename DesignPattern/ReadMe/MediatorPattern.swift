//
//  MediatorPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/15.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Mediator Pattern(中介者模式)
 ** Define an object that encapsulates(封装) how a set of objects interact(互动). Mediator promotes loose coupling by keeping objects from referring to each other explicitly, and it lets you vary their interaction independently.
 ** 用一个中介对象封装一系列的对象交互，中介者使各对象不需要显示的相互作用，从而使其耦合松散，而且可以独立地改变他们之间的交互。
 */

/*
 ** 组成
 ** Mediator，抽象中介者角色
 ** Concrete Mediator, 具体中介者角色
 ** Colleague，同事角色。每个同事类的行为分为两种：
 *** 1.Self-Method(自发行为),处理同事类自身的行为
 *** 2.Dep-Method(依赖行为), 依赖中介者完成
 */

/*
 ** 优点, 减少类间的依赖，把原有的一对多的依赖变成了一对一的依赖，同事类只依赖中介者，减少了依赖，也降低了类间的耦合。
 ** 缺点， 中介者会膨胀得很大，而且逻辑复杂，原本N个对象直接的相互依赖关系转换为中介者和同事类的依赖关系，同事类越多，中介者的逻辑就越复杂
 */

/*
 ** 使用场景
 ** 中介者模式适用于多个对象之间紧密耦合的情况。紧密耦合的标准是：在类图中出现蜘蛛网状结构。
 ** 1.N（N>2）个对象间产生了相互依赖关系。
 ** 2.多个对象有依赖关系，但是依赖行为尚不明确或者有发送改变的可能
 ** 3.MVC框架中
 */

class Mediator {
    func doSomeA() {}
    func doSomeB() {}
}


class ClassA {
    let name = "ClassA"
    let mediator: Mediator
    init(_ mediator: Mediator) {
        self.mediator = mediator
    }
    private func selfMethodA() { }
    func depMethodA() { mediator.doSomeA() }
}

class ClassB {
    let name = "ClassB"
    let mediator: Mediator
    init(_ mediator: Mediator) {
        self.mediator = mediator
    }
    private func selfMethodB() { }
    func depMethodB() { mediator.doSomeB() }
    
}

