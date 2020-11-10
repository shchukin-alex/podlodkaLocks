//
//  BST.swift
//  conferenceTest
//
//  Created by Alexey Shchukin on 03.11.2020.
//

import Foundation

/*
final public class BinarySearchTree<T: Comparable> {
    
    final class Node<T> {
        var left: Node?
        var right: Node?
        var value: T
        
        init(value: T) {
            self.value = value
        }
    }
    
    private(set) var root: Node<T>?
    
    private var lock = pthread_rwlock_t()
    private var attributes = pthread_rwlockattr_t()
    
    public init() {
        pthread_rwlockattr_init(&attributes)
        pthread_rwlock_init(&lock, &attributes)
    }
    
    public func insert(value: T) {
        
        pthread_rwlock_wrlock(&lock)
        insert(node: &root, value: value)
        pthread_rwlock_unlock(&lock)
    }
    
    public func contains(value: T) -> Bool {
        
        pthread_rwlock_rdlock(&lock)
        let isContains = contains(node: root, value: value)
        pthread_rwlock_unlock(&lock)
        return isContains
    }
    
    public func remove(value: T) {
        pthread_rwlock_wrlock(&lock)
        remove(node: &root, value: value)
        pthread_rwlock_unlock(&lock)
    }
    
    public func traversal() {
        traversal(node: root)
    }
    
    //MARK: - Private
    
    private func remove(node: inout Node<T>?, value: T) {
        guard let tmpNode = node else {
            return
        }
        
        if tmpNode.value == value {
            if tmpNode.left == nil && tmpNode.right == nil {
                node = nil
            } else if tmpNode.left == nil {
                node = tmpNode.right
            } else if tmpNode.right == nil {
                node = tmpNode.left
            } else {
                guard let rightNode = tmpNode.right else { return }
                let minValue = min(node: rightNode).value
                node?.value = minValue
                remove(node: &tmpNode.right, value: minValue)
            }
        } else if value < tmpNode.value {
            remove(node: &tmpNode.left, value: value)
        } else {
            remove(node: &tmpNode.right, value: value)
        }
    }
    
    private func min(node: Node<T>) -> Node<T> {
        var minNode = node
        while let tmpNode = minNode.left {
            minNode = tmpNode
        }
        return minNode
    }
    
    private func contains(node: Node<T>?, value: T) -> Bool {
        guard let node = node else {
            return false
        }
        
        if node.value == value {
            return true
        }
        
        if value < node.value {
            return contains(node: node.left, value: value)
        } else {
            return contains(node: node.right, value: value)
        }
    }
    
    private func insert(node: inout Node<T>?, value: T) {
        guard let tmpNode = node else {
            node = Node(value: value)
            return
        }
        
        if value < tmpNode.value {
            insert(node: &tmpNode.left, value: value)
        } else {
            insert(node: &tmpNode.right, value: value)
        }
    }
    
    
    private func traversal(node: Node<T>?) {
        guard let node = node else { return }
        
        traversal(node: node.left)
        print(node.value)
        traversal(node: node.right)
    }
}
*/
