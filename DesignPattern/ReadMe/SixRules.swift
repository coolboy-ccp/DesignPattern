//
//  SixRules.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/14.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit


/*
 ** 单一职责原则(Single Responsibility Principle, SRP)
 ** There should never be more than one reason for a class to change
 ** 接口做到单一职责，类的设计尽量只为一个原因而变化
 */

/*
 ** 里氏替换原则(Liskov Substitution Principle, LSP)
 ** 1.If for each object o1 of type S there is an object o2 of type T such that for all programs P defined in terms of T, ther behavior of P is unchanged when o1 is substituted o2 then S is a subtype of T.
 1.如果每一个S类型的对象o1，和T类型的对象o2。在程序P中，以T定义的对象o1被o2替换后，P的行为没有发生变化。那么，S是T的子类。（子类对象d替换父类对象）
 ** 2.Functions that use pointers or references to base classes must be able to use objects of derived classes without knowing it.
 ** 2.所有父类出现的地方，子类都可以出现
 */

/*
 ** 依赖倒置原则(Dependence Inversion Principle, DIP)
 ** High level modules should not depend upon low level modules.Both should depend upon abstractions.Abstractions should not depend upon details.Details should depend upon abstractions.
 ** 高层模块不应该依赖低层模块，两者都应该依赖其抽象。抽象不应该依赖细节，细节应该依赖抽象。
 */

/*
 ** 接口隔离原则(Interface Segregation Principle)
 ** 1.Clients should not be forced to depend upon interfaces that they don't use.
 ** 1.客户端不应该依赖它不需要使用的接口。
 ** 2.The dependency of one class to another one should depend on the smallest possible interface.
 ** 2.类间的依赖关系应该建立在最小的接口上
 */

/*
 ** 迪米特法则(Law of Demeter, LoD) or 最少知识原则(Least Knowledge Principle, LKP)
 ** Only talk to your immediate friends
 ** 一个对象应该对其他对象有最少的了解。
 */

/*
 ** 开闭原则
 ** Software entities like classes, modules and functions should be open for extension but closed for modificattions.
 ** 软件实体如类、模块和函数应该开放扩展，关闭修改。
 */
