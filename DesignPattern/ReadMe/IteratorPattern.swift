//
//  IteratorPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/18.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Interator Pattern(迭代器模式)
 ** Provide a way to access the elements of an aggregate objects equentially without exposing its underlying representation.
 ** 提供一种方法访问一个容器对象中的每个元素，而又不暴露该对象的内部细节。
 */

/*
 ** Iterator/Concrete Iterator 迭代器
 ** Aggregate/Concrete Aggregate 容器
 */

struct Countdown:Sequence, IteratorProtocol/*swift迭代器*/ {
    var count: Int
    
    mutating func next() -> Int? {
        if count < 0 {
            return nil
        } else {
            defer { count -= 1 }
            return count
        }
    }
}

protocol Iterator {
    var next: Any { set get }
}

class IteratorPattern {
    func tt() {
        let cd = Countdown(count: 3)
        for i in cd {
            print(i)
        }
    }
}
