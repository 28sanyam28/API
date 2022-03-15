//
//  ProductViewController.swift
//  API
//
//  Created by oops on 02/02/22.
//

import Alamofire
import SwiftyJSON
import UIKit


class ProductViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtPrice: UITextField!
    let alert = UIAlertController(title: "title", message: "message", preferredStyle: .alert)
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAdd(_ sender: Any) {
        guard let name = txtName.text, !(txtName.text?.isEmpty)! else { return }
               guard let price = txtPrice.text, !(txtPrice.text?.isEmpty)! else { return }
               
               let urlLis = "http://192.168.29.213:3000/admin/productAdd"
               
               let parameter: Parameters = [
                   "productName": name,
                   "productPrice": price
               ]
               
                   
                AF.request(urlLis, method: .post, parameters: parameter, encoding: URLEncoding.default, headers: nil)
                       .validate(statusCode: 200..<600)
                       .responseString { response in
                           
                           switch response.result {
                           case .success(let data):
                               print("isi: \(data)")
                               self.push()
                               
                               
                               
                           case .failure(let error):
                               self.alert.addAction(UIAlertAction(title: "Please correct field", style: .default, handler: { (_: UIAlertAction) in
                                   print("OK")
                               }))
                               
                               self.present(self.alert, animated: true, completion: nil)
                               print("need text")
                               print("Request failed with error: \(error)")
                        }
                   }
    }
}
extension ProductViewController{
    func push(){
        let productVc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProductVc") as? ProductVc
        self.navigationController?.pushViewController(productVc!, animated: true)
    }
}
