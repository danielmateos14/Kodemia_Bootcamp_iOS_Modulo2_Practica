//
//  LoginViewController.swift
//  ModuloUIKit
//
//  Created by Daniel Mateos on 28/06/23.
//

import UIKit
import SwiftUI

class LoginViewController: UIViewController {
    
    
    var newView: UIView? //Variable de tipo View
    var titleLabel: UILabel?
    var lineLabel1: UILabel?
    var lineLabel2: UILabel?
    var emailTextField: UITextField?
    var passwordTexField: UITextField?
    var buttonLogin: UIButton?
    var buttonFacebook: UIButton?
    var buttonGoogle: UIButton?
    var viewTextFields: UIView?
    var mailImageView: UIImageView?
    var passwordImageView: UIImageView?
    var imageViewFacebook: UIImageView?
    var imageViewGoogle: UIImageView?
    
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialComponents()
    }
    
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//            super.viewWillTransition(to: size, with: coordinator)
//            if UIDevice.current.orientation.isLandscape {
//                print("Landscape")
//                initialComponentsLandscape()
//            } else {
//                print("Portrait")
//                initialComponentsPortrait()
//            }
//        }
    
    func initialComponents(){
        
        view.backgroundColor = Extras().myViewLoginBackgroundColor
        
        titleLabel = UILabel()
        titleLabel?.textAlignment = .center
        titleLabel?.textColor = Extras().titleColor
        titleLabel?.textAlignment = .center
        titleLabel?.font = UIFont(name: "American Typewriter Bold", size: 50)
        titleLabel?.text = "Iniciar Sesión"
        view.addSubview(titleLabel!)
        titleLabel?.translatesAutoresizingMaskIntoConstraints = false
        titleLabel?.topAnchor.constraint(equalTo: view.topAnchor, constant:80).isActive = true
        titleLabel?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        //        titleLabel?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        //        titleLabel?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        //        titleLabel?.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -600).isActive = true
        
        
        viewTextFields = UIView()
        viewTextFields?.backgroundColor = .white
        viewTextFields?.layer.cornerRadius = 15
        viewTextFields?.layer.borderColor = UIColor.lightGray.cgColor
        viewTextFields?.layer.borderWidth = 2
        view.addSubview(viewTextFields!)
        viewTextFields?.translatesAutoresizingMaskIntoConstraints = false
        viewTextFields?.widthAnchor.constraint(equalToConstant: 300).isActive = true
        viewTextFields?.heightAnchor.constraint(equalToConstant: 179).isActive = true
        viewTextFields?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
//        viewTextFields?.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -4-7-80).isActive = true
        viewTextFields?.topAnchor.constraint(equalTo: titleLabel!.bottomAnchor, constant: 60).isActive = true
//        viewTextFields?.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 400).isActive = true
//        viewTextFields?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
//        viewTextFields?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        
        emailTextField = UITextField()
        emailTextField?.backgroundColor = .white
        emailTextField?.placeholder = " Ingresa un Email"
        emailTextField?.layer.cornerRadius = 5
//        emailTextField?.layer.borderColor = UIColor.yellow.cgColor
//        emailTextField?.layer.borderWidth = 1.5
        //        emailTextField?.bounds.size.width = 200
        viewTextFields?.addSubview(emailTextField!)
        emailTextField?.translatesAutoresizingMaskIntoConstraints = false
        emailTextField?.widthAnchor.constraint(equalToConstant: 230).isActive = true
        emailTextField?.heightAnchor.constraint(equalToConstant: 50).isActive = true
        emailTextField?.topAnchor.constraint(equalTo: viewTextFields!.topAnchor, constant: 24).isActive = true
        emailTextField?.leadingAnchor.constraint(equalTo: viewTextFields!.leadingAnchor, constant: 50).isActive = true
//        emailTextField?.trailingAnchor.constraint(equalTo: viewTextFields!.trailingAnchor, constant: -15).isActive = true
//        emailTextField?.bottomAnchor.constraint(equalTo: viewTextFields!.bottomAnchor, constant: -150).isActive = true
        
        passwordTexField = UITextField()
        passwordTexField?.backgroundColor = .white
        passwordTexField?.placeholder = " Contraseña"
        passwordTexField?.layer.cornerRadius = 5
//        passwordTexField?.layer.borderColor = UIColor.yellow.cgColor
//        passwordTexField?.layer.borderWidth = 1.5
        passwordTexField?.isSecureTextEntry = true
        viewTextFields?.addSubview(passwordTexField!)
        passwordTexField?.translatesAutoresizingMaskIntoConstraints = false
        passwordTexField?.widthAnchor.constraint(equalToConstant: 230).isActive = true
        passwordTexField?.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwordTexField?.topAnchor.constraint(equalTo: emailTextField!.bottomAnchor, constant: 10).isActive = true
        passwordTexField?.leadingAnchor.constraint(equalTo: viewTextFields!.leadingAnchor, constant: 50).isActive = true
//        emailTextField?.trailingAnchor.constraint(equalTo: viewTextFields!.trailingAnchor, constant: -15).isActive = true
//        emailTextField?.bottomAnchor.constraint(equalTo: viewTextFields!.bottomAnchor, constant: -150).isActive = true
        
        mailImageView = UIImageView()
        mailImageView?.image = UIImage(named: "u")
        viewTextFields?.addSubview(mailImageView!)
        mailImageView?.translatesAutoresizingMaskIntoConstraints = false
        mailImageView?.widthAnchor.constraint(equalToConstant: 40).isActive = true
        mailImageView?.heightAnchor.constraint(equalToConstant: 40).isActive = true
        mailImageView?.topAnchor.constraint(equalTo: viewTextFields!.topAnchor, constant: 30).isActive = true
        mailImageView?.leadingAnchor.constraint(equalTo: viewTextFields!.leadingAnchor, constant: 5).isActive = true
        
        passwordImageView = UIImageView()
        passwordImageView?.image = UIImage(named: "pas")
        viewTextFields?.addSubview(passwordImageView!)
        passwordImageView?.translatesAutoresizingMaskIntoConstraints = false
        passwordImageView?.widthAnchor.constraint(equalToConstant: 40).isActive = true
        passwordImageView?.heightAnchor.constraint(equalToConstant: 40).isActive = true
        passwordImageView?.topAnchor.constraint(equalTo: viewTextFields!.topAnchor, constant: 90).isActive = true
        passwordImageView?.leadingAnchor.constraint(equalTo: viewTextFields!.leadingAnchor, constant: 5).isActive = true
        
        lineLabel1 = UILabel()
        lineLabel1?.textAlignment = .center
        lineLabel1?.textColor = .yellow
        lineLabel1?.textAlignment = .center
        lineLabel1?.font = UIFont(name: "Arial Bold", size: 40)
        lineLabel1?.text = "__________"
        viewTextFields!.addSubview(lineLabel1!)
        lineLabel1?.translatesAutoresizingMaskIntoConstraints = false
        lineLabel1?.topAnchor.constraint(equalTo: viewTextFields!.topAnchor, constant:27).isActive = true
        lineLabel1?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 15).isActive = true
        
        lineLabel2 = UILabel()
        lineLabel2?.textAlignment = .center
        lineLabel2?.textColor = .yellow
        lineLabel2?.textAlignment = .center
        lineLabel2?.font = UIFont(name: "Arial Bold", size: 40)
        lineLabel2?.text = "__________"
        viewTextFields!.addSubview(lineLabel2!)
        lineLabel2?.translatesAutoresizingMaskIntoConstraints = false
        lineLabel2?.topAnchor.constraint(equalTo: viewTextFields!.topAnchor, constant:85).isActive = true
        lineLabel2?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 15).isActive = true
        
        buttonLogin = UIButton()
        buttonLogin?.backgroundColor = Extras().myViewBackgroundColor
        buttonLogin?.setTitle("Iniciar Sesión", for: .normal)
        buttonLogin?.titleLabel?.font = UIFont(name: "American Typewriter Bold", size: 25)
        buttonLogin?.setTitleColor(Extras().butonTitleBackgroundColor, for:UIControl.State.normal)
        buttonLogin?.layer.cornerRadius = 20
        buttonLogin?.addTarget(self, action: #selector(navegarMovies), for: .touchUpInside)
        view!.addSubview(buttonLogin!)
        buttonLogin?.translatesAutoresizingMaskIntoConstraints = false
        buttonLogin?.widthAnchor.constraint(equalToConstant: 230).isActive = true
        buttonLogin?.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonLogin?.topAnchor.constraint(equalTo: viewTextFields!.bottomAnchor, constant:40).isActive = true
        buttonLogin?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        buttonFacebook = UIButton()
        buttonFacebook?.backgroundColor = Extras().facebookBlueColor
        buttonFacebook?.setTitle("       Iniciar con Facebook", for: .normal)
        buttonFacebook?.titleLabel?.font = UIFont(name: "Arial Bold", size: 25)
        buttonFacebook?.setTitleColor(UIColor.white, for:UIControl.State.normal)
//        buttonFacebook?.layer.cornerRadius = 20
        view!.addSubview(buttonFacebook!)
        buttonFacebook?.translatesAutoresizingMaskIntoConstraints = false
        buttonFacebook?.widthAnchor.constraint(equalToConstant: 330).isActive = true
        buttonFacebook?.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonFacebook?.topAnchor.constraint(equalTo: buttonLogin!.bottomAnchor, constant:40).isActive = true
        buttonFacebook?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        buttonGoogle = UIButton()
        buttonGoogle?.backgroundColor = Extras().googleRedColor
        buttonGoogle?.setTitle("   Iniciar con Google", for: .normal)
        buttonGoogle?.titleLabel?.font = UIFont(name: "Arial Bold", size: 25)
        buttonGoogle?.setTitleColor(UIColor.white, for:UIControl.State.normal)
//        buttonFacebook?.layer.cornerRadius = 20
        view!.addSubview(buttonGoogle!)
        buttonGoogle?.translatesAutoresizingMaskIntoConstraints = false
        buttonGoogle?.widthAnchor.constraint(equalToConstant: 330).isActive = true
        buttonGoogle?.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonGoogle?.topAnchor.constraint(equalTo: buttonFacebook!.bottomAnchor, constant:10).isActive = true
        buttonGoogle?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        imageViewFacebook = UIImageView()
        imageViewFacebook?.image = UIImage(named: "face")
        view?.addSubview(imageViewFacebook!)
        imageViewFacebook?.translatesAutoresizingMaskIntoConstraints = false
        imageViewFacebook?.widthAnchor.constraint(equalToConstant: 40).isActive = true
        imageViewFacebook?.heightAnchor.constraint(equalToConstant: 40).isActive = true
        imageViewFacebook?.topAnchor.constraint(equalTo: buttonFacebook!.topAnchor, constant: 5).isActive = true
        imageViewFacebook?.leadingAnchor.constraint(equalTo: buttonFacebook!.leadingAnchor, constant: 5).isActive = true
        
        imageViewGoogle = UIImageView()
        imageViewGoogle?.image = UIImage(named: "go")
        view?.addSubview(imageViewGoogle!)
        imageViewGoogle?.translatesAutoresizingMaskIntoConstraints = false
        imageViewGoogle?.widthAnchor.constraint(equalToConstant: 40).isActive = true
        imageViewGoogle?.heightAnchor.constraint(equalToConstant: 40).isActive = true
        imageViewGoogle?.topAnchor.constraint(equalTo: buttonGoogle!.topAnchor, constant: 5).isActive = true
        imageViewGoogle?.leadingAnchor.constraint(equalTo: buttonGoogle!.leadingAnchor, constant: 5).isActive = true
    }
    
    @objc func navegarMovies(){
        print("Navegaste a Movies")
        let moviesVC = MoviesViewController()
        moviesVC.modalPresentationStyle = .fullScreen
        present(moviesVC, animated: true)
    }
    
}



struct LoginViewControllerRespresent: UIViewControllerRepresentable {
    typealias UIViewControllerType = LoginViewController
    
    func makeUIViewController(context: Context) -> LoginViewController {
        LoginViewController()
    }
    
    func updateUIViewController(_ uiViewController: LoginViewController, context: Context) {
        
    }
}

struct ViewController_Previews: PreviewProvider {
    static var previews: some View {
        LoginViewControllerRespresent()
        SigInViewControllerRespresent()
        ViewControllerRespresent()
    }
}
