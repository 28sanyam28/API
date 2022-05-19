//
//  DemoViewController.swift
//  API
//
//  Created by oops on 02/03/22.
//

import UIKit
import SwiftUI
import Alamofire
import simd

class DemoViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var result: [Result]?
    var arrP = [String]()
    var arrE = [String]()
    var page = [Int]()
    var arrPage = [Int]()
    var myControllers = [UIViewController]()
    var index: Int = 0
    var arrd = [String]()
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        show()
        vc()
//        parseJSON()
    }
    
}
extension DemoViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: self.collectionView.frame.size.width, height: self.collectionView.frame.size.height)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 255
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DemoCollectionViewCell", for: indexPath) as! DemoCollectionViewCell
        let Punjabi = [cell.lblPunjabi0, cell.lblPunjabi1, cell.lblPunjabi2, cell.lblPunjabi3, cell.lblPunjabi4]
        let English = [cell.lblEnglish0, cell.lblEnglish1, cell.lblEnglish2, cell.lblEnglish3, cell.lblEnglish4]
        cell.lblPageNo.text = "\(indexPath.row + 1)"
        cell.lblPage.isHidden = true

        for i in 0...255 {
            if indexPath.row == i && indexPath.section == 0
            {
                Punjabi[0]!.text = arrP[5*i]
                Punjabi[1]!.text = arrP[5*i+1]
                Punjabi[2]!.text = arrP[5*i+2]
                Punjabi[3]!.text = arrP[5*i+3]
                Punjabi[4]!.text = arrP[5*i+4]
                English[0]!.text = arrE[5*i]
                English[1]!.text = arrE[5*i+1]
                English[2]!.text = arrE[5*i+2]
                English[3]!.text = arrE[5*i+3]
                English[4]!.text = arrE[5*i+4]
            }
        }
        return cell
        }
    
    func show() {
        guard let path = Bundle.main.url(forResource: "0001", withExtension: "json") else {
            fatalError("Could not find JSON")
        }
        guard let jsonData = try? Data(contentsOf: path) else {
            fatalError("Could not Convert Data")
        }
        
            result = try? JSONDecoder().decode([Result].self, from: jsonData)
        
                for i in 0...9 {
                    let punjabi = result![0].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![0].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                    let page = result![0].lines[i].source_page
                    arrPage.append(page)
                    print(arrPage)
                }
                for i in 0...108 {
                    let punjabi = result![1].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![1].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                    let page = result![1].lines[i].source_page
                    arrPage.append(page)
                    print(arrPage)
                }
        
        guard let path1 = Bundle.main.url(forResource: "0003", withExtension: "json") else {
            fatalError("Could not find JSON")
        }
        guard let jsonData1 = try? Data(contentsOf: path1) else {
            fatalError("Could not Convert Data")
        }
        
            result = try? JSONDecoder().decode([Result].self, from: jsonData1)
        
                for i in 0...60 {
                    let punjabi = result![0].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![0].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
                for i in 0...52 {
                    let punjabi = result![1].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![1].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
        
        guard let path2 = Bundle.main.url(forResource: "0004", withExtension: "json") else {
            fatalError("Could not find JSON")
        }
        guard let jsonData2 = try? Data(contentsOf: path2) else {
            fatalError("Could not Convert Data")
        }
        
            result = try? JSONDecoder().decode([Result].self, from: jsonData2)
        
                for i in 0...8 {
                    let punjabi = result![0].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![0].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
                for i in 0...38 {
                    let punjabi = result![1].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![1].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
                for i in 0...20 {
                    let punjabi = result![2].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![2].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
        guard let path3 = Bundle.main.url(forResource: "0005", withExtension: "json") else {
            fatalError("Could not find JSON")
        }
        guard let jsonData3 = try? Data(contentsOf: path3) else {
            fatalError("Could not Convert Data")
        }
        
            result = try? JSONDecoder().decode([Result].self, from: jsonData3)
        
                for i in 0...32 {
                    let punjabi = result![0].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![0].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
                for i in 0...28 {
                    let punjabi = result![1].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![1].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
        guard let path4 = Bundle.main.url(forResource: "0006", withExtension: "json") else {
            fatalError("Could not find JSON")
        }
        guard let jsonData4 = try? Data(contentsOf: path4) else {
            fatalError("Could not Convert Data")
        }
        
            result = try? JSONDecoder().decode([Result].self, from: jsonData4)
        
                for i in 0...8 {
                    let punjabi = result![0].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![0].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
                for i in 0...12 {
                    let punjabi = result![1].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![1].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
                for i in 0...16 {
                    let punjabi = result![2].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![2].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
                for i in 0...120 {
                    let punjabi = result![3].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![3].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
        guard let path5 = Bundle.main.url(forResource: "0007", withExtension: "json") else {
            fatalError("Could not find JSON")
        }
        guard let jsonData5 = try? Data(contentsOf: path5) else {
            fatalError("Could not Convert Data")
        }
        
            result = try? JSONDecoder().decode([Result].self, from: jsonData5)
        
                for i in 0...36 {
                    let punjabi = result![0].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![0].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
        guard let path6 = Bundle.main.url(forResource: "0008", withExtension: "json") else {
            fatalError("Could not find JSON")
        }
        guard let jsonData6 = try? Data(contentsOf: path6) else {
            fatalError("Could not Convert Data")
        }
        
            result = try? JSONDecoder().decode([Result].self, from: jsonData6)
        
                for i in 0...12 {
                    let punjabi = result![0].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![0].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
                for i in 0...20 {
                    let punjabi = result![1].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![1].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
                for i in 0...44 {
                    let punjabi = result![2].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![2].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
        guard let path7 = Bundle.main.url(forResource: "0009", withExtension: "json") else {
            fatalError("Could not find JSON")
        }
        guard let jsonData7 = try? Data(contentsOf: path7) else {
            fatalError("Could not Convert Data")
        }
        
            result = try? JSONDecoder().decode([Result].self, from: jsonData7)
        
                for i in 0...40 {
                    let punjabi = result![0].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![0].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
                for i in 0...56 {
                    let punjabi = result![1].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![1].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
        guard let path8 = Bundle.main.url(forResource: "0010", withExtension: "json") else {
            fatalError("Could not find JSON")
        }
        guard let jsonData8 = try? Data(contentsOf: path8) else {
            fatalError("Could not Convert Data")
        }
        
            result = try? JSONDecoder().decode([Result].self, from: jsonData8)
        
                for i in 0...16 {
                    let punjabi = result![0].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![0].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
                for i in 0...32 {
                    let punjabi = result![1].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![1].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
                for i in 0...12 {
                    let punjabi = result![2].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![2].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
        guard let path9 = Bundle.main.url(forResource: "0011", withExtension: "json") else {
            fatalError("Could not find JSON")
        }
        guard let jsonData9 = try? Data(contentsOf: path9) else {
            fatalError("Could not Convert Data")
        }
        
            result = try? JSONDecoder().decode([Result].self, from: jsonData9)
        
                for i in 0...48 {
                    let punjabi = result![0].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![0].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
                for i in 0...40 {
                    let punjabi = result![1].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![1].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
        guard let path10 = Bundle.main.url(forResource: "0012", withExtension: "json") else {
            fatalError("Could not find JSON")
        }
        guard let jsonData10 = try? Data(contentsOf: path10) else {
            fatalError("Could not Convert Data")
        }
        
            result = try? JSONDecoder().decode([Result].self, from: jsonData10)
        
                for i in 0...40 {
                    let punjabi = result![0].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![0].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
        guard let path11 = Bundle.main.url(forResource: "0013", withExtension: "json") else {
            fatalError("Could not find JSON")
        }
        guard let jsonData11 = try? Data(contentsOf: path11) else {
            fatalError("Could not Convert Data")
        }

            result = try? JSONDecoder().decode([Result].self, from: jsonData11)

                for i in 0...80 {
                    let punjabi = result![0].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![0].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
                for i in 0...80 {
                    let punjabi = result![1].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![1].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
        guard let path12 = Bundle.main.url(forResource: "0014", withExtension: "json") else {
            fatalError("Could not find JSON")
        }
        guard let jsonData12 = try? Data(contentsOf: path12) else {
            fatalError("Could not Convert Data")
        }

            result = try? JSONDecoder().decode([Result].self, from: jsonData12)

                for i in 0...80 {
                    let punjabi = result![0].lines[i].gurmukhi.SGPC
                    arrP.append(punjabi)
                    print (arrP)
                    let english = result![0].lines[i].translations.english.kohli.translation
                    arrE.append(english)
                    print(arrE)
                }
        guard let path13 = Bundle.main.url(forResource: "0019", withExtension: "json") else {
            fatalError("Could not find JSON")
        }
        guard let jsonData13 = try? Data(contentsOf: path13) else {
            fatalError("Could not Convert Data")
        }

            result = try? JSONDecoder().decode([Result].self, from: jsonData13)

                    for i in 0...120 {
                    let p = result![0].lines[i].translations.english.kohli.translation
                    arrd.append(p)
                    print(arrd)
                        }
    }
    func vc() {
//                    var page = [Int]()
//                    page.reserveCapacity(numberCount)
//                        for i in numbers {
//                            let result = result![0].lines[i].source_page
//                            page.append(result)
//                            print (english)
//                                print(result)
//                    }
//                    cell.lblPage?.text = "\(page[0])"
    }
}
