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
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        show()
//        vc()
//        parseJSON()
    }
    
}
extension DemoViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: self.collectionView.frame.size.width, height: self.collectionView.frame.size.height)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 31
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DemoCollectionViewCell", for: indexPath) as! DemoCollectionViewCell
        
        cell.lblPageNo.text = "\(indexPath.row + 1)"
        cell.lblPage.isHidden = true
        
    if indexPath.row == 0 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[0]
        cell.lblPunjabi1?.text = arrP[1]
        cell.lblPunjabi2?.text = arrP[2]
        cell.lblPunjabi3?.text = arrP[3]
        cell.lblPunjabi4?.text = arrP[4]
        
        cell.lblEnglish?.text = arrE[0]
        cell.lblEnglish1?.text = arrE[1]
        cell.lblEnglish2?.text = arrE[2]
        cell.lblEnglish3?.text = arrE[3]
        cell.lblEnglish4?.text = arrE[4]
    }
    if indexPath.row == 1 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[5]
        cell.lblPunjabi1?.text = arrP[6]
        cell.lblPunjabi2?.text = arrP[7]
        cell.lblPunjabi3?.text = arrP[8]
        cell.lblPunjabi4?.text = arrP[9]
        
        cell.lblEnglish?.text = arrE[5]
        cell.lblEnglish1?.text = arrE[6]
        cell.lblEnglish2?.text = arrE[7]
        cell.lblEnglish3?.text = arrE[8]
        cell.lblEnglish4?.text = arrE[9]
    }
    if indexPath.row == 2 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[10]
        cell.lblPunjabi1?.text = arrP[11]
        cell.lblPunjabi2?.text = arrP[12]
        cell.lblPunjabi3?.text = arrP[13]
        cell.lblPunjabi4?.text = arrP[14]
    
        cell.lblEnglish?.text = arrE[10]
        cell.lblEnglish1?.text = arrE[11]
        cell.lblEnglish2?.text = arrE[12]
        cell.lblEnglish3?.text = arrE[13]
        cell.lblEnglish4?.text = arrE[14]
    }
    if indexPath.row == 3 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[15]
        cell.lblPunjabi1?.text = arrP[16]
        cell.lblPunjabi2?.text = arrP[17]
        cell.lblPunjabi3?.text = arrP[18]
        cell.lblPunjabi4?.text = arrP[19]
    
        cell.lblEnglish?.text = arrE[15]
        cell.lblEnglish1?.text = arrE[16]
        cell.lblEnglish2?.text = arrE[17]
        cell.lblEnglish3?.text = arrE[18]
        cell.lblEnglish4?.text = arrE[19]
    }
    if indexPath.row == 4 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[20]
        cell.lblPunjabi1?.text = arrP[21]
        cell.lblPunjabi2?.text = arrP[22]
        cell.lblPunjabi3?.text = arrP[23]
        cell.lblPunjabi4?.text = arrP[24]
    
        cell.lblEnglish?.text = arrE[20]
        cell.lblEnglish1?.text = arrE[21]
        cell.lblEnglish2?.text = arrE[22]
        cell.lblEnglish3?.text = arrE[23]
        cell.lblEnglish4?.text = arrE[24]
    }
    if indexPath.row == 5 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[25]
        cell.lblPunjabi1?.text = arrP[26]
        cell.lblPunjabi2?.text = arrP[27]
        cell.lblPunjabi3?.text = arrP[28]
        cell.lblPunjabi4?.text = arrP[29]
    
        cell.lblEnglish?.text = arrE[25]
        cell.lblEnglish1?.text = arrE[26]
        cell.lblEnglish2?.text = arrE[27]
        cell.lblEnglish3?.text = arrE[28]
        cell.lblEnglish4?.text = arrE[29]
    }
    if indexPath.row == 6 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[30]
        cell.lblPunjabi1?.text = arrP[31]
        cell.lblPunjabi2?.text = arrP[32]
        cell.lblPunjabi3?.text = arrP[33]
        cell.lblPunjabi4?.text = arrP[34]
        
        cell.lblEnglish?.text = arrE[30]
        cell.lblEnglish1?.text = arrE[31]
        cell.lblEnglish2?.text = arrE[32]
        cell.lblEnglish3?.text = arrE[33]
        cell.lblEnglish4?.text = arrE[34]
    }
    if indexPath.row == 7 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[35]
        cell.lblPunjabi1?.text = arrP[36]
        cell.lblPunjabi2?.text = arrP[37]
        cell.lblPunjabi3?.text = arrP[38]
        cell.lblPunjabi4?.text = arrP[39]
    
        cell.lblEnglish?.text = arrE[35]
        cell.lblEnglish1?.text = arrE[36]
        cell.lblEnglish2?.text = arrE[37]
        cell.lblEnglish3?.text = arrE[38]
        cell.lblEnglish4?.text = arrE[39]
    }
    if indexPath.row == 8 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[40]
        cell.lblPunjabi1?.text = arrP[41]
        cell.lblPunjabi2?.text = arrP[42]
        cell.lblPunjabi3?.text = arrP[43]
        cell.lblPunjabi4?.text = arrP[44]
        
        cell.lblEnglish?.text = arrE[40]
        cell.lblEnglish1?.text = arrE[41]
        cell.lblEnglish2?.text = arrE[42]
        cell.lblEnglish3?.text = arrE[43]
        cell.lblEnglish4?.text = arrE[44]
    }
    if indexPath.row == 9 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[45]
        cell.lblPunjabi1?.text = arrP[46]
        cell.lblPunjabi2?.text = arrP[47]
        cell.lblPunjabi3?.text = arrP[48]
        cell.lblPunjabi4?.text = arrP[49]
    
        cell.lblEnglish?.text = arrE[45]
        cell.lblEnglish1?.text = arrE[46]
        cell.lblEnglish2?.text = arrE[47]
        cell.lblEnglish3?.text = arrE[48]
        cell.lblEnglish4?.text = arrE[49]
    }
    if indexPath.row == 10 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[50]
        cell.lblPunjabi1?.text = arrP[51]
        cell.lblPunjabi2?.text = arrP[52]
        cell.lblPunjabi3?.text = arrP[53]
        cell.lblPunjabi4?.text = arrP[54]
        
        cell.lblEnglish?.text = arrE[50]
        cell.lblEnglish1?.text = arrE[51]
        cell.lblEnglish2?.text = arrE[52]
        cell.lblEnglish3?.text = arrE[53]
        cell.lblEnglish4?.text = arrE[54]
    }
    if indexPath.row == 11 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[55]
        cell.lblPunjabi1?.text = arrP[56]
        cell.lblPunjabi2?.text = arrP[57]
        cell.lblPunjabi3?.text = arrP[58]
        cell.lblPunjabi4?.text = arrP[59]
    
        cell.lblEnglish?.text = arrE[55]
        cell.lblEnglish1?.text = arrE[56]
        cell.lblEnglish2?.text = arrE[57]
        cell.lblEnglish3?.text = arrE[58]
        cell.lblEnglish4?.text = arrE[59]
    }
    if indexPath.row == 12 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[60]
        cell.lblPunjabi1?.text = arrP[61]
        cell.lblPunjabi2?.text = arrP[62]
        cell.lblPunjabi3?.text = arrP[63]
        cell.lblPunjabi4?.text = arrP[64]
        
        cell.lblEnglish?.text = arrE[60]
        cell.lblEnglish1?.text = arrE[61]
        cell.lblEnglish2?.text = arrE[62]
        cell.lblEnglish3?.text = arrE[63]
        cell.lblEnglish4?.text = arrE[64]
    }
    if indexPath.row == 13 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[65]
        cell.lblPunjabi1?.text = arrP[66]
        cell.lblPunjabi2?.text = arrP[67]
        cell.lblPunjabi3?.text = arrP[68]
        cell.lblPunjabi4?.text = arrP[69]
    
        cell.lblEnglish?.text = arrE[65]
        cell.lblEnglish1?.text = arrE[66]
        cell.lblEnglish2?.text = arrE[67]
        cell.lblEnglish3?.text = arrE[68]
        cell.lblEnglish4?.text = arrE[69]
    }
    if indexPath.row == 14 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[70]
        cell.lblPunjabi1?.text = arrP[71]
        cell.lblPunjabi2?.text = arrP[72]
        cell.lblPunjabi3?.text = arrP[73]
        cell.lblPunjabi4?.text = arrP[74]
        
        cell.lblEnglish?.text = arrE[70]
        cell.lblEnglish1?.text = arrE[71]
        cell.lblEnglish2?.text = arrE[72]
        cell.lblEnglish3?.text = arrE[73]
        cell.lblEnglish4?.text = arrE[74]
    }
    if indexPath.row == 15 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[75]
        cell.lblPunjabi1?.text = arrP[76]
        cell.lblPunjabi2?.text = arrP[77]
        cell.lblPunjabi3?.text = arrP[78]
        cell.lblPunjabi4?.text = arrP[79]
    
        cell.lblEnglish?.text = arrE[75]
        cell.lblEnglish1?.text = arrE[76]
        cell.lblEnglish2?.text = arrE[77]
        cell.lblEnglish3?.text = arrE[78]
        cell.lblEnglish4?.text = arrE[79]
    }
    if indexPath.row == 16 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[80]
        cell.lblPunjabi1?.text = arrP[81]
        cell.lblPunjabi2?.text = arrP[82]
        cell.lblPunjabi3?.text = arrP[83]
        cell.lblPunjabi4?.text = arrP[84]
        
        cell.lblEnglish?.text = arrE[80]
        cell.lblEnglish1?.text = arrE[81]
        cell.lblEnglish2?.text = arrE[82]
        cell.lblEnglish3?.text = arrE[83]
        cell.lblEnglish4?.text = arrE[84]
    }
    if indexPath.row == 17 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[85]
        cell.lblPunjabi1?.text = arrP[86]
        cell.lblPunjabi2?.text = arrP[87]
        cell.lblPunjabi3?.text = arrP[88]
        cell.lblPunjabi4?.text = arrP[89]
    
        cell.lblEnglish?.text = arrE[85]
        cell.lblEnglish1?.text = arrE[86]
        cell.lblEnglish2?.text = arrE[87]
        cell.lblEnglish3?.text = arrE[88]
        cell.lblEnglish4?.text = arrE[89]
    }
    if indexPath.row == 18 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[90]
        cell.lblPunjabi1?.text = arrP[91]
        cell.lblPunjabi2?.text = arrP[92]
        cell.lblPunjabi3?.text = arrP[93]
        cell.lblPunjabi4?.text = arrP[94]
        
        cell.lblEnglish?.text = arrE[90]
        cell.lblEnglish1?.text = arrE[91]
        cell.lblEnglish2?.text = arrE[92]
        cell.lblEnglish3?.text = arrE[93]
        cell.lblEnglish4?.text = arrE[94]
    }
    if indexPath.row == 19 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[95]
        cell.lblPunjabi1?.text = arrP[96]
        cell.lblPunjabi2?.text = arrP[97]
        cell.lblPunjabi3?.text = arrP[98]
        cell.lblPunjabi4?.text = arrP[99]
    
        cell.lblEnglish?.text = arrE[95]
        cell.lblEnglish1?.text = arrE[96]
        cell.lblEnglish2?.text = arrE[97]
        cell.lblEnglish3?.text = arrE[98]
        cell.lblEnglish4?.text = arrE[99]
    }
    if indexPath.row == 20 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[100]
        cell.lblPunjabi1?.text = arrP[101]
        cell.lblPunjabi2?.text = arrP[102]
        cell.lblPunjabi3?.text = arrP[103]
        cell.lblPunjabi4?.text = arrP[104]
        
        cell.lblEnglish?.text = arrE[100]
        cell.lblEnglish1?.text = arrE[101]
        cell.lblEnglish2?.text = arrE[102]
        cell.lblEnglish3?.text = arrE[103]
        cell.lblEnglish4?.text = arrE[104]
    }
    if indexPath.row == 21 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[105]
        cell.lblPunjabi1?.text = arrP[106]
        cell.lblPunjabi2?.text = arrP[107]
        cell.lblPunjabi3?.text = arrP[108]
        cell.lblPunjabi4?.text = arrP[109]
    
        cell.lblEnglish?.text = arrE[105]
        cell.lblEnglish1?.text = arrE[106]
        cell.lblEnglish2?.text = arrE[107]
        cell.lblEnglish3?.text = arrE[108]
        cell.lblEnglish4?.text = arrE[109]
    }
    if indexPath.row == 22 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[110]
        cell.lblPunjabi1?.text = arrP[111]
        cell.lblPunjabi2?.text = arrP[112]
        cell.lblPunjabi3?.text = arrP[113]
        cell.lblPunjabi4?.text = arrP[114]
        
        cell.lblEnglish?.text = arrE[110]
        cell.lblEnglish1?.text = arrE[111]
        cell.lblEnglish2?.text = arrE[112]
        cell.lblEnglish3?.text = arrE[113]
        cell.lblEnglish4?.text = arrE[114]
    }
    if indexPath.row == 23 && indexPath.section == 0
    {
        cell.lblPunjabi?.text = arrP[115]
        cell.lblPunjabi1?.text = arrP[116]
        cell.lblPunjabi2?.text = arrP[117]
        cell.lblPunjabi3?.text = arrP[118]
        cell.lblPunjabi4?.text = arrP[119]
    
        cell.lblEnglish?.text = arrE[115]
        cell.lblEnglish1?.text = arrE[116]
        cell.lblEnglish2?.text = arrE[117]
        cell.lblEnglish3?.text = arrE[118]
        cell.lblEnglish4?.text = arrE[119]
    }
        
        if indexPath.row == 24 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[200]
            cell.lblPunjabi1?.text = arrP[201]
            cell.lblPunjabi2?.text = arrP[202]
            cell.lblPunjabi3?.text = arrP[203]
            cell.lblPunjabi4?.text = arrP[204]
            
            cell.lblEnglish?.text = arrE[200]
            cell.lblEnglish1?.text = arrE[201]
            cell.lblEnglish2?.text = arrE[202]
            cell.lblEnglish3?.text = arrE[203]
            cell.lblEnglish4?.text = arrE[204]
        }
        if indexPath.row == 25 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[205]
            cell.lblPunjabi1?.text = arrP[206]
            cell.lblPunjabi2?.text = arrP[207]
            cell.lblPunjabi3?.text = arrP[208]
            cell.lblPunjabi4?.text = arrP[209]
            
            cell.lblEnglish?.text = arrE[205]
            cell.lblEnglish1?.text = arrE[206]
            cell.lblEnglish2?.text = arrE[207]
            cell.lblEnglish3?.text = arrE[208]
            cell.lblEnglish4?.text = arrE[209]
        }
        if indexPath.row == 26 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[210]
            cell.lblPunjabi1?.text = arrP[211]
            cell.lblPunjabi2?.text = arrP[212]
            cell.lblPunjabi3?.text = arrP[213]
            cell.lblPunjabi4?.text = arrP[214]
            
            cell.lblEnglish?.text = arrE[210]
            cell.lblEnglish1?.text = arrE[211]
            cell.lblEnglish2?.text = arrE[212]
            cell.lblEnglish3?.text = arrE[213]
            cell.lblEnglish4?.text = arrE[214]
        }
        if indexPath.row == 27 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[215]
            cell.lblPunjabi1?.text = arrP[216]
            cell.lblPunjabi2?.text = arrP[217]
            cell.lblPunjabi3?.text = arrP[218]
            cell.lblPunjabi4?.text = arrP[219]
            
            cell.lblEnglish?.text = arrE[215]
            cell.lblEnglish1?.text = arrE[216]
            cell.lblEnglish2?.text = arrE[217]
            cell.lblEnglish3?.text = arrE[218]
            cell.lblEnglish4?.text = arrE[219]
        }
        if indexPath.row == 28 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[220]
            cell.lblPunjabi1?.text = arrP[221]
            cell.lblPunjabi2?.text = arrP[222]
            cell.lblPunjabi3?.text = arrP[223]
            cell.lblPunjabi4?.text = arrP[224]
            
            cell.lblEnglish?.text = arrE[220]
            cell.lblEnglish1?.text = arrE[221]
            cell.lblEnglish2?.text = arrE[222]
            cell.lblEnglish3?.text = arrE[223]
            cell.lblEnglish4?.text = arrE[224]
        }
        if indexPath.row == 29 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[225]
            cell.lblPunjabi1?.text = arrP[226]
            cell.lblPunjabi2?.text = arrP[227]
            cell.lblPunjabi3?.text = arrP[228]
            cell.lblPunjabi4?.text = arrP[229]
            
            cell.lblEnglish?.text = arrE[225]
            cell.lblEnglish1?.text = arrE[226]
            cell.lblEnglish2?.text = arrE[227]
            cell.lblEnglish3?.text = arrE[228]
            cell.lblEnglish4?.text = arrE[229]
        }
        if indexPath.row == 30 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[230]
            cell.lblPunjabi1?.text = arrP[231]
            cell.lblPunjabi2?.text = arrP[232]
            cell.lblPunjabi3?.text = ""
            cell.lblPunjabi4?.text = ""
            
            cell.lblEnglish?.text = arrE[230]
            cell.lblEnglish1?.text = arrE[231]
            cell.lblEnglish2?.text = arrE[232]
            cell.lblEnglish3?.text = ""
            cell.lblEnglish4?.text = ""
        }
        if indexPath.row == 31 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[235]
            cell.lblPunjabi1?.text = arrP[236]
            cell.lblPunjabi2?.text = arrP[237]
            cell.lblPunjabi3?.text = arrP[238]
            cell.lblPunjabi4?.text = arrP[239]
            
            cell.lblEnglish?.text = arrE[235]
            cell.lblEnglish1?.text = arrE[236]
            cell.lblEnglish2?.text = arrE[237]
            cell.lblEnglish3?.text = arrE[238]
            cell.lblEnglish4?.text = arrE[239]
        }
        if indexPath.row == 32 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[240]
            cell.lblPunjabi1?.text = arrP[241]
            cell.lblPunjabi2?.text = arrP[242]
            cell.lblPunjabi3?.text = arrP[243]
            cell.lblPunjabi4?.text = arrP[244]
            
            cell.lblEnglish?.text = arrE[240]
            cell.lblEnglish1?.text = arrE[241]
            cell.lblEnglish2?.text = arrE[242]
            cell.lblEnglish3?.text = arrE[243]
            cell.lblEnglish4?.text = arrE[244]
        }
        if indexPath.row == 33 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[245]
            cell.lblPunjabi1?.text = arrP[246]
            cell.lblPunjabi2?.text = arrP[247]
            cell.lblPunjabi3?.text = arrP[248]
            cell.lblPunjabi4?.text = arrP[249]
            
            cell.lblEnglish?.text = arrE[245]
            cell.lblEnglish1?.text = arrE[246]
            cell.lblEnglish2?.text = arrE[247]
            cell.lblEnglish3?.text = arrE[248]
            cell.lblEnglish4?.text = arrE[249]
        }
        if indexPath.row == 34 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[250]
            cell.lblPunjabi1?.text = arrP[251]
            cell.lblPunjabi2?.text = arrP[252]
            cell.lblPunjabi3?.text = arrP[253]
            cell.lblPunjabi4?.text = arrP[254]
            
            cell.lblEnglish?.text = arrE[250]
            cell.lblEnglish1?.text = arrE[251]
            cell.lblEnglish2?.text = arrE[252]
            cell.lblEnglish3?.text = arrE[253]
            cell.lblEnglish4?.text = arrE[254]
        }
        if indexPath.row == 35 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[255]
            cell.lblPunjabi1?.text = arrP[256]
            cell.lblPunjabi2?.text = arrP[257]
            cell.lblPunjabi3?.text = arrP[258]
            cell.lblPunjabi4?.text = arrP[259]
            
            cell.lblEnglish?.text = arrE[255]
            cell.lblEnglish1?.text = arrE[256]
            cell.lblEnglish2?.text = arrE[257]
            cell.lblEnglish3?.text = arrE[258]
            cell.lblEnglish4?.text = arrE[259]
        }
        if indexPath.row == 36 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[260]
            cell.lblPunjabi1?.text = arrP[261]
            cell.lblPunjabi2?.text = arrP[262]
            cell.lblPunjabi3?.text = arrP[263]
            cell.lblPunjabi4?.text = arrP[264]
            
            cell.lblEnglish?.text = arrE[260]
            cell.lblEnglish1?.text = arrE[261]
            cell.lblEnglish2?.text = arrE[262]
            cell.lblEnglish3?.text = arrE[263]
            cell.lblEnglish4?.text = arrE[264]
        }
        if indexPath.row == 37 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[265]
            cell.lblPunjabi1?.text = arrP[266]
            cell.lblPunjabi2?.text = arrP[267]
            cell.lblPunjabi3?.text = arrP[268]
            cell.lblPunjabi4?.text = arrP[269]
            
            cell.lblEnglish?.text = arrE[265]
            cell.lblEnglish1?.text = arrE[266]
            cell.lblEnglish2?.text = arrE[267]
            cell.lblEnglish3?.text = arrE[268]
            cell.lblEnglish4?.text = arrE[269]
        }
        if indexPath.row == 38 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[270]
            cell.lblPunjabi1?.text = arrP[271]
            cell.lblPunjabi2?.text = arrP[272]
            cell.lblPunjabi3?.text = arrP[273]
            cell.lblPunjabi4?.text = arrP[274]
            
            cell.lblEnglish?.text = arrE[270]
            cell.lblEnglish1?.text = arrE[271]
            cell.lblEnglish2?.text = arrE[272]
            cell.lblEnglish3?.text = arrE[273]
            cell.lblEnglish4?.text = arrE[274]
        }
        if indexPath.row == 39 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[275]
            cell.lblPunjabi1?.text = arrP[276]
            cell.lblPunjabi2?.text = arrP[277]
            cell.lblPunjabi3?.text = arrP[278]
            cell.lblPunjabi4?.text = arrP[279]
            
            cell.lblEnglish?.text = arrE[275]
            cell.lblEnglish1?.text = arrE[276]
            cell.lblEnglish2?.text = arrE[277]
            cell.lblEnglish3?.text = arrE[278]
            cell.lblEnglish4?.text = arrE[279]
        }
        if indexPath.row == 40 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[280]
            cell.lblPunjabi1?.text = arrP[281]
            cell.lblPunjabi2?.text = arrP[282]
            cell.lblPunjabi3?.text = arrP[283]
            cell.lblPunjabi4?.text = arrP[284]
            
            cell.lblEnglish?.text = arrE[280]
            cell.lblEnglish1?.text = arrE[281]
            cell.lblEnglish2?.text = arrE[282]
            cell.lblEnglish3?.text = arrE[283]
            cell.lblEnglish4?.text = arrE[284]
        }
        if indexPath.row == 41 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[285]
            cell.lblPunjabi1?.text = arrP[286]
            cell.lblPunjabi2?.text = arrP[287]
            cell.lblPunjabi3?.text = arrP[288]
            cell.lblPunjabi4?.text = arrP[289]
            
            cell.lblEnglish?.text = arrE[285]
            cell.lblEnglish1?.text = arrE[286]
            cell.lblEnglish2?.text = arrE[287]
            cell.lblEnglish3?.text = arrE[288]
            cell.lblEnglish4?.text = arrE[289]
        }
        if indexPath.row == 42 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[290]
            cell.lblPunjabi1?.text = arrP[291]
            cell.lblPunjabi2?.text = arrP[292]
            cell.lblPunjabi3?.text = arrP[293]
            cell.lblPunjabi4?.text = arrP[294]
            
            cell.lblEnglish?.text = arrE[290]
            cell.lblEnglish1?.text = arrE[291]
            cell.lblEnglish2?.text = arrE[292]
            cell.lblEnglish3?.text = arrE[293]
            cell.lblEnglish4?.text = arrE[294]
        }
        if indexPath.row == 43 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[295]
            cell.lblPunjabi1?.text = arrP[296]
            cell.lblPunjabi2?.text = arrP[297]
            cell.lblPunjabi3?.text = arrP[298]
            cell.lblPunjabi4?.text = arrP[299]
            
            cell.lblEnglish?.text = arrE[295]
            cell.lblEnglish1?.text = arrE[296]
            cell.lblEnglish2?.text = arrE[297]
            cell.lblEnglish3?.text = arrE[298]
            cell.lblEnglish4?.text = arrE[299]
        }
        if indexPath.row == 44 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[300]
            cell.lblPunjabi1?.text = arrP[301]
            cell.lblPunjabi2?.text = arrP[302]
            cell.lblPunjabi3?.text = arrP[303]
            cell.lblPunjabi4?.text = arrP[304]
            
            cell.lblEnglish?.text = arrE[300]
            cell.lblEnglish1?.text = arrE[301]
            cell.lblEnglish2?.text = arrE[302]
            cell.lblEnglish3?.text = arrE[303]
            cell.lblEnglish4?.text = arrE[304]
        }
        if indexPath.row == 45 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[305]
            cell.lblPunjabi1?.text = arrP[306]
            cell.lblPunjabi2?.text = arrP[307]
            cell.lblPunjabi3?.text = arrP[308]
            cell.lblPunjabi4?.text = arrP[309]
            
            cell.lblEnglish?.text = arrE[305]
            cell.lblEnglish1?.text = arrE[306]
            cell.lblEnglish2?.text = arrE[307]
            cell.lblEnglish3?.text = arrE[308]
            cell.lblEnglish4?.text = arrE[309]
        }
        if indexPath.row == 46 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[310]
            cell.lblPunjabi1?.text = arrP[311]
            cell.lblPunjabi2?.text = arrP[312]
            cell.lblPunjabi3?.text = arrP[313]
            cell.lblPunjabi4?.text = arrP[314]
            
            cell.lblEnglish?.text = arrE[310]
            cell.lblEnglish1?.text = arrE[311]
            cell.lblEnglish2?.text = arrE[312]
            cell.lblEnglish3?.text = arrE[313]
            cell.lblEnglish4?.text = arrE[314]
        }
        if indexPath.row == 47 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[315]
            cell.lblPunjabi1?.text = arrP[316]
            cell.lblPunjabi2?.text = arrP[317]
            cell.lblPunjabi3?.text = arrP[318]
            cell.lblPunjabi4?.text = arrP[319]
            
            cell.lblEnglish?.text = arrE[315]
            cell.lblEnglish1?.text = arrE[316]
            cell.lblEnglish2?.text = arrE[317]
            cell.lblEnglish3?.text = arrE[318]
            cell.lblEnglish4?.text = arrE[319]
        }
        
        return cell
        }
    func show() {
        let path = Bundle.main.path(forResource: "0001", ofType: "json")
        let url = URL(fileURLWithPath: path!)
        let path1 = Bundle.main.path(forResource: "0003", ofType: "json")
        let url1 = URL(fileURLWithPath: path1!)
        
        do {
            let jsonData = try Data(contentsOf: url)
            result = try JSONDecoder().decode([Result].self, from: jsonData)
            
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
        }
        catch {
            print("Error: \(error)")
        }
        
        do {
            let jsonData = try Data(contentsOf: url1)
            result = try JSONDecoder().decode([Result].self, from: jsonData)

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
        }
        catch {
            print("Error: \(error)")
        }
    }
    func vc() {
        //            var page = [Int]()
        //            page.reserveCapacity(numberCount)
        //                for i in numbers {
        //                    let result = result![0].lines[i].source_page
        //                    page.append(result)
        ////                    print (english)
        ////                        print(result)
        //            }
        //            cell.lblPage?.text = "\(page[0])"
    }
}
