//
//  LoginWireframeImpl.swift
//  DIPlayground
//
//  Created by 田中賢治 on 2016/11/25.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import Foundation

struct LoginWireframeImpl: LoginWireframe {
    
    private weak var loginTransitioner: LoginTransitioner!
    
    init(transitioner: LoginTransitioner) {
        self.loginTransitioner = transitioner
    }
    
    func transition() {
        let hogeViewController = LoginBuilder().build()
        
        loginTransitioner.transition(
            to: hogeViewController,
            animated: true,
            completionHandler: nil
        )
    }
    
}
