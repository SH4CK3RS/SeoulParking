//
//  LoginRouter.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright © 2020 손병근. All rights reserved.
//

import UIKit

protocol LoginRoutingLogic {
    
}
protocol LoginDataPassing{
    var dataStore: LoginDataStore? { get }
}

class LoginRouter: NSObject, LoginRoutingLogic, LoginDataPassing{
    weak var viewController: LoginViewController?
    var dataStore: LoginDataStore?
}
