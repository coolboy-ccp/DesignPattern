//
//  BuilderPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/14.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** builder pattern(建造者模式，生成器模式)
 ** Separate the construction of a complex objects from its representation so that the same consttruction process can create different representations.
 ** 将一个复杂对象的构建与它的表示分离，使得同样的构造过程可以创建不同的表示。
 */

/*
 ** 角色
 ** product(产品类),实现了模板方法和基本方法(BenzModel, BMWModel)
 ** builder(抽象建造者), 规范产品的组建，一般由子类实现。(CarBuilder)
 ** concrete builder(具体建造者), 实现抽象类定义的所有方法，并且返回一个组建好的对象(BenzBuilder, BMWBuilder)
 ** director(导演类), 负责安排已有模块的顺序，然后告诉builder开始建造(sequence是导演规定的顺序)
 */

/*
 ** 优点
 ** 1.封装性, 客户端不必知道产品内部组成的细节
 ** 2.建造者独立，容易扩展
 ** 3.便于控制风险，建造者独立，可以逐步细化过程，而不会对其他模块产生影响
 */

/*
 ** 使用场景
 ** 1.相同的方法，不同的支持顺序，产生不同的事件结果时
 ** 2.多个部件或零件，都可以配置到一个对象中，但产生的运行结果又不相同
 ** 3.产品类非常复杂，或者产品类中的调用顺序不同产生了不同效能
 ** 4.在对象创建过程中会使用到系统中的一些其他对象。这些对象在产品对象创建过程中不易得到时。
 */

typealias CarRunAction = ()->()

class CarBuilder {
    func buildeProduct() -> CarModel {
        return CarModel()
    }
    //这个值由导演决定，但在这里为了方便测试，直接在相关子类中给出顺序
    fileprivate var sequence: [CarRunAction?] {
        return []
    }
    
}

class BenzBuilder: CarBuilder {
    private let benz = BMWModel()
    
    override var sequence: [CarRunAction?] {
        return [benz.start, benz.alarm, benz.engineBoom, benz.stop]
    }
    
    override func buildeProduct() -> CarModel {
        return benz
    }
}

class BMWBuilder: CarBuilder {
    private let benz = BMWModel()
    
    override var sequence: [CarRunAction?] {
        return [benz.start, benz.alarm, benz.engineBoom, benz.stop]
    }
    
    override func buildeProduct() -> CarModel {
        benz.sequence = sequence
        return benz
    }
}

class CarModel {
    var sequence = [CarRunAction?]()
    fileprivate var start: CarRunAction {
        return { print("\(self.selfName()) start")}
    }
    
    fileprivate var stop: CarRunAction {
        return { print("\(self.selfName()) stop")}
    }
    
    fileprivate var alarm: CarRunAction {
        return { print("\(self.selfName()) alarm")}
    }
    
    fileprivate var engineBoom: CarRunAction {
        return { print("\(self.selfName()) enginBoom")}
    }
    
    final func run() {
        for action in sequence {
            action?()
        }
    }
    
    private func selfName() -> String {
        return String(cString: object_getClassName(self))
    }
}

class BenzModel: CarModel { }

class BMWModel: CarModel { }


