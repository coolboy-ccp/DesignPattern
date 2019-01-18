//
//  MementoPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/16.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Memento Pattern(备忘录模式)
 ** Without violating encapsulation, capture and externalize an object's internal state so that the object can be restored to this state later.
 ** 在不破坏封装性的前提下，捕获一个对象的内部状态，并在该对象之外保存这个状态。这样以后就可将该对象恢复到原先保存的状态。
 ** 备忘录模式就是一个对象的备份模式
 */

/*
 ** 角色
 ** 1.originator 发起人, 记录当前时刻的内部状态，负责定义哪些属于备份范围的状态，负责创建和恢复备忘录数据。
 ** 2.memento 备忘录, 负责存储origininator对象的内部状态，在需要的时候提供发起人需要的内部状态
 ** 3.caretaker 备忘录管理员
 */

/*
 ** 使用场景
 ** 1.需要保存和恢复数据的相关场景
 ** 2.提供一个可回滚(rollback)的操作
 ** 3.需要监控的副本场景中
 ** 4.数据库连接的事物管理
 
 ** 不要在频繁建立备份的场景中使用备忘录模式（比如一个for循环中），原因有二：一是控制不了备忘录建立的对象数量；二是大对象的建立是要消耗资源的，系统的性能需要考虑。
 */

/*
 ** 实际应用
 ** 1.游戏cund
 ** 2.Command + Z
 
 */

class Originator {
    private var state = ""
    
    func createMemento() -> Memento {
        return Memento(state)
    }
    
    func restoreMemento(_ memento: Memento) {
        state = memento.state
    }
}

class Memento {
    let state: String
    init(_ state: String) {
        self.state = state
    }
}

class Caretaker {
    let memento: Memento
    init(_ memento: Memento) {
        self.memento = memento
    }
}

class MementoClient {
    func test() {
        let originator = Originator()
        let caretaker = Caretaker(originator.createMemento())
        originator.restoreMemento(caretaker.memento)
    }
}

class MementoPattern: NSObject {

}
