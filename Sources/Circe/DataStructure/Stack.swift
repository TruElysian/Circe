//
//  Stack.swift
//
//
//  Created by Elysian on 2024/4/5.
//

import Foundation

public protocol StackProtocol {
    associatedtype Element

    func count() -> Int
    mutating func push(_ element: Element)
    mutating func pop() -> Element?
    func top() -> Element?
    func isEmpty() -> Bool
}

/// 后入先出 LIFO
public struct Stack<T>: StackProtocol {
    /// 使用数组来存储栈中的元素
    private var elements = [T]()
    
    public init(elements: [T] = [T]()) {
        self.elements = elements
    }

    /// 栈元素数量
    /// - Returns: <#description#>
    public func count() -> Int {
        elements.count
    }

    /// 将元素压入栈顶
    /// - Parameter element: <#element description#>
    public mutating func push(_ element: T) {
        elements.append(element)
    }

    /// 弹出栈顶元素
    /// - Returns: <#description#>
    public mutating func pop() -> T? {
        return elements.popLast()
    }

    /// 查看栈顶元素但不弹出
    /// - Returns: <#description#>
    public func top() -> T? {
        return elements.last
    }

    /// 检查栈是否为空
    /// - Returns: <#description#>
    public func isEmpty() -> Bool {
        return elements.isEmpty
    }
}
