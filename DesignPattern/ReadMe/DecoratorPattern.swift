//
//  DecoratorPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/18.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Decorator Pattern(装饰模式)
 ** Attach additional responsibilities to an object dynamically keeping the same interface. Decorators provide a flexible alternative to subclassing for extending functionality.
 ** 动态地给一个对象添加一些额外的职责。就增加功能来说，装饰模式相比生成子类更为灵活。
 */

/*
 ** 角色
 ** 1.Component/Concrete Component 组件
 ** 2.Decorator/Concrete Decorator 装饰
 */

/*
 ** 优点
 ** 1.装饰类和被装饰类可以独立发展，不会相互耦合。
 ** 2.装饰模式是继承关系的一个替代方案。
 ** 3.装饰模式可以动态的扩展一个实现类的功能。
 
 ** 缺点， 多层的装饰是比较复杂的。
 */

/*
 ** 应用场景
 ** 1.动态地给一个对象增加功能，这些功能可以再动态地撤销。
 ** 2.需要为一批的兄弟类进行改装或加装功能。
 */

protocol Component {
    func componentAction()
}

class ConcreteComponent: Component {
    func componentAction() {
        
    }
}

class Decorator: Component {
    func newAction() {}
    func componentAction() {
        newAction()
    }
}

