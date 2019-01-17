//
//  StatePattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/16.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** State Pattern(状态模式)
 ** 当一个对象内在状态改变时允许其改变行为，这个对象看起来像改变了其类。（类的行为是基于它的状态改变的）
 */

/*
 ** 角色
 ** state 状态
 ** concrete state 具体状态
 ** context 环境
 
 *** 把状态对象声明为静态常量
 *** context具有状态抽象角色定义的所有行为
 */

/*
 ** 优点
 ** 1.结构清晰
 ** 2.遵循设计原则，开闭原则和单一职责
 ** 3.封装性非常好
 
 ** 缺点，子类会太多，也就是类膨胀
 */

/*
 ** 应用
 ** 1.行为随状态改变而改变的场景
 ** 1.条件、分支判断语句的替代者
 
 */

protocol State {
    func action()
}

class State1: State {
    func action() {
        //do ...
    }
}

class State2: State {
    func action() {
        //do ...
    }
}

class Context {
    var currentState: State = Context.state1
    static let state1 = State1()
    static let state2 = State2()
    init() {
    }
    
    func action() {
        currentState.action()
    }
}

class StateClient {
    func demo() {
        let ctx = Context()
        ctx.action()
    }
}
