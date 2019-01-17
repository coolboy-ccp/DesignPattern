//
//  VisitorPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/16.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Visitor Pattern(访问者模式)
 ** Represent an operation to be performed on the elements of an object structure.Visitor lets you define a new
    operation without changing the classes of the elements on which it operates.
 ** 封装一些作用于某种数据结构中的各元素的操作，它可以在不改变数据结构的前提下定义作用于这些元素的新的操作。
 */

/*
 ** 角色
 ** 1.Visitor 访问者
 ** 2.Concrete visitor 具体访问者
 ** 3.Element 元素
 ** 4.Concrete Element 具体元素
 ** 5.Object struture 结构对象
 */

/*
 ** 优点
 ** 1.符合单一职责原则
 ** 2.优秀的扩展性
 ** 3.灵活性非常高
 
 ** 缺点
 ** 1.具体元素对访问者公布细节（不符合迪米特法则）
 ** 2.具体元素变更比较困难
 ** 3.违背了依赖倒置原则
 */

/*
 ** 应用场景
 ** 1.一个对象结构包含很多类对象，它们有不同的接口，而你想对这些对象实施一些依赖于其具体类的操作，也就说是用迭代器模式已经不能胜任的情景。
 ** 2.需要对一个对象结构中的对象进行很多不同并且不相关的操作，而你想避免让这些操作“污染”这些对象的类。
 
 ***业务规则要求遍历多个不同的对象。这本身也是访问者模式出发点，迭代器模式只能访问同类或同接口的数据（当然了，如果你使用instanceof，那么能访问所有的数据，这没有争论），而访问者模式是对迭代器模式的扩充，可以遍历不同的对象，然后执行不同的操作，也就是针对访问的对象不同，执行不同的操作。访问者模式还有一个用途，就是充当拦截器（Interceptor）角色。
 */

class Employee {
    let name: String
    let salary: Int
    
    init(_ name: String, _ salary: Int) {
        self.name = name
        self.salary = salary
    }
    
    func accept(_ visitor: Visitorable) {
        visitor.visit(self)
    }
}

class CommonEmployee: Employee {
    let job: String
    init(_ name: String, _ job: String, _ salary: Int) {
        self.job = job
        super.init(name, salary)
        
    }
}

class ManagerEmployee: Employee {
}

protocol Visitorable {
    func visit(_ emp: Employee)
    var totalSalary: Int { get }
}

class Visitor1: Visitorable {
    private var total: Int = 0
    func visit(_ emp: Employee) {
        total += emp.salary
    }
    
    var totalSalary: Int {
        return total
    }
}

class VisitorClient {
    func visitor() {
        let visitor1 = Visitor1()
        mockEmployees().map { $0.accept(visitor1) }
        print(visitor1.totalSalary)
    }
}

func mockEmployees() -> [Employee] {
    return [CommonEmployee("emp1","java", 18), CommonEmployee("emp2","python", 18), ManagerEmployee("emp3", 18)]
}
