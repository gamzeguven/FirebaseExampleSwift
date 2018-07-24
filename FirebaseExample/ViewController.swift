import UIKit

import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!

    @IBOutlet weak var labelMessage: UILabel!
    
    @IBAction func buttonRegister(_ sender: UIButton) {
    
        let email = textFieldEmail.text
        let password = textFieldPassword.text
        
        FIRAuth.auth()?.createUser(withEmail: email!, password: password!, completion: { (user: FIRUser?, error) in

            if error == nil {
                self.labelMessage.text = "You are successfully registered."
            }else{
                self.labelMessage.text = "Registration failed."
            }
            
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //FIRApp.configure()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
