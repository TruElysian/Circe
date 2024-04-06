//
//  Queue.swift
//
//
//  Created by Elysian on 2024/4/5.
//

import Foundation

protocol QueueProtocol {
    associatedtype Element

    func count() -> Int
    mutating func enqueue(_ element: Element)
    mutating func dequeue() -> Element?
    func top() -> Element?
    func isEmpty() -> Bool
}

struct Queue<T>: QueueProtocol {
    private var elements = [T]()

    func count() -> Int {
        elements.count
    }

    mutating func enqueue(_ element: T) {
        elements.append(element)
    }

    mutating func dequeue() -> T? {
        return elements.isEmpty ? nil : elements.removeFirst()
    }

    func top() -> T? {
        return elements.first
    }

    func isEmpty() -> Bool {
        return elements.isEmpty
    }
}
