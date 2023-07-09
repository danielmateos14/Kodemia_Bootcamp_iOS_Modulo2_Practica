//
//  SigInViewController.swift
//  ModuloUIKit
//
//  Created by Daniel Mateos on 28/06/23.
//

import UIKit
import SwiftUI

class RegistroViewController: UIViewController {

    var viewTextFields: UIView? //Variable de tipo View
    var titleLabel: UILabel?
    var nameTextField: UITextField?
    var emailTextField: UITextField?
    var passwordTexField: UITextField?
    var lineLabel1: UILabel?
    var lineLabel2: UILabel?
    var lineLabel3: UILabel?
    var buttonRegistro: UIButton?
    var imageViewName: UIImageView?
    var imageViewMail: UIImageView?
    var imageViewPassword: UIImageView?
    
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initialComponents()
    }
    

    func initialComponents(){
        
        view.backgroundColor = Extras().myViewLoginBackgroundColor
        
        titleLabel = UILabel()
        titleLabel?.textAlignment = .center
        titleLabel?.textColor = Extras().titleColor
        titleLabel?.textAlignment = .center
        titleLabel?.font = UIFont(name: "American Typewriter Bold", size: 50)
        titleLabel?.text = "Regístrate"
        view.addSubview(titleLabel!)
        titleLabel?.translatesAutoresizingMaskIntoConstraints = false
        titleLabel?.topAnchor.constraint(equalTo: view.topAnchor, constant:100).isActive = true
        titleLabel?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        viewTextFields = UIView()
        viewTextFields?.backgroundColor = .white
        viewTextFields?.layer.cornerRadius = 15
        viewTextFields?.layer.borderColor = Extras().titleColor.cgColor
        viewTextFields?.layer.borderWidth = 2
        view.addSubview(viewTextFields!)
        viewTextFields?.translatesAutoresizingMaskIntoConstraints = false
        viewTextFields?.widthAnchor.constraint(equalToConstant: 300).isActive = true
        viewTextFields?.heightAnchor.constraint(equalToConstant: 230).isActive = true
        viewTextFields?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
//        viewTextFields?.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -4-7-80).isActive = true
        viewTextFields?.topAnchor.constraint(equalTo: titleLabel!.bottomAnchor, constant: 60).isActive = true
//        viewTextFields?.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 400).isActive = true
//        viewTextFields?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
//        viewTextFields?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        
        nameTextField = UITextField()
        nameTextField?.backgroundColor = .white
        nameTextField?.placeholder = " Nombre "
        nameTextField?.layer.cornerRadius = 5
//        emailTextField?.layer.borderColor = UIColor.yellow.cgColor
//        emailTextField?.layer.borderWidth = 1.5
        //        emailTextField?.bounds.size.width = 200
        viewTextFields?.addSubview(nameTextField!)
        nameTextField?.translatesAutoresizingMaskIntoConstraints = false
        nameTextField?.widthAnchor.constraint(equalToConstant: 230).isActive = true
        nameTextField?.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nameTextField?.topAnchor.constraint(equalTo: viewTextFields!.topAnchor, constant: 15).isActive = true
        nameTextField?.leadingAnchor.constraint(equalTo: viewTextFields!.leadingAnchor, constant: 50).isActive = true
//        emailTextField?.trailingAnchor.constraint(equalTo: viewTextFields!.trailingAnchor, constant: -15).isActive = true
//        emailTextField?.bottomAnchor.constraint(equalTo: viewTextFields!.bottomAnchor, constant: -150).isActive = true
        
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
        emailTextField?.topAnchor.constraint(equalTo: nameTextField!.bottomAnchor, constant: 15).isActive = true
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
        
        lineLabel1 = UILabel()
        lineLabel1?.textAlignment = .center
        lineLabel1?.textColor = Extras().titleColor
        lineLabel1?.textAlignment = .center
        lineLabel1?.font = UIFont(name: "Arial Bold", size: 40)
        lineLabel1?.text = "__________"
        viewTextFields!.addSubview(lineLabel1!)
        lineLabel1?.translatesAutoresizingMaskIntoConstraints = false
        lineLabel1?.topAnchor.constraint(equalTo: viewTextFields!.topAnchor, constant:20).isActive = true
        lineLabel1?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 15).isActive = true
        
        lineLabel2 = UILabel()
        lineLabel2?.textAlignment = .center
        lineLabel2?.textColor = Extras().titleColor
        lineLabel2?.textAlignment = .center
        lineLabel2?.font = UIFont(name: "Arial Bold", size: 40)
        lineLabel2?.text = "__________"
        viewTextFields!.addSubview(lineLabel2!)
        lineLabel2?.translatesAutoresizingMaskIntoConstraints = false
        lineLabel2?.topAnchor.constraint(equalTo: viewTextFields!.topAnchor, constant:85).isActive = true
        lineLabel2?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 15).isActive = true
        
        lineLabel3 = UILabel()
        lineLabel3?.textAlignment = .center
        lineLabel3?.textColor = Extras().titleColor
        lineLabel3?.textAlignment = .center
        lineLabel3?.font = UIFont(name: "Arial Bold", size: 40)
        lineLabel3?.text = "__________"
        viewTextFields!.addSubview(lineLabel3!)
        lineLabel3?.translatesAutoresizingMaskIntoConstraints = false
        lineLabel3?.topAnchor.constraint(equalTo: viewTextFields!.topAnchor, constant:145).isActive = true
        lineLabel3?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 15).isActive = true
        
        buttonRegistro = UIButton()
        buttonRegistro?.backgroundColor = Extras().myViewBackgroundColor
        buttonRegistro?.setTitle("Registro", for: .normal)
        buttonRegistro?.titleLabel?.font = UIFont(name: "American Typewriter Bold", size: 25)
        buttonRegistro?.setTitleColor(Extras().butonTitleBackgroundColor, for:UIControl.State.normal)
        buttonRegistro?.layer.cornerRadius = 20
        buttonRegistro?.addTarget(self, action: #selector(navegarMain), for: .touchUpInside)
        view!.addSubview(buttonRegistro!)
        buttonRegistro?.translatesAutoresizingMaskIntoConstraints = false
        buttonRegistro?.widthAnchor.constraint(equalToConstant: 230).isActive = true
        buttonRegistro?.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonRegistro?.topAnchor.constraint(equalTo: viewTextFields!.bottomAnchor, constant:40).isActive = true
        buttonRegistro?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        imageViewName = UIImageView()
        imageViewName?.image = UIImage(systemName: "person.fill")
        imageViewName?.contentMode = .scaleAspectFit
        let templateImage = imageViewName?.image?.withRenderingMode(.alwaysTemplate)
        imageViewName?.image = templateImage
        imageViewName?.tintColor = UIColor.black
        viewTextFields?.addSubview(imageViewName!)
        imageViewName?.translatesAutoresizingMaskIntoConstraints = false
        imageViewName?.widthAnchor.constraint(equalToConstant: 40).isActive = true
        imageViewName?.heightAnchor.constraint(equalToConstant: 40).isActive = true
        imageViewName?.topAnchor.constraint(equalTo: viewTextFields!.topAnchor, constant: 25).isActive = true
        imageViewName?.leadingAnchor.constraint(equalTo: viewTextFields!.leadingAnchor, constant: 5).isActive = true
        
        imageViewMail = UIImageView()
        imageViewMail?.image = UIImage(systemName: "envelope.fill")
        imageViewMail?.contentMode = .scaleAspectFit
        let templateImage2 = imageViewMail?.image?.withRenderingMode(.alwaysTemplate)
        imageViewMail?.image = templateImage2
        imageViewMail?.tintColor = UIColor.black
        viewTextFields?.addSubview(imageViewMail!)
        imageViewMail?.translatesAutoresizingMaskIntoConstraints = false
        imageViewMail?.widthAnchor.constraint(equalToConstant: 40).isActive = true
        imageViewMail?.heightAnchor.constraint(equalToConstant: 40).isActive = true
        imageViewMail?.topAnchor.constraint(equalTo: viewTextFields!.topAnchor, constant: 90).isActive = true
        imageViewMail?.leadingAnchor.constraint(equalTo: viewTextFields!.leadingAnchor, constant: 5).isActive = true
        
        imageViewPassword = UIImageView()
        imageViewPassword?.image = UIImage(systemName: "key.fill")
        imageViewPassword?.contentMode = .scaleAspectFit
        let templateImage3 = imageViewPassword?.image?.withRenderingMode(.alwaysTemplate)
        imageViewPassword?.image = templateImage3
        imageViewPassword?.tintColor = UIColor.black
        viewTextFields?.addSubview(imageViewPassword!)
        imageViewPassword?.translatesAutoresizingMaskIntoConstraints = false
        imageViewPassword?.widthAnchor.constraint(equalToConstant: 40).isActive = true
        imageViewPassword?.heightAnchor.constraint(equalToConstant: 40).isActive = true
        imageViewPassword?.topAnchor.constraint(equalTo: viewTextFields!.topAnchor, constant: 150).isActive = true
        imageViewPassword?.leadingAnchor.constraint(equalTo: viewTextFields!.leadingAnchor, constant: 5).isActive = true
    }
    
    @objc func navegarMain(){
        print("Navegaste a Main")
        let siginVC = MoviesViewController()
        siginVC.modalPresentationStyle = .fullScreen
        present(siginVC, animated: true)
    }

}



struct SigInViewControllerRespresent: UIViewControllerRepresentable {
    typealias UIViewControllerType = RegistroViewController
    
    func makeUIViewController(context: Context) -> RegistroViewController {
        RegistroViewController()
    }
    
    func updateUIViewController(_ uiViewController: RegistroViewController, context: Context) {
        
    }
}

struct ViewController_Previews2: PreviewProvider {
    static var previews: some View {
        SigInViewControllerRespresent()
    }
}
