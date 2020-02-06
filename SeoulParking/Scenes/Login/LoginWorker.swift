//
//  LoginWorker.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright © 2020 손병근. All rights reserved.
//

import Foundation
import Alamofire
import Moya
//MARK: - Networking

// MARK: - DataClass
struct LoginResponse: Decodable {
    let token: String
    let id: Int
    let name: String
}

class NetworkLoginAPI: LoginProtocol{
    func callLogin(info: Login.LoginInfo, completion: @escaping (() throws -> LoginResponse) -> Void) {
        login(id: info.id, pw: info.pw) { loginInfo in
            if let info = loginInfo{
                completion { return info }
            }else{
                completion { throw LoginError.idOrPasswordError("id or password is incorrct")}
            }
        }
    }
    let provider = MoyaProvider<NetworkModel>()
    func login(id: String, pw: String, completion: @escaping ((LoginResponse?) -> Void)){
        provider.request(.login(account: id, password: pw)) { result in
            switch result{
            case let .success(common):
                let decoder = JSONDecoder()
                do{
                    let loginResult = try decoder.decode(CommonResponse.self, from: common.data)
                    completion(loginResult.data)
                }catch{
                    completion(nil)
                }
            case .failure:
                completion(nil)
            }
        }
    }
}

class LoginWorker{
    var networkAPI: LoginProtocol
    init(networkAPI: LoginProtocol) {
        self.networkAPI = networkAPI
    }
    func callLogin(info: Login.LoginInfo, completion: @escaping (LoginResponse?) -> Void ){
        networkAPI.callLogin(info: info) { (login: () throws -> LoginResponse) -> Void in
            do{
                let loginInfo = try login()
                completion(loginInfo)
            }catch let error{
                print(error.localizedDescription)
                completion(nil)
            }
        }
    }
}

protocol LoginProtocol{
    func callLogin(info: Login.LoginInfo, completion: @escaping (() throws -> LoginResponse) -> Void)
}

enum LoginError:Equatable, Error{
    case idOrPasswordError(String)
}
func ==(lhs: LoginError, rhs: LoginError) -> Bool{
    switch(lhs, rhs){
    case (.idOrPasswordError(let a), .idOrPasswordError(let b)) where a == b:
        return true
    default:
        return false
    }
}
