//
//  NetworkAPI.swift
//  seoulParking
//
//  Created by 손병근 on 2019/08/12.
//  Copyright © 2019 ByeonggeunSon. All rights reserved.
//

import Moya
import Alamofire
public enum NetworkModel{
    case login(account: String, password: String)
    case updateUser(uid: Int,imagePath: String, email: String, phone: String, car: String)
    case getUser(uid: Int, token: String)
    case confirmID(account: String)
    case register(account: String, password: String, name:String, email: String, phone: String, car: String)
    case searchParking(keyword: String)
    case parkingDetail(id: Int)
    case createNotice(title: String, content: String)
    case readNoticeList
    case addReview(uid: Int,token: String,pid: Int, title: String, content: String, liked: Bool)
    case getAllReview
    case getParkingReview(_ pid: Int)
    case getReviewDetail(_ rid: Int)
    case uploadImage(_ image: UIImage)
    case addInquiry(_ uid: Int, title: String, content: String)
    case answerInquiry(_ iid: Int, title: String, content: String)
    case getInquiry
    case setAnsered(_ iid: Int)
    case getInquiryAnswer(_ iid: Int)
    case addPoint(_ uid: Int, point: Int, type: String, description: String)
    case getPoint(_ uid: Int)
}

extension NetworkModel: TargetType{
    public var baseURL: URL{
        let url = ""
        return URL(string: url)!
    }
    
    public var path: String {
        switch self{
        case .login: return "/auth/login"
        case .updateUser(uid: let uid,imagePath: _, email: _, phone: _, car: _): return "/user/\(uid)"
        case .getUser(uid: let uid, token: _): return "/user/\(uid)"
        case .confirmID(account: let account): return "/user/check/\(account)"
        case .register: return "/user"
        case .searchParking(keyword: let keyword): return "/parking/keyword/\(keyword)"
        case .parkingDetail(id: let id): return "/parking/detail/\(id)"
        case .createNotice: return "/notice"
        case .readNoticeList: return "/notice/list"
        case .addReview: return "/review/"
        case .getAllReview: return "/review/list"
        case .getParkingReview(let pid): return "/review/list/\(pid)"
        case .getReviewDetail(let rid): return "/review/detail/\(rid)"
        case .uploadImage: return "/upload/image"
        case .addInquiry: return "/inquiry"
        case .answerInquiry(let iid, title: _, content: _): return "/inquiry/\(iid)"
        case .getInquiry: return "/inquiry/list"
        case .setAnsered(let iid): return "/inquiry/answered/\(iid)"
        case .getInquiryAnswer(let iid): return "/inquiry/answer/\(iid)"
        case .addPoint(let uid, point: _, type: _, description: _): return "/point/\(uid)"
        case .getPoint(let uid): return "/point/\(uid)"
        }
    }
    
    public var method: Moya.Method {
        switch self {
        case .login: return .post
        case .updateUser: return .put
        case .getUser: return .get
        case .confirmID: return .get
        case .register: return .post
        case .searchParking: return .get
        case .parkingDetail: return .get
        case .createNotice: return .post
        case .readNoticeList: return .get
        case .addReview: return .post
        case .getAllReview: return .get
        case .getParkingReview: return .get
        case .getReviewDetail: return .get
        case .uploadImage: return .post
        case .addInquiry: return .post
        case .answerInquiry: return .post
        case .getInquiry: return .get
        case .setAnsered: return .get
        case .getInquiryAnswer: return .get
        case .addPoint: return .post
        case .getPoint: return .get
        }
    }
    
    public var sampleData: Data {
        return Data()
    }
    
