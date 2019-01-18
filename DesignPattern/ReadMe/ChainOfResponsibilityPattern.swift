//
//  ChainOfResponsibilityPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/18.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit
/*
 ** Chain of Responsibility Pattern(责任链模式)
 ** Avoid coupling the sender of a request to its receiver by giving more than one object achance to handle the request. Chain the receiving objects and pass the request along the chain until an object handles it.
 ** 使多个对象都有机会处理请求，从而避免了请求的发送者和接受者之间的耦合关系。将这些对象连成一条链，并沿着这条链传递该请求，直到有对象处理它为止。
 */

/*
 ** 优点，责任链模式非常显著的优点是将请求和处理分开。
 ** 缺点
 ** 1.性能问题
 ** 2.调试很不方便
 
 ** 避免超长链的出现
 */

/*
 
 ** 实际应用
 ** 1.钱币处理
 ** 2.登录注册功能（VIP,普通用户）
 */
class ChainOfResponsibilityPattern: NSObject {

}
