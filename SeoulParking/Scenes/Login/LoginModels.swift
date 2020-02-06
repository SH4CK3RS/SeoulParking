//
//  LoginModels.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright © 2020 손병근. All rights reserved.
//

import UIKit

enum Login{
    struct LoginInfo{
        var id: String
        var pw: String
    }
    enum CallLogin{
        struct Request{
            var info: Login.LoginInfo
        }
        struct Response {
            var info: LoginInfo?
        }
        struct ViewModel {
            var info: LoginInfo?
        }
    }
}
