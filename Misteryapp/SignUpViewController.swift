import UIKit
class SignUpViewController: UIViewController {

    @IBOutlet weak var imgPrincipal: UIImageView!
    @IBOutlet weak var lblSign: UILabel!
    @IBOutlet weak var imgAt: UIImageView!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var imgArchive: UIImageView!
    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var imgPhone: UIImageView!
    @IBOutlet weak var txtMobile: UITextField!
    @IBOutlet weak var lblBySign: UILabel!
    @IBOutlet weak var btnContinue: UIButton!
    @IBOutlet weak var lblJoined: UILabel!
    @IBOutlet weak var lblLogin: UILabel!
    @IBOutlet weak var btnLogin: UIButton!
    
     override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressContinue(_ sender: UIButton) {
    }
    
    func VadidacionSignUp ()-> Bool{
        if let txtEm = txtEmail.text, txtEm.isEmpty{
            print("ingresar Email")
            return false
        }else if let textFull = txtFullName.text, textFull.isEmpty{
            print("ingresar full name")
            return false
        }else if let textMob = txtMobile.text, textMob.isEmpty{
            print("ingresar numero de telefono")
            return false
        }
       return true
    }
    
    
    
    

}
