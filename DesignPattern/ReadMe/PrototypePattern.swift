//
//  PrototypePattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/15.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Prototype Pattern(原型模式)
 ** Specify the kinds of objects to create using a prototypical instance, and create new objects by copying this prototype.
 ** 用原型实例指定创建对象的种类，并且通过拷贝这些原型创建新的对象。
 */

/*
 ** 优点
 ** 1.性能优良, 原型模式是在内存二进制流的copy，要比new一个对象性能好很多。特别是在一个循环体内产生大量的对象时。
 ** 2.逃避构造函数的约束， 直接在内存中拷贝， 不会执行构造函数
 */

/*
 ** 使用场景
 ** 1.资源优化场景， 类初始化需要消耗非常多的资源(数据，硬件资源)
 ** 2.性能和安全要求的场景， 通过new产生一个对象需要非常繁琐的数据准备或访问权限
 ** 3.一个对象，多个修改者。
 */

class Prototype: NSCopying {
    
    var name: String = "Prototype"
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = Prototype()
        copy.name = self.name
        return copy
    }
    
    //因为swift没有alloc， 所以用一个简单的构造函数代替一个复杂的构造函数进行深拷贝
    init() {}
    
    init(_ complex: String) {
        print("这是一个比较复杂的初始化函数")
    }
    
}
