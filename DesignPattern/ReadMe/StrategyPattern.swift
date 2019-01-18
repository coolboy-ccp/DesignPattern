//
//  StrategyPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/18.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Strategy Pattern(策略模式) / Policy Pattern(政策模式)
 ** Define a family of algorithms,encapsulate each one,and make them interchangeable.
 ** （定义一组算法，将每个算法都封装起来，并且使它们之间可以互换。
 */

/*
 ** 角色
 ** 1.Context 上下文，屏蔽高层模块对策略、算法的直接访问
 ** 2.Strategy/Concrete Strategy 策略
 */

/*
 ** 优点
 ** 1.算法可以自由切换
 ** 2.避免使用多重条件判断
 ** 3.扩展性良好
 
 ** 缺点
 ** 1.策略类数量增多
 ** 2.所有的策略类都需要对外暴露
 */

/*
 ** 应用场景
 ** 1.多个类只有在算法或行为上稍有不同
 ** 2.算法需要自由切换的场景
 ** 需要屏蔽算法的场景
 */
protocol Strategy {
    func doSome()
}

class Strategy1: Strategy{
    func doSome() {
        
    }
}

class Strategy2: Strategy {
    func doSome() {
        
    }
}

class StrategyContext {
    private let strategy: Strategy
    init(_ strategy: Strategy) {
        self.strategy = strategy
    }
    
    func doAny() {
        strategy.doSome()
    }
}