    public var task: Task {
        switch self {
        case .login(let account, let password):
            var parameters = [String: Any]()
            parameters["account"] = account
            parameters["password"] = password
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        case .updateUser(uid: _,imagePath: let imagePath, email: let email, phone: let phone, car: let car):
            var parameters = [String: Any]()
            parameters["imagePath"] = imagePath
            parameters["email"] = email
            parameters["phone"] = phone
            parameters["car"] = car
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        case .getUser:
            return .requestPlain
        case .confirmID:
            return .requestPlain
        case .register(account: let id, password: let pw, name: let name, email: let email, phone: let phone, car: let car):
            var parameters = [String: Any]()
            parameters["account"] = id
            parameters["password"] = pw
            parameters["name"] = name
            parameters["email"] = email
            parameters["phone"] = phone
            parameters["carNum"] = car
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        case .searchParking:
            return .requestPlain
        case .parkingDetail:
            return .requestPlain
        case .createNotice(title: let title, content: let content):
            var parameters = [String: Any]()
            parameters["title"] = title
            parameters["content"] = content
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        case .readNoticeList:
            return .requestPlain
        case .addReview(uid: let uid,token: _, pid: let pid,title: let title,content: let content, liked: let liked):
            var parameters = [String: Any]()
            parameters["uid"] = uid
            parameters["pid"] = pid
            parameters["title"] = title
            parameters["content"] = content
            parameters["liked"] = liked
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        case .getAllReview:
            return .requestPlain
        case .getParkingReview:
            return .requestPlain
        case .getReviewDetail:
            return .requestPlain
        case .uploadImage(let image):
            let date = Date()
            let df = DateFormatter()
            df.dateFormat = "yyyy-MM-dd HH:mm:ss"
            let fileName = df.string(from: date)
            let imageData = image.jpegData(compressionQuality: 1.0)
            let formData: [Moya.MultipartFormData] = [Moya.MultipartFormData(provider: .data(imageData!), name: "img", fileName: fileName, mimeType: "image/jpeg")]
            return .uploadMultipart(formData)
        case .addInquiry(let uid, title: let title, content: let content):
            var parameters = [String: Any]()
            parameters["uid"] = uid
            parameters["title"] = title
            parameters["content"] = content
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        case .answerInquiry(_, title: let title, content: let content):
            var parameters = [String: Any]()
            parameters["title"] = title
            parameters["content"] = content
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        case .getInquiry:
            return .requestPlain
        case .setAnsered:
            return .requestPlain
        case .getInquiryAnswer:
            return .requestPlain
        case .addPoint(_, point: let point, type: let type, description: let description):
            var parameters = [String: Any]()
            parameters["point"] = point
            parameters["type"] = type
            parameters["description"] = description
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        case .getPoint:
            return .requestPlain
        }
        
    }
    
    public var headers: [String : String]? {
        switch self {
        case .login:
            return ["Content-Type": "application/x-www-form-urlencoded"]
        case .updateUser:
            return ["Content-Type": "application/x-www-form-urlencoded"]
        case .getUser(uid: _, token: let token):
            return ["x-access-token": token]
        case .confirmID:
            return nil
        case .register:
            return ["Content-Type": "application/x-www-form-urlencoded"]
        case .searchParking:
            return nil
        case .parkingDetail:
            return nil
        case .createNotice:
            return ["Content-Type": "application/x-www-form-urlencoded"]
        case .readNoticeList:
            return nil
        case .addReview(uid: _, token: let token, pid: _, title: _, content: _, liked: _):
            return ["x-access-token": token]
        case .getAllReview:
            return nil
        case .getParkingReview:
            return nil
        case .getReviewDetail:
            return nil
        case .uploadImage: return ["Content-Type": "application/x-www-form-urlencoded"]
        case .addInquiry: return ["Content-Type": "application/x-www-form-urlencoded"]
        case .getInquiry: return nil
        case .answerInquiry: return ["Content-Type": "application/x-www-form-urlencoded"]
        case .setAnsered: return nil
        case .getInquiryAnswer:
            return nil
        case .addPoint:
            return ["Content-Type": "application/x-www-form-urlencoded"]
        case .getPoint:
            return nil
            
        }
}
}
