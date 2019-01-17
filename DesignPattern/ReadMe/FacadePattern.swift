//
//  FacadePattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/17.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Facade Pattern(外观模式)
 ** Provide a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use.
 ** 为子系统中的一组接口提供一个统一的接口。门面模式提供一个高层次的接口，使得子系统更易于使用。
 */

/*
 ** 角色
 ** 1.facade 门面
 ** 2.subsystem 子系统
 */

/*
 ** 优点
 ** 1.减少系统的相互依赖
 ** 2.提高了灵活性
 ** 3.提高安全性
 
 ** 缺点
 ** 1.不符合开闭原则
 */

/*
 ** 应用场景
 ** 1.为一个复杂的模块或子系统提供一个供外界访问的接口
 ** 2.子系统相对独立，外界对子系统的访问只要黑箱操作
 ** 3.预防低水平人员带来的风险扩散
 */

/******--------------subsystem--------------------***********/
class Subsystem {
    func doSome() {}
}
class Subsystem1: Subsystem {}
class Subsystem2: Subsystem {}

class Subsystem3 {
    func doSome() {
        
    }
}
/******-------------------------------------------***********/

class Facade {
    private let sub1 = Subsystem1()
    private let sub2 = Subsystem2()
    private let sub3 = Subsystem3()
    
    func doSub1() {
        sub1.doSome()
    }
    
    func doSub2() {
        sub2.doSome()
    }
    
    func doSub3() {
        sub3.doSome()
    }
}

