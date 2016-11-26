//
//  LoginRepositoryImpl.swift
//  DIPlayground
//
//  Created by 田中賢治 on 2016/11/25.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import Foundation

struct LoginRepositoryImpl: LoginRepository {
    
    private var loginDataStore: LoginDataStore!
    
    init(dataStore: LoginDataStore) {
        self.loginDataStore = dataStore
    }
    
    func login() {
        
    }
    
}
