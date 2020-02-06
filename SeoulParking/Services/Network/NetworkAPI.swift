//
//  NetworkAPI.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/07.
//  Copyright © 2020 손병근. All rights reserved.
//

import Foundation
import Moya
import Alamofire

//MARK: Common Response
struct CommonResponse: Decodable {
    let success: Bool
    let message, error: String?
    let data: LoginResponse
}
