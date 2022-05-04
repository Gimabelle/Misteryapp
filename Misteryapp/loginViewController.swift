//
//  loginViewController.swift
//  Misteryapp
//
//  Created by Gimabelle Garcia vasquez on 6/4/22.
// poner EL CODIGO QUE ABRE EL ALERT DENTRO DEL METODO SHOWMESAGGE PASARLE 2 PARAMETROS UNO QUE SE LLAME TITULO Y OTRO MS, LUEGO ESE METODO LLAMARLO EN LAS VALIDACIONES Y PONERLE SU MS CORRESPONDIENTE,  IVGT GGL COMO PASAR 1 PARAMETRO EN SWIFT 

import UIKit

class loginViewController: UIViewController {

    
   @IBOutlet weak var imgLogo : UIImageView!
   @IBOutlet weak var lblLogin : UILabel!
   @IBOutlet weak var imgheart: UIImageView!
   @IBOutlet weak var txtEmail : UITextField!
   @IBOutlet weak var imgVisto : UIImageView!
   @IBOutlet weak var txtPassword : UITextField!
   @IBOutlet weak var btnForgotPas : UIButton!
   @IBOutlet weak var btnLogin : UIButton!
   @IBOutlet weak var lblOr : UILabel!
   @IBOutlet weak var imgApple : UIImageView!
   @IBOutlet weak var lblLoginGoogle : UILabel!
   @IBOutlet weak var btnLoginGoo : UIButton!
   @IBOutlet weak var lblNewTo : UILabel!
   @IBOutlet weak var lblRegister : UILabel!
   @IBOutlet weak var btnUltimoR : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressForgotPass(_ sender: UIButton){
        goLoginViewController()
    }
    @IBAction func pressLogin(_ sender: UIButton) {
        if VadidacionIniciar(){
        }
    }
    @IBAction func pressRegister(_ sender: UIButton) {
    }
    
    
    func VadidacionIniciar()-> Bool{
          
          if let txtEm = txtEmail.text, txtEm.isEmpty{
              print("ingresar Email")
              // create the alert hay 2 String el msg 
                     let alert = UIAlertController(title: "Alert", message: "This is my message.", preferredStyle: UIAlertController.Style.alert)
                     // add an action (button) boton de ok
                     alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                     // show the alert
                     self.present(alert, animated: true, completion: nil)
              return false
        
            }else if let textPassw = txtPassword.text,
                        textPassw.isEmpty{
              print("ingresar Password")
              return false
          }
             
         return true
      }
      
    func goLoginViewController(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "IdForgotPasswordViewController") as! ForgotPasswordViewController
        self.present(newViewController, animated: true, completion: nil)
    }
    func showMessage (){
        // create the alert
               let alert = UIAlertController(title: "My Title", message: "This is my message.", preferredStyle: UIAlertController.Style.alert)

               // add an action (button)
               alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

               // show the alert
               self.present(alert, animated: true, completion: nil)
    }
}


