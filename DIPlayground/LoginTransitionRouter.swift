//
//  LoginRouter.swift
//  DIPlayground
//
//  Created by 田中賢治 on 2016/11/26.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import UIKit

protocol LoginTransitioner: class {
    func transition(to viewController: UIViewController, animated: Bool, completionHandler: (() -> ())?)
}
