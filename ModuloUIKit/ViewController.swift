//
//  ViewController.swift
//  ModuloUIKit
//
//  Created by Daniel Mateos on 27/06/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    var newView: UIView? //Variable de tipo View
    var newText: UILabel? //Variable de tipo View
    var loginButton: UIButton? //Variable de tipo View
    var signButton: UIButton? //Variable de tipo View
    var loginImage: UIImageView? //Variable de tipo View
    
    var myColor = UIColor(red: 84/255, green: 15/255, blue: 0/255, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Extras().myViewBackgroundColor
        newView?.isHidden = true
        
        initComponents()
    }
    
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//            super.viewWillTransition(to: size, with: coordinator)
//            if UIDevice.current.orientation.isLandscape {
//                print("Landscape")
//                initComponentsLandscape()
//            } else {
//                print("Portrait")
//                initComponentsPortrait()
//            }
//        }
    

    func initComponents(){
        //Esta funcion inicializa los componentes
        
//        newView = UIView()
//        view.addSubview(newView!)
//        newView?.backgroundColor = .cyan
//        newView?.translatesAutoresizingMaskIntoConstraints = false
//        newView?.widthAnchor.constraint(equalToConstant: 1000).isActive = true
//        newView?.heightAnchor.constraint(equalToConstant: 30).isActive = true
////        newView?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
////        newView?.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -400).isActive = true
//        newView?.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        
        
//        Inicializamos la variable: alto, ancho, posicion
        newText = UILabel()
//        newText = UILabel()
        newText?.text = "FIREPLAY"
        newText?.textColor = .orange
//        newText?.backgroundColor = .white
        newText?.font = UIFont(name: "American Typewriter Bold", size: 60)
        newText?.textAlignment = .center
        //Paso 3: Agregamos a la vista
        view.addSubview(newText!)
        newText?.translatesAutoresizingMaskIntoConstraints = false
        newText?.widthAnchor.constraint(equalToConstant: 380).isActive = true
        newText?.heightAnchor.constraint(equalToConstant: 100).isActive = true
        newText?.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        //        newText?.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        newText?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
//        newText?.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -300).isActive = true
        //        Paso 2: Configuracion de atributos
//
        loginButton = UIButton()
        loginButton?.backgroundColor = Extras().loginButtonColor
        loginButton?.setTitle("Iniciar Sesión", for: .normal)
        loginButton?.titleLabel?.font = UIFont(name: "American Typewriter Bold", size: 30)
        loginButton?.setTitleColor(UIColor.black, for:UIControl.State.normal)
        loginButton?.layer.cornerRadius = 15
        loginButton?.addTarget(self, action: #selector(navegarLogin), for: .touchUpInside)
        view.addSubview(loginButton!)
        loginButton?.translatesAutoresizingMaskIntoConstraints = false
        loginButton?.widthAnchor.constraint(equalToConstant: 280).isActive = true
        loginButton?.heightAnchor.constraint(equalToConstant: 60).isActive = true
        loginButton?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
//        loginButton?.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        loginButton?.topAnchor.constraint(equalTo: newText!.bottomAnchor, constant: 90).isActive = true
        
        signButton = UIButton()
        signButton?.backgroundColor = Extras().signButtonColor
        signButton?.setTitle("Regístro", for: .normal)
        signButton?.titleLabel?.font = UIFont(name: "American Typewriter Bold", size: 30)
        signButton?.setTitleColor(UIColor.white, for:UIControl.State.normal)
        signButton?.layer.borderColor =  Extras().loginButtonColor.cgColor
        signButton?.layer.borderWidth =  2
        signButton?.layer.cornerRadius = 15
        signButton?.addTarget(self, action: #selector(navegarSigin), for: .touchUpInside)
        view.addSubview(signButton!)
        signButton?.translatesAutoresizingMaskIntoConstraints = false
        signButton?.widthAnchor.constraint(equalToConstant: 280).isActive = true
        signButton?.heightAnchor.constraint(equalToConstant: 60).isActive = true
        signButton?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
//        signButton?.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -10).isActive = true
        signButton?.topAnchor.constraint(equalTo: loginButton!.bottomAnchor, constant: 30).isActive = true
//
        loginImage = UIImageView()
        loginImage?.image = UIImage(named: "fi")
        loginImage?.contentMode = .scaleAspectFit
//        let templateImage = loginImage?.image?.withRenderingMode(.alwaysTemplate)
//        loginImage?.image = templateImage
//        loginImage?.tintColor = UIColor.white
        view.addSubview(loginImage!)
        loginImage?.translatesAutoresizingMaskIntoConstraints = false
        loginImage?.widthAnchor.constraint(equalToConstant: 200).isActive = true
        loginImage?.heightAnchor.constraint(equalToConstant: 200).isActive = true
        loginImage?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
//        signButton?.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -10).isActive = true
        loginImage?.topAnchor.constraint(equalTo: signButton!.bottomAnchor, constant: 60).isActive = true
    }
    
    func initComponentsLandscape(){
        //Esta funcion inicializa los componentes
        
        newView = UIView()
        newView?.backgroundColor = .cyan
        view.addSubview(newView!)
        newView?.translatesAutoresizingMaskIntoConstraints = false
        newView?.widthAnchor.constraint(equalToConstant: 1000).isActive = true
        newView?.heightAnchor.constraint(equalToConstant: 600).isActive = true
        newView?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        newView?.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -80).isActive = true
        
        
        //Inicializamos la variable: alto, ancho, posicion
//        newText = UILabel(frame: CGRect(x: 85, y: 50, width: 250, height: 200))
        newText = UILabel()
////        Paso 2: Configuracion de atributos
        newText?.text = "Cubicar"
        newText?.textColor = .white
        newText?.font = UIFont(name: "Arial Bold", size: 60)
        //Paso 3: Agregamos a la vista
        newView!.addSubview(newText!)
        
        
        newText?.translatesAutoresizingMaskIntoConstraints = false
        newText?.widthAnchor.constraint(equalToConstant: 200).isActive = true
        newText?.heightAnchor.constraint(equalToConstant: 50).isActive = true
        newText?.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        newText?.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
//
//        loginButton = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
//        loginButton?.backgroundColor = loginButtonColor
//        loginButton?.setTitle("Iniciar Sesión", for: .normal)
//        loginButton?.layer.cornerRadius = 10
//        loginButton?.addTarget(self, action: #selector(navegarLogin), for: .touchUpInside)
//        view.addSubview(loginButton!)
//
//        signButton = UIButton(frame: CGRect(x: 100, y: 370, width: 200, height: 50))
//        signButton?.backgroundColor = signButtonColor
//        signButton?.setTitle("Regístro", for: .normal)
//        signButton?.setTitleColor(.black, for: .normal)
//        signButton?.layer.cornerRadius = 10
//        signButton?.addTarget(self, action: #selector(navegarSigin), for: .touchUpInside)
//        view.addSubview(signButton!)
//
//        loginImage = UIImageView(frame: CGRect(x: 100, y: 470, width: 200, height: 200))
//        loginImage?.image = UIImage(named: "caja")
//        loginImage?.contentMode = .scaleAspectFit
//        let templateImage = loginImage?.image?.withRenderingMode(.alwaysTemplate)
//        loginImage?.image = templateImage
//        loginImage?.tintColor = UIColor.white
//        view.addSubview(loginImage!)
    }
    
    @objc func navegarLogin(){
        print("Navegaste a Login")
        let siginVC = LoginViewController()
        siginVC.modalPresentationStyle = .popover
        present(siginVC, animated: true)
    }
    
    @objc func navegarSigin(){
        print("Navegaste a Sigin")
        let siginVC = RegistroViewController()
        siginVC.modalPresentationStyle = .popover
        present(siginVC, animated: true)
    }
}

struct ViewControllerRespresent: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        
    }
    
    typealias UIViewControllerType = ViewController
    
    func makeUIViewController(context: Context) -> ViewController {
        ViewController()
    }
    
    
}

struct ViewController_Previews3: PreviewProvider {
    static var previews: some View {
        ViewControllerRespresent()
    }
}
