//
//  SingleTonPattern.swift
//  DesignPattern
//
//  Created by 储诚鹏 on 2019/1/14.
//  Copyright © 2019 储诚鹏. All rights reserved.
//

import UIKit

/*
 ** Ensure a class has only one instance, and provide a global point of access to it.
 ** 确保一个类只有一个实例，而且自行实例化并向整个系统提供这个实例
 */

/*
 ** 优点
 ** 1.由于单例模式在内存中只有一个实例，减少了内存开支，特别是一个对象需要频繁的创建、销毁时，而且创建或销毁时性能又无法优化，单例模式的优势就很明显。
 ** 2.单例可以减少系统的性能开销。当一个对象的产生需要比较多的资源时，如读取配置、产生其他依赖对象时，则可以通过在应用启动时直接产生一个单例对象，然后用永久驻留内存的方式来解决。
 ** 3.单例模式可以避免对资源的多重占用。如一个写文件的动作，由于内存中只有一个实例，避免对同一个资源文件的同时写操作。
 ** 4.单例模式可以在系统中设置全局的访问点，优化和共享资源访问。如设计一个单例类，负责所有数据表的映射处理。
 */

/*
 ** 缺点
 ** 1. 单例模式一般没有接口，扩展很困难（只能修改源码）。
 ** 2.单例模式对测试很不利。在并行开发环境中，如果单例没有完成，是不能进行测试的，没有接口也不能使用mock虚拟一个对象。
 ** 3.单例模式与单一原则有冲突。
 */

/*
 ** 使用场景
 ** 1.要求生成唯一序列号的u环境
 ** 2.整个项目中需要一个共享访问点或共享数据
 ** 3.创建一个对象需要消耗的资源过多
 ** 4.需要定义大量的静态常量和静态方法
 */

/*
 ** 注意事项
 ** 在高并发情况下，注意线程同步的问题
 */

class SingletonPattern {
    static let singleton = SingletonPattern()
    private init() {}
}
