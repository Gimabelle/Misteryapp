//
//  ForgetPasswordViewController.swift
//  Misteryapp
//
//  Created by Gimabelle Garcia vasquez on 1/4/22.
//

import UIKit

class ForgetPasswordViewController: UIViewController {
    @IBOutlet weak var imgPrincipal : UIImageView!
    @IBOutlet weak var lblForgotPassword : UILabel!
    @IBOutlet weak var lblDontWorry : UILabel!
    @IBOutlet weak var imgAt : UIImageView!
    @IBOutlet weak var txtEmail : UITextField!
    @IBOutlet weak var btnSubmit : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressSubmit(_ sender: UIButton) {
    }
    
    func VadidacinForgotPass ()-> Bool{
        if let txtEmailId = txtEmail.text, txtEmailId.isEmpty{
            print("ingresar correo")
            
            return false
        }
       return true
    }
    
    
}
