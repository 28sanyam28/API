//
//  ProductVc.swift
//  API
//
//  Created by oops on 03/02/22.
//

import Alamofire
import SwiftyJSON
import UIKit
import AlamofireImage


class ProductVc: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet var tableView: UITableView!
    var arrImage = [String]()
    var arrName = [String]()
    var arrPrice = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        alamofire()
    }
    

    @IBAction func btnAddProduct(_ sender: Any) {
        let productViewController = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProductViewController") as? ProductViewController
        self.navigationController?.pushViewController(productViewController!, animated: true)
    }
    @IBAction func btnDelete(_ sender: Any) {
        
    }
    
}
extension ProductVc {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return arrName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath as IndexPath) as! ProductTableViewCell
        
        tableViewCell.lblName?.text = arrName[indexPath.row]
        tableViewCell.lblPrice?.text = arrPrice[indexPath.row]
        let urlImage = arrImage[indexPath.row]
        
        AF.request(urlImage).responseImage { (response) in
            if let image = response.value
            {
                DispatchQueue.main.async {
                    tableViewCell.imgView.image = image
                }
            }
        }
        return tableViewCell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print (arrName[indexPath.row])
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "EditViewController") as? EditViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    func alamofire(){
        let url = "http://192.168.29.213:3000/admin/productView"
        AF.request(url, method: .get).responseString { (response) in
            
            switch response.result {
                
            case .success:
                print (response.result)
                let result = try? JSON(data: response.data!)
                let array = result!
                
                self.arrName.removeAll()
                self.arrPrice.removeAll()
                
                for i in array.arrayValue{
                    print (i)
                    let productName = i["productName"].stringValue
                    self.arrName.append(productName)
                    let productPrice = i["productPrice"].stringValue
                    self.arrPrice.append(productPrice)
                    let images = i["productImage"].stringValue
                    self.arrImage.append(images)
                }
                self.tableView.reloadData()
                break
                
            case .failure:
                print (response.error!)
                break
            }
        }
    }
}
