//
//  CommandPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/15.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Command Pattern(命令模式), 命令模式是一个高内聚的模式
 ** Encapsulate a request as an object, thereby letting you parameterize clients with different requests, queue or log requests, and support undoable operations.
 ** 将一个请求封装成一个对象，从而让你使用不同的请求把客户端参数化，对请求排队或者记录请求日志，可以提供命令的撤销和恢复功能。
 */

/*
 ** 角色
 ** 1.receiver 接受者, 命令的执行者, 可以有多个
 ** 2.command 命令, 命令的声明者, 可以有多个
 ** 3.Invoker 调用者, 接受命令，并执行命令, 一个
 */

/*
 ** 优点
 ** 1.类间的解耦，调用者和接受者角色之间没有任何依赖关系
 ** 2.可扩展性，Command子类很容易扩展
 ** 3.结合其他模式更优秀。结合责任链模式，实现命令族解析任务；结合模板方法模式，减少Command子类膨胀问题。
 ** 缺点
 ** 如果有N个命令，command子类就需要有N个
 */

class Receiver {
    func doSomething() {}
}

class Receiver1: Receiver {
    override func doSomething() {
        super.doSomething()
        //do some thing
    }
}
class Receiver2: Receiver {
    override func doSomething() {
        super.doSomething()
        //do some thing
    }
}

class Command {
    private let receiver: Receiver
    
    init(_ receiver: Receiver) {
        self.receiver = receiver
    }
    
    func execute() {
        receiver.doSomething()
    }
}

class Command1: Command {}
class Command2: Command {}

class Invoker {
    private let command: Command
    
    init(_ command: Command) {
        self.command = command
    }
    
    func action() {
        command.execute()
    }
}

class Client {
    func request() {
        Invoker(Command1(Receiver1())).action()
    }
}

class CommandPattern: NSObject {

}
