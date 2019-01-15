//
//  FactoryPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/14.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Define an interface for creating an object, but let subclasses decide which class to instantiate.Factory method lets a class defer instantiation to subclass.
 ** 定义一个用于创建对象的接口，让子类决定实例化哪一个类。工厂方法使一个类的实例化延迟到子类。
 */

class FactoryPattern: CustomStringConvertible {
    var description: String {
        return String(cString: object_getClassName(self))
    }
    
    required init() { }
}

class FactoryPatternSub1: FactoryPattern {}

class FactoryPatternSub2: FactoryPattern {}

class FactoryPatternCreator {
    static func creator<T: FactoryPattern>(_ cls: T.Type) -> T {
        return cls.init()
    }
}

func FactoryPatternCreatorTest() {
    let sub1 = FactoryPatternCreator.creator(FactoryPatternSub1.self)
    let sub2 = FactoryPatternCreator.creator(FactoryPatternSub2.self)
    print(sub1,"---", sub2)
}

