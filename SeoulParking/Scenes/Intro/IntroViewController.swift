//
//  IntroViewController.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright © 2020 손병근. All rights reserved.
//

import UIKit
import SnapKit

protocol IntroDisplayLogic: class{
    
}

class IntroViewController: UIViewController, IntroDisplayLogic{
    var interactor: IntroBusinessLogic?
    var router: (NSObjectProtocol & IntroRoutingLogic & IntroDataPassing)?
    
    let backgroundImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        return iv
    }()
    
    lazy var startButton: UIButton = {
        let btn = UIButton()
        return btn
    }()
    
    //MARK: - Button Click Event
    @objc func startButtonTapped(){
        
    }
    
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
        let interactor = IntroInteractor()
        let presenter = IntroPresenter()
        let router = IntroRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        startButton.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
    }
    //MARK: - Setup UI
    private func setupUI(){
        self.view.backgroundColor = .white
        view.addSubview(backgroundImageView)
        view.addSubview(logoImageView)
        view.addSubview(startButton)
        
        backgroundImageView.snp.makeConstraints { (m) in
            m.leading.top.bottom.trailing.equalToSuperview()
        }
        logoImageView.snp.makeConstraints { (m) in
            m.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(64)
            m.centerX.equalToSuperview()
            m.width.height.equalTo(160)
        }
        startButton.snp.makeConstraints { (m) in
            m.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-32)
            m.leading.equalTo(64)
            m.trailing.equalTo(-64)
            m.height.equalTo(48)
        }
    }
    
    
}
