//
//  TemplateMethodPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/14.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Template Method Pattern(模板方法模式)
 ** Define the skeleton of an algorithm in an operation, deferring some steps to subclass.Template method lets subclass redefine certain steps of an algorithm without changing the algorithm's structure.
 ** 定义一个操作中的算法框架，将一些步骤延迟到子类中。子类在不改变算法结构的情况下就可以重定义某些特定的步骤。
 */

/*
 ** 优点
 ** 1.封装不变部分，扩展可变部分
 ** 2.提取公共部分代码，便于维护
 ** 3.行为由父类控制，子类实现
 */

/*
 ** 应用场景
 ** 1.多个子类有共有的方法，并且逻辑基本相同时
 ** 2.重要、复杂的算法，可以把核心算法设计为模板算法，周边的相关细节功能则由各个子类实现
 ** 3.重构时，把相同的代码提取到父类中，然后通过钩子函数约束其行为。
 ** 钩子方法: 子类的一个方法的返回值决定公共部分的执行结果(下面的isHook)
 */

class TemplateMethodPattern {
    fileprivate func stpe1() {}
    fileprivate func step2() {}
    fileprivate func isHook() -> Bool {
        return false
    }
    
    private func hook() {
        if isHook() {
            print("hook")
        }
    }
    
    final func template() {
        stpe1()
        hook()
        step2()
    }
}

class TemplateMethodPattern1: TemplateMethodPattern {
    override func stpe1() {
        print("TemplateMethodPattern1 step1")
    }
    
    override func step2() {
        print("TemplateMethodPattern1 step2")
    }
    
    override func isHook() -> Bool {
        return true
    }
}

class TemplateMethodPattern2: TemplateMethodPattern {
    override func stpe1() {
        print("TemplateMethodPattern2 step1")
    }
    
    override func step2() {
        print("TemplateMethodPattern2 step2")
    }
    
    override func isHook() -> Bool {
        return false
    }
}
