//
//  CompositePattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/18.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Composite Pattern(组合模式) / Part-Whole(部分整体模式)
 ** Compose objects into tree structures to represent part-whole hierarchies. Composite lets clients treat individual objects and compositions of objects uniformly.
 ** 将对象组合成树形结构以表示“部分整体”的层次结构，使得用户对单个对象和组合对象的使用具有一致性。
*/

/*
 ** 角色
 ** Component 构建角色
 ** Leaf 叶子结构
 ** Composite树枝构件
 */

/*
 ** 优点
 ** 1.高层模块调用简单
 ** 2.节点自由增加
 
 ** 缺点, 这在面向接口编程上是很不恰当的，与依赖倒置原则冲突。
 */

/*
 ** 应用场景
 ** 1.维护和展示部分整体关系的场景，如树形菜单、文件和文件夹管理。
 ** 2.从一个整体能够独立出部分模块或功能的场景
 ** 只要是树形结构，就要考虑使用组合模式，这个一定要记住，只要是要体现局部和整体的关系的时候，而且这种关系还可能比较深，考虑一下组合模式吧。
 */

class CompositeComponent: Equatable {
    static func == (lhs: CompositeComponent, rhs: CompositeComponent) -> Bool {
        //伪代码
        return true
    }
    
    func doSome() {}
}

class Leaf: CompositeComponent {}

class Composite: CompositeComponent{
    private var components = [CompositeComponent]()
    private var count = 0
    func add(_ cp: CompositeComponent) {
        components.append(cp)
        count = components.count
    }
    
    func del(_ cp: CompositeComponent) {
        guard let idx = components.firstIndex(of: cp) else { return }
        components.remove(at: idx)
        count = components.count
    }
}

extension Composite: Sequence, IteratorProtocol {
    func next() -> CompositeComponent? {
        if count < 0 {
            return nil
        }
        count -= 1
        return components[components.count - 1 - count]
    }
}

class CompositeClient {
    func test() {
        let root = Composite()
        let composite = Composite()
        root.add(composite)
        let leaf = Leaf()
        composite.add(leaf)
        
        for cp in root {
            cp.doSome()
        }
    }
}


