//
//  LoginInteractor.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright © 2020 손병근. All rights reserved.
//

import UIKit

protocol LoginBusinessLogic{
    func callLogin(_ request: Login.CallLogin.Request)
}
protocol LoginDataStore{
    
}

class LoginInteractor: LoginBusinessLogic, LoginDataStore{
    var presenter: LoginPresentationLogic?
    var worker = LoginWorker(networkAPI: NetworkLoginAPI())
    
    func callLogin(_ request: Login.CallLogin.Request) {
        // call login API and make response and send it to presenter
        worker.callLogin(info: request.info) { [weak self] info in
            
            let response = Login.CallLogin.Response()
            self?.presenter?.presentLogin(response)
        }
    }
}
