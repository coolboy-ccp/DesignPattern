//
//  InterpreterPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/16.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Interpreter Pattern(解释器模式)，是一种按照特定语法进行解析的方案(很少使用的模式)
 ** Given a language, define a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language.
 ** 给定一门语言，定义它的文法的一种表示。定义一个解释器，表示解释语言中的句子。
 
 *****ps:尽量不要在模块中使用解释器模式
 */

/*
 ** 解释器模式共有三种对象：
 ** 1.语言，即你输入的或者说需要翻译的部分是什么
 ** 2.文法，即你用什么方式、方法翻译改语言。
 ** 3.解释器对象，即该对象包括了多种文法，只需调用该对象进行解释
 */

/*
 ** 优点，扩展性强
 ** 缺点
 ** 1.引起类膨胀
 ** 2.递归调用
 ** 3.y效率问题
 */

/*
 ** 使用场景
 ** 1.重复发生的问题
 ** 2.一个简单的语法需要解释的场景，文法规则越多，复杂度越高
  */

protocol Expression {
    func interpreter(_ value: [String : Int]) -> Int
}

class VarExpression: Expression {
    private let key: String
    init(_ key: String) {
        self.key = key
    }
    
    func interpreter(_ value: [String : Int]) -> Int {
        return value[key]!
    }
}

class SysbolExpression: Expression {
    let left: Int
    let right: Int
    
    init(_ left: Int, _ right: Int) {
        self.left = left
        self.right = right
    }
    
    func interpreter(_ value: [String : Int]) -> Int {
        return 0
    }
}

class AddSysbolExpression: SysbolExpression {
    override func interpreter(_ value: [String : Int]) -> Int {
        return left + right
    }
}

class InterpreterPattern: NSObject {

}
