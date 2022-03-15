//
//  ForgotViewController.swift
//  API
//
//  Created by oops on 02/02/22.
//

import Alamofire
import SwiftyJSON
import UIKit

class ForgotViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet var txtEmail: UITextField!
    let alert = UIAlertController(title: "title", message: "message", preferredStyle: .alert)
    
    //MARK: ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSend(_ sender: Any) {
        guard let email = txtEmail.text, !(txtEmail.text?.isEmpty)! else { return }
        
        let urlLis = "http://192.168.29.213:3000/users/forget"
        
        let parameter: Parameters = [
            "emailId": email
            ]
        AF.request(urlLis, method: .post, parameters: parameter, encoding: URLEncoding.default, headers: nil)
           .validate(statusCode: 200..<300)
           .responseString { response in
               
               switch response.result {
               case .success(let data):
                   print("isi: \(data)")
                   
               case .failure(let error):
                   self.alert.addAction(UIAlertAction(title: "Close", style: .default, handler: { (_: UIAlertAction) in
                       print("OK")
                   }))
                   
                   self.present(self.alert, animated: true, completion: nil)
                   print("need text")
                   print("Request failed with error: \(error)")
            }
       }
        let otpViewController = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "OTPViewController") as? OTPViewController
        self.navigationController?.pushViewController(otpViewController!, animated: true)
    }
}
