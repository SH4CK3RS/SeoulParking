//
//  RegistrationViewController.swift
//  SeoulParking
//
//  Created by byeonggeunSon on 2020/02/06.
//  Copyright (c) 2020 손병근. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol RegistrationDisplayLogic: class
{
  func displaySomething(viewModel: Registration.Something.ViewModel)
}

class RegistrationViewController: UIViewController, RegistrationDisplayLogic
{
  var interactor: RegistrationBusinessLogic?
  var router: (NSObjectProtocol & RegistrationRoutingLogic & RegistrationDataPassing)?

  // MARK: Object lifecycle
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder)
  {
    super.init(coder: aDecoder)
    setup()
  }
  
  // MARK: Setup
  
  private func setup()
  {
    let viewController = self
    let interactor = RegistrationInteractor()
    let presenter = RegistrationPresenter()
    let router = RegistrationRouter()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
    router.dataStore = interactor
  }
  
    //MARK: - Views
    lazy var backgroundImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage(named: "login_background")
        return iv
    }()
    lazy var backButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setImage(UIImage(named: "back")?.withRenderingMode(.alwaysTemplate), for: .normal)
        btn.tintColor = Styler.Color.Main.tint
        btn.setTitleColor(Styler.Color.Blue.primary, for: .normal)
        return btn
    }()
    lazy var scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.backgroundColor = .clear
        sv.isScrollEnabled = true
        sv.isUserInteractionEnabled = true
        return sv
    }()
    lazy var scrollContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "intro_logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    lazy var registerFormContainer: UIView = {
        let v = UIView()
        v.backgroundColor = Styler.Color.Main.default
        return v
    }()
    
    //MARK - Login Form
    lazy var confirmButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = Styler.Color.Main.tint
        btn.setTitle("중복확인", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        
        return btn
    }()
    lazy var idField: UITextField = {
        let field = UITextField()
        field.borderStyle = .none
        field.autocapitalizationType = .none
        field.textAlignment = .left
        field.textColor = .white
        field.clearButtonMode = .whileEditing
        field.attributedPlaceholder = NSAttributedString(string:"아이디(8자리 이상)",
                                                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        field.font = UIFont.init(name: Styler.Font.defaultBold, size: 16)
        return field
    }()
    lazy var idFieldDivider: UIView = {
        let v = UIView()
        v.backgroundColor = Styler.Color.Main.tint
        return v
    }()
    lazy var pwField: UITextField = {
        let field = UITextField()
        field.borderStyle = .none
        field.autocapitalizationType = .none
        field.textAlignment = .left
        field.textColor = .white
        field.clearButtonMode = .whileEditing
        field.attributedPlaceholder = NSAttributedString(string:"비밀번호",
                                                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        field.font = UIFont.init(name: Styler.Font.defaultBold, size: 16)
        field.isSecureTextEntry = true
        return field
    }()
    lazy var pwFieldDivider: UIView = {
        let v = UIView()
        v.backgroundColor = Styler.Color.Main.tint
        return v
    }()
    lazy var pwConfirmField: UITextField = {
        let field = UITextField()
        field.borderStyle = .none
        field.autocapitalizationType = .none
        field.textAlignment = .left
        field.textColor = .white
        field.clearButtonMode = .whileEditing
        field.attributedPlaceholder = NSAttributedString(string:"비밀번호확인",
                                                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        field.font = UIFont.init(name: Styler.Font.defaultBold, size: 16)
        field.isSecureTextEntry = true
        return field
    }()
    lazy var pwConfirmFieldDivider: UIView = {
        let v = UIView()
        v.backgroundColor = Styler.Color.Main.tint
        return v
    }()
    lazy var nameField: UITextField = {
        let field = UITextField()
        field.borderStyle = .none
        field.autocapitalizationType = .none
        field.textAlignment = .left
        field.textColor = .white
        field.clearButtonMode = .whileEditing
        field.attributedPlaceholder = NSAttributedString(string:"이름",
                                                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        field.font = UIFont.init(name: Styler.Font.defaultBold, size: 16)
        return field
    }()
    lazy var nameFieldDivider: UIView = {
        let v = UIView()
        v.backgroundColor = Styler.Color.Main.tint
        return v
    }()
    lazy var emailField: UITextField = {
        let field = UITextField()
        field.borderStyle = .none
        field.autocapitalizationType = .none
        field.textAlignment = .left
        field.textColor = .white
        field.clearButtonMode = .whileEditing
        field.attributedPlaceholder = NSAttributedString(string:"이메일(exp@exp.com)",
                                                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        field.font = UIFont.init(name: Styler.Font.defaultBold, size: 16)
        return field
    }()
    lazy var emailFieldDivider: UIView = {
        let v = UIView()
        v.backgroundColor = Styler.Color.Main.tint
        return v
    }()
    lazy var phoneField: UITextField = {
        let field = UITextField()
        field.borderStyle = .none
        field.autocapitalizationType = .none
        field.textAlignment = .left
        field.textColor = .white
        field.keyboardType = UIKeyboardType.phonePad
        field.attributedPlaceholder = NSAttributedString(string:"전화번호",
                                                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        field.font = UIFont.init(name: Styler.Font.defaultBold, size: 16)
        return field
    }()
    lazy var phoneFieldDivider: UIView = {
        let v = UIView()
        v.backgroundColor = Styler.Color.Main.tint
        return v
    }()
    lazy var carField: UITextField = {
        let field = UITextField()
        field.borderStyle = .none
        field.autocapitalizationType = .none
        field.textAlignment = .left
        field.textColor = .white
        field.clearButtonMode = .whileEditing
        field.attributedPlaceholder = NSAttributedString(string:"차량번호(12가3456)",
                                                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        field.font = UIFont.init(name: Styler.Font.defaultBold, size: 16)
        return field
    }()
    lazy var carFieldDivider: UIView = {
        let v = UIView()
        v.backgroundColor = Styler.Color.Main.tint
        return v
    }()
    
    //MARK - Bottom Views
    lazy var bottomContainer: UIView = {
        let v = UIView()
        v.backgroundColor = Styler.Color.Main.tint
        return v
    }()
    lazy var registerButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = Styler.Color.Main.tint
        btn.titleLabel?.font = UIFont(name: Styler.Font.defaultBold, size: 17)
        btn.setTitleColor(.white, for: .normal)
        btn.setTitle("회원가입", for: .normal)
        return btn
    }()

  // MARK: Routing
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?)
  {
    if let scene = segue.identifier {
      let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
      if let router = router, router.responds(to: selector) {
        router.perform(selector, with: segue)
      }
    }
  }
  
  // MARK: View lifecycle
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    doSomething()
  }
  
  // MARK: Do something
  
  //@IBOutlet weak var nameTextField: UITextField!
  
  func doSomething()
  {
    let request = Registration.Something.Request()
    interactor?.doSomething(request: request)
  }
  
  func displaySomething(viewModel: Registration.Something.ViewModel)
  {
    //nameTextField.text = viewModel.name
  }
}
