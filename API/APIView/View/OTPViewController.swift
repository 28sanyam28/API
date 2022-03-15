//
//  OTPViewController.swift
//  API
//
//  Created by oops on 02/02/22.
//

import Alamofire
import SwiftyJSON
import UIKit

class OTPViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet var txtEmail: UITextField!
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var txtOTP: UITextField!
    
    //MARK: OTPViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnGo(_ sender: Any) {
        if(txtEmail.text == nil || (txtEmail.text?.isEmpty)!) {
            print ("Email Address required")
        }
        if(txtPassword.text == nil || (txtPassword.text?.isEmpty)!) {
            print ("Password required")
            return
        }
        if(txtOTP.text == nil || (txtOTP.text?.isEmpty)!) {
            print ("Hint required")
            return
        }
        let apiMethod = "http://192.168.29.180:3000/users/reset"

        let params = [
                      "emailId": txtEmail.text!,
                      "otp": txtOTP.text!,
                      "newPassword": txtPassword.text!
                      
                      ]
        

        AF.request(apiMethod, method: .put, parameters: params, encoding: JSONEncoding.default).responseString { (response) in

            print(response);

            let alertController = UIAlertController(title: "SUCCESSFULLY CHANGED!", message: nil, preferredStyle: .alert);

            alertController.addAction(UIAlertAction(title: "OK", style: .default,handler: nil));



            self.present(alertController, animated: true, completion: nil)
            
        }
        push()

    }

}
extension OTPViewController {
    func push() {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewController") as? ViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
