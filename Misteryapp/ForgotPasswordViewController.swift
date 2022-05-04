//
//  ForgotPasswordViewController.swift
//  Misteryapp
//
//  Created by Gimabelle Garcia vasquez on 11/4/22.
// 

import UIKit

class ForgotPasswordViewController: UIViewController {
    @IBOutlet weak var imgHeart: UIImageView!
    @IBOutlet weak var lblForgotPss: UILabel!
    @IBOutlet weak var lblDontWorry: UILabel!
    @IBOutlet weak var imgAt: UIImageView!
    @IBOutlet weak var txtEmailId: UITextField!
    
    @IBOutlet weak var btnSubmit: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    
    @IBAction func pressSubmi(_ sender: UIButton) {
    }
    
    
    func validateForgotPass ()-> Bool{
        if let txtEma = txtEmailId.text, txtEma.isEmpty{
           print("Ingresar Id/ mobile number")
          return false
        }
        return true
    }
    

}
