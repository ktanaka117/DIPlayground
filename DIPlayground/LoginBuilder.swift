//
//  LoginBuilder.swift
//  DIPlayground
//
//  Created by 田中賢治 on 2016/11/23.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import UIKit

struct LoginBuilder: Builder {
    
    func build() -> UIViewController {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        
        let wireframe  = LoginWireframeImpl(transitioner: viewController)
        
        let dataStore  = LoginDataStoreImpl()
        let repository = LoginRepositoryImpl(dataStore: dataStore)
        let useCase    = LoginUseCaseImpl(repository: repository)
        
        let presenter  = LoginPresenterImpl(
            useCase: useCase,
            viewOutput: viewController,
            wireframe: wireframe
        )
        
        viewController.inject(presenter: presenter)
        
        return viewController
        
        // ⬇︎多分Mockを使ってテストするパターンとかだとこんな感じ
//        let wireframeMock  = LoginWireframeMock(transitioner: viewController)
//        let dataStoreMock  = LoginDataStoreMock()
//        let repositoryMock = LoginRepositoryMock(dataStore: dataStore)
//        let useCaseMock    = LoginUseCaseMock(loginRepository: repository)
//        let presenterMock  = LoginPresenterImpl(
//            useCase: useCase,
//            viewOutput: viewController,
//            wireframe: wireframe
//        )
//        
//        viewController.inject(presenter: presenterMock)
//        
//        return viewController
    }
    
}
