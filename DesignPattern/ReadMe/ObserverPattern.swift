//
//  ObserverPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/17.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Observer Pattern(观察者模式) / Publish/subCribe(发布订阅模式)
 ** Define a one-to-many dependency betweeno bjects so that when one object changes state,all its dependents are notified and updated automatically.
 ** （定义对象间一种一对多的依赖关系，使得每当一个对象改变状态，则所有依赖于它的对象都会得到通知并被自动更新。
 */

/*
 ** 角色
 ** 1.Subject/ConcreteSubject 被观察者
 ** 2.Observer/ConcreteObserver 观察者
 */

/*
 ** 优点
 ** 1.观察者和被观察者之间是抽象耦合
 ** 2.建立一套触发机制
 
 ** 缺点，对开发效率和运行效率有影响
 */

/*
 ** 应用场景
 ** 1.关联行为场景。
 ** 2.事件多级触发场景。
 ** 3.跨系统的消息交换场景(消息队列)
 */

class Observer: Equatable  {
    static func == (lhs: Observer, rhs: Observer) -> Bool {
        //伪代码
        return true
    }
    
    func update(){}
}

class ConcreteObserver1: Observer {}

class ConcreteObserver2: Observer {}

protocol Subject {
    var observers: [Observer] { get }
    func add(_ observer: Observer)
    func del(_ observer: Observer)
    func notifyObservers()
}

extension Subject {
    func notifyObservers() {
        for observer in observers {
            observer.update()
        }
    }
}

class ConcreteSubject: Subject {
    var observers: [Observer] {
        return concreteobservers
    }
    
    private var concreteobservers = [Observer]()
    
    func add(_ observer: Observer) {
        concreteobservers.append(observer)
    }
    
    func del(_ observer: Observer) {
      //从数组中删除该元素
        guard let idx = observers.firstIndex(of: observer) else { return }
        concreteobservers.remove(at: idx)
    }
    
}

