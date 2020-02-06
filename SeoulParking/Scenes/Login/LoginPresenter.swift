//
//  LoginPresenter.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright © 2020 손병근. All rights reserved.
//

import UIKit

protocol LoginPresentationLogic {
    func presentLogin(_ response: Login.CallLogin.Response)
}
class LoginPresenter: LoginPresentationLogic{
    weak var viewController: LoginDisplayLogic?
    
    func presentLogin(_ response: Login.CallLogin.Response){
        let viewModel = Login.CallLogin.ViewModel(info: response.info)
        viewController?.displayLogin(viewModel)
    }
}
