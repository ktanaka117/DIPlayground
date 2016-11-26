//
//  LoginUseCaseImpl.swift
//  DIPlayground
//
//  Created by 田中賢治 on 2016/11/25.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import Foundation

class LoginUseCaseImpl: LoginUseCase {
    
    private var loginRepository: LoginRepository!
    
    init(repository: LoginRepository) {
        self.loginRepository = repository
    }
    
    func login() {
        
    }
    
}
