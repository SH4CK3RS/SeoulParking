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
    func displayReady(_ viewModel: Intro.Ready.ViewModel)
}

class IntroViewController: UIViewController, IntroDisplayLogic{
    var interactor: IntroBusinessLogic?
    var router: (NSObjectProtocol & IntroRoutingLogic & IntroDataPassing)?
    
    //MARK: Object LifeCycle
    
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
    
    //MARK: Views
    let backgroundImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage(named: "intro_0000")
        return iv
    }()
    let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "intro_logo")
        return iv
    }()
    
    lazy var startButton: UIButton = {
        let btn = UIButton()
        btn.layer.cornerRadius = 20
        btn.layer.masksToBounds = true
        btn.setTitle("시작하기", for: .normal)
        btn.setTitleColor(Styler.Color.Main.tint, for: .normal)
        btn.backgroundColor = Styler.Color.Main.default
        btn.addTarget(self, action: #selector(callLogin), for: .touchUpInside)
        return btn
    }()
    
    //MARK: - Button Click Event
    @objc func startButtonTapped(){
        
    }
    
    //MARK: - VC Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        startButton.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let request = Intro.Ready.Request()
        interactor?.readyView(request)
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
    
    // MARK: - Display Ready
    func displayReady(_ viewModel: Intro.Ready.ViewModel) {
        // backgroundImageView
        let images = viewModel.images
        startAnimation(images: images)
    }
    
    //MARK: - Animation

    func startAnimation(images:[UIImage]){
        backgroundImageView.animationImages = images
        backgroundImageView.animationDuration = 14.0
        backgroundImageView.startAnimating()
    }
}
extension IntroViewController{
    @objc func callLogin(){
        router?.routeToLogin()
    }
}
