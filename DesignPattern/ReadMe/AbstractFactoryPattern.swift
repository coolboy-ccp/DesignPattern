//
//  AbstractFactoryPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/14.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Abstract Factory Pattern(抽象工厂模式)
 ** Provide an interface for creating families of related or dependent objects without specifying their concrete classes.
 ** 为创建一组相关或相互依赖的对象提供接口，而且无须指定它们的具体类。
 */

/*
 ** 应用场景
 ** 一个对象族（或是一组没有任何关系的对象）都有相同的约束，则可以使用抽象工厂模式。
 */

protocol AbstractFactoryPattern {
    func shareMethod()
    func doSomething()
}

extension AbstractFactoryPattern {
    func shareMethod() {
        print("shareMethod")
    }
}

class AbstractFactoryPatternA: AbstractFactoryPattern, CustomStringConvertible {
    func doSomething() {
        print("AAA")
    }
    
    var description: String {
        return String(cString: object_getClassName(self))
    }
    
    required init() {
        
    }
}

class AbstractFactoryPatternA1: AbstractFactoryPatternA{}
class AbstractFactoryPatternA2: AbstractFactoryPatternA {}


class AbstractFactoryPatternB: AbstractFactoryPattern {
    func doSomething() {
        print("BBB")
    }
    
    var description: String {
        return String(cString: object_getClassName(self))
    }
    
    required init() {
        
    }
}

class AbstractFactoryPatternB1: AbstractFactoryPatternB {}
class AbstractFactoryPatternB2: AbstractFactoryPatternB {}

class AbstractFactoryPatternFactory {
    static func creatorA<T: AbstractFactoryPatternA>(_ cls: T.Type) -> T {
        return cls.init()
    }
    
    static func creatorB<T: AbstractFactoryPatternB>(_ cls: T.Type) -> T {
        return cls.init()
    }
}



