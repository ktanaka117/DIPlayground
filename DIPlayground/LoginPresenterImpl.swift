//
//  LoginPresenterImpl.swift
//  DIPlayground
//
//  Created by 田中賢治 on 2016/11/25.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import UIKit

struct LoginPresenterImpl: LoginPresenter {
    
    private var loginUseCase: LoginUseCase!
    private weak var loginVCOutput: LoginVCOutput!
    private var loginWireframe: LoginWireframe!
    
    // Wireframeでまかなえる遷移はwireframeのみで、画面間がとなりあっていないものはSharedObserverを使う
    // init(useCase: LoginUseCase, viewOutput: LoginVCOutput, wireframe: LoginWireframe, SharedObserver.instance)
    init(useCase: LoginUseCase, viewOutput: LoginVCOutput, wireframe: LoginWireframe) {
        self.loginUseCase = useCase
        self.loginVCOutput = viewOutput
        self.loginWireframe = wireframe
    }
    
    func showLoginDialog() {
        loginVCOutput.showLoginDialog()
        loginWireframe.transition()
    }
}
