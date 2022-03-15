//
//  SignupVc.swift
//  API
//
//  Created by oops on 02/02/22.
//

import Alamofire
import SwiftyJSON
import UIKit

class SignupVc: UIViewController {

    //MARK: OUTLETS
    @IBOutlet var txtFirst: UITextField!
    @IBOutlet var txtLast: UITextField!
    @IBOutlet var txtEmail: UITextField!
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var txtHint: UITextField!
    let showAlertError = UIAlertController(title: "Error", message: nil, preferredStyle: .alert);
    
    //MARK: SignupVc Life Cycle
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func btnToClickSignup(_ sender: Any) {
        if(txtFirst.text == nil || (txtFirst.text?.isEmpty)!) {
                print ("First Name required")
                return
            }
            if(txtLast.text == nil || (txtLast.text?.isEmpty)!) {
                print ("Last Name required")
                return

            }
            if(txtEmail.text == nil || (txtEmail.text?.isEmpty)!) {
                print ("Email Address required")
            }
            if(txtPassword.text == nil || (txtPassword.text?.isEmpty)!) {
                print ("Password required")
                return
            }
            if(txtHint.text == nil || (txtHint.text?.isEmpty)!) {
                print ("Hint required")
                return
            }
            let apiMethod = "http://192.168.29.213:3000/users/signup"

            let params = [
                          "firstName": txtFirst.text!,
                          "lastName": txtLast.text!,
                          "emailId": txtEmail.text!,
                          "password": txtPassword.text!,
                            "Hint": txtHint.text!
                          ]
            

            AF.request(apiMethod, method: .post, parameters: params, encoding: JSONEncoding.default).responseString { (response) in

                print(response);

                let alertController = UIAlertController(title: "REGISTRATION SUCCESSFUL!", message: nil, preferredStyle: .alert);

                alertController.addAction(UIAlertAction(title: "OK", style: .default,handler: nil));



                self.present(alertController, animated: true, completion: nil)

            }


        }
}
