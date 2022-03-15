//
//  ViewController.swift
//  API
//
//  Created by oops on 01/02/22.
//

import Alamofire
import SwiftyJSON
import UIKit

class ViewController: UIViewController {

    //MARK: OUTLETS
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    let alert = UIAlertController(title: "title", message: "message", preferredStyle: .alert)
    
    //MARK: ViewController Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func btnNext(_ sender: Any) {
        guard let email = txtEmail.text, !(txtEmail.text?.isEmpty)! else { return }
               guard let password = txtPassword.text, !(txtPassword.text?.isEmpty)! else { return }
               
               let urlLis = "http://192.168.29.213:3000/users/login"
               
               let parameter: Parameters = [
                   "emailId": email,
                   "password": password
               ]
               
                   
                AF.request(urlLis, method: .post, parameters: parameter, encoding: URLEncoding.default, headers: nil)
                       .validate(statusCode: 200..<300)
                       .responseString { response in
                           
                           switch response.result {
                           case .success(let data):
                               print("isi: \(data)")
                               self.push()
                               
                               
                           case .failure(let error):
                               self.alert.addAction(UIAlertAction(title: "Wrong Email and Password", style: .default, handler: { (_: UIAlertAction) in
                                   print("OK")
                               }))
                               
                               self.present(self.alert, animated: true, completion: nil)
                               print("need text")
                               print("Request failed with error: \(error)")
                        }
                   }
           }
    @IBAction func btnToClickSignup(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SignupVc") as? SignupVc
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnForget(_ sender: Any) {
        let forgotViewController = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ForgotViewController") as? ForgotViewController
        self.navigationController?.pushViewController(forgotViewController!, animated: true)
    }
    
}
extension ViewController{
    func push(){
        let productVc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProductVc") as? ProductVc
        self.navigationController?.pushViewController(productVc!, animated: true)
    }
}
