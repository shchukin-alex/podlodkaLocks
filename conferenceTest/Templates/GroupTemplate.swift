//
//  GroupTemplate.swift
//  conferenceTest
//
//  Created by Alexey Shchukin on 08.11.2020.
//

import Foundation

final class Group {
    
    private var mutex = pthread_mutex_t()
    private var condition = pthread_cond_t()
    private var counter = 0
    
    init() {
        pthread_mutex_init(&mutex, nil)
        pthread_cond_init(&condition, nil)
    }
    
    func enter() {
        //TODO: Implement
    }
    
    func leave() {
        //TODO: Implement
    }
    
    func wait() {
        //TODO: Implement
    }
    
    deinit {
        pthread_mutex_destroy(&mutex)
        pthread_cond_destroy(&condition)
    }
}
