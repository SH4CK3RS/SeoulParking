//
//  LoginViewController.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright © 2020 손병근. All rights reserved.
//

import UIKit

protocol LoginDisplayLogic: class{
    func displayLogin(_ viewModel: Login.CallLogin.ViewModel)
}

class LoginViewController: UIViewController, LoginDisplayLogic{
    var interactor: LoginInteractor?
    var router: (NSObjectProtocol & LoginRoutingLogic & LoginDataPassing)?
    init() {
        super.init(nibName: nil, bundle: nil)
        setup()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup(){
        let viewController = self
        let interactor = LoginInteractor()
        let presenter = LoginPresenter()
        let router = LoginRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    //MARK: - Views
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "intro_logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var idContainer: UIView = {
        let v = UIView()
        v.layer.cornerRadius = 16
        v.layer.masksToBounds = true
        v.backgroundColor = .white
        return v
    }()
    lazy var pwContainer: UIView = {
        let v = UIView()
        v.layer.cornerRadius = 16
        v.layer.masksToBounds = true
        v.backgroundColor = .white
        return v
    }()
    
    lazy var idField: UITextField = {
        let tf = UITextField()
        tf.textAlignment = .left
        tf.borderStyle = .none
        tf.placeholder = "아이디"
        return tf
    }()
    lazy var pwField: UITextField = {
        let tf = UITextField()
        tf.textAlignment = .left
        tf.borderStyle = .none
        tf.isSecureTextEntry = true
        tf.placeholder = "비밀번호"
        return tf
    }()
    
    lazy var regButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("회원가입", for: .normal)
        btn.layer.cornerRadius = 20
        btn.setTitleColor(Styler.Color.Main.default, for: .normal)
        btn.titleLabel?.font = UIFont(name: Styler.Font.defaultBold, size: 17)
        btn.layer.masksToBounds = true
        btn.backgroundColor = .white
        return btn
    }()
    lazy var loginButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("로그인", for: .normal)
        btn.layer.cornerRadius = 20
        btn.setTitleColor(Styler.Color.Main.tint, for: .normal)
        btn.titleLabel?.font = UIFont(name: Styler.Font.defaultBold, size: 17)
        btn.layer.masksToBounds = true
        btn.backgroundColor = Styler.Color.Main.default
        btn.addTarget(self, action: #selector(LoginButtonTapped), for: .touchUpInside)
        return btn
    }()
    
    //MARK:
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        view.addSubview(idContainer)
        view.addSubview(pwContainer)
        view.addSubview(logoImageView)
        logoImageView.snp.makeConstraints { (m) in
            m.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(64)
            m.centerX.equalToSuperview()
            m.width.height.equalTo(160)
        }
        
        idContainer.snp.makeConstraints { (m) in
            m.leading.equalTo(32)
            m.trailing.equalTo(-32)
            m.top.equalTo(logoImageView.snp.bottom).offset(32).priority(999)
            m.top.greaterThanOrEqualTo(logoImageView.snp.bottom).offset(64)
            m.height.equalTo(40)
        }
        
        pwContainer.snp.makeConstraints { (m) in
            m.leading.equalTo(32)
            m.trailing.equalTo(-32)
            m.top.equalTo(idContainer.snp.bottom).offset(8)
            m.height.equalTo(40)
        }
        
        idContainer.addSubview(idField)
        pwContainer.addSubview(pwField)
        
        idField.snp.makeConstraints { (m) in
            m.top.equalTo(9)
            m.bottom.equalTo(-7)
            m.leading.equalTo(16)
            m.trailing.equalTo(-16)
        }
        pwField.snp.makeConstraints { (m) in
            m.top.equalTo(9)
            m.bottom.equalTo(-7)
            m.leading.equalTo(16)
            m.trailing.equalTo(-16)
        }
        
        view.addSubview(loginButton)
        view.addSubview(regButton)
        
        loginButton.snp.makeConstraints { (m) in
            m.leading.trailing.equalTo(idContainer)
            m.height.equalTo(50)
            m.top.equalTo(pwContainer.snp.bottom).offset(16)
        }
        regButton.snp.makeConstraints { (m) in
            m.leading.trailing.height.equalTo(loginButton)
            m.top.equalTo(loginButton.snp.bottom).offset(8)
        }
    }
    
    //MARK: - Login Request
    @objc func LoginButtonTapped(){
        guard let id = idField.text else { return }
        guard let pw = pwField.text else { return }
        let request = Login.CallLogin.Request(info: Login.LoginInfo(id: id, pw: pw))
        interactor?.callLogin(request)
    }
    
    func displayLogin(_ viewModel: Login.CallLogin.ViewModel) {
        print(#function)
        if let info = viewModel.info{
            print(info)
        }
    }
    //MARK: - Registration
    @objc func RegistrationButtonTapped(){
        
    }
}
