//
//  ProxyPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/15.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Proxy Pattern(代理模式)
 ** Provide a surrogate(代理) or placeholder for another object to control access to it.
 ** 为其他对象提供一种代理以控制对这个对象的访问
 */

/*
 ** 优点
 ** 1.职责清晰, 被代理类只用实现业务逻辑，不关心其他非本职工作
 ** 2.高扩展性，代理实现类不管如何变化，都必须实现代理接口(方法)
 ** 3.智能化，动态代理
 */

protocol ProxyPattern {
    func printSelf()
}

class ProxyPatternA: ProxyPattern {
    func printSelf() {
        print("ProxyPatternA")
    }
}

class ProxyPatternB: ProxyPattern {
    func printSelf() {
        print("ProxyPatternB")
    }
}



