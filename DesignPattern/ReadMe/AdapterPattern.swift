//
//  AdapterPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/18.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Adapter Pattern(适配器模式)
 ** Convert the interface of a class into another interface clients expect. Adapter lets classes work together that couldn't otherwise because of incompatible interfaces.
 ** 将一个类的接口变换成客户端所期待的另一种接口，从而使原本因接口不匹配而无法在一起工作的两个类能够在一起工作。
 */

/*
 ** 角色
 ** 1.Target 目标
 ** 2.Adaptee 源角色
 ** 3.Adapter 适配器角色
 */

/*
 ** 优点
 ** 1.适配器可以让两个没有任何关系的类在一起运行，只要适配器可以搞定它们
 ** 2.增加了类的透明性
 ** 3.提高了类的复用度
 ** 4.灵活性非常好
 */
protocol Target {
    func targetAction()
}

class Adaptee {
    func adapteeAction() {}
}

class Adapter: Target {
    private let adaptee = Adaptee()
    func targetAction() {
        adaptee.adapteeAction()
    }
}

