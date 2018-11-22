import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!

    @IBOutlet weak var labelMessage: UILabel!
    
    @IBAction func buttonRegister(_ sender: UIButton) {
    
        let emailRaw = textFieldEmail.text
        let passwordRaw = textFieldPassword.text
        
        guard let email = emailRaw, let password = passwordRaw else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if error == nil {
                self.labelMessage.text = "You are successfully registered."
            }else{
                self.labelMessage.text = "Registration failed."
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
