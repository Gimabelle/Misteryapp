//
//  inicioViewController.swift
//  Misteryapp
//
//  Created by Gimabelle Garcia vasquez on 5/4/22.
//

import UIKit

class inicioViewController: UIViewController {
    @IBOutlet weak var imgGlobe : UIImageView!
    @IBOutlet weak var lblHellou : UILabel!
    @IBOutlet weak var lblWelcome : UILabel!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    
    
    // 1
    override func viewDidLoad() {
        super.viewDidLoad()
        //life cycle
        lblHellou.text = NSLocalizedString("hellou!", comment: "")
        lblWelcome.text = NSLocalizedString("Welcome to Mistery", comment: "")
        
    }
        // 2
        override func viewWillAppear (_ animated: Bool) {
            super.viewWillAppear(animated)
        }
        // 3
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    // 4
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    // 5
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
     // codigo para fuentes
    
    
    @IBAction func pressLogin(_ sender: UIButton){
        goInicioViewController()
    }
    @IBAction func pressSignUp(_ sender: UIButton) {
        goSignUpViewController()
    }
    
    
    
  func goInicioViewController(){
      let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
      let newViewController = storyBoard.instantiateViewController(withIdentifier: "IdloginViewController") as! loginViewController
      self.present(newViewController, animated: true, completion: nil)
  }
    
    func goSignUpViewController(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "IdSignUpViewController") as! SignUpViewController
        self.present(newViewController, animated: true, completion: nil)
    }
    
    
    
       }



