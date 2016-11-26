//
//  LoginViewController.swift
//  DIPlayground
//
//  Created by 田中賢治 on 2016/11/23.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    private var loginPresenter: LoginPresenter!
    
    func inject(presenter: LoginPresenter) {
        loginPresenter = presenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
    
}

extension LoginViewController: LoginVCOutput {
    func showLoginDialog() {
        
    }
}

extension LoginViewController: LoginTransitioner {
    func transition(to viewController: UIViewController, animated: Bool, completionHandler: (() -> ())?) {
        present(viewController, animated: animated, completion: completionHandler)
    }
}
