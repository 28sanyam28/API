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
        return 153
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
            cell.lblPunjabi?.text = arrP[120]
            cell.lblPunjabi1?.text = arrP[121]
            cell.lblPunjabi2?.text = arrP[122]
            cell.lblPunjabi3?.text = arrP[123]
            cell.lblPunjabi4?.text = arrP[124]
            
            cell.lblEnglish?.text = arrE[120]
            cell.lblEnglish1?.text = arrE[121]
            cell.lblEnglish2?.text = arrE[122]
            cell.lblEnglish3?.text = arrE[123]
            cell.lblEnglish4?.text = arrE[124]
        }
        if indexPath.row == 25 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[125]
            cell.lblPunjabi1?.text = arrP[126]
            cell.lblPunjabi2?.text = arrP[127]
            cell.lblPunjabi3?.text = arrP[128]
            cell.lblPunjabi4?.text = arrP[129]
        
            cell.lblEnglish?.text = arrE[125]
            cell.lblEnglish1?.text = arrE[126]
            cell.lblEnglish2?.text = arrE[127]
            cell.lblEnglish3?.text = arrE[128]
            cell.lblEnglish4?.text = arrE[129]
        }
        if indexPath.row == 26 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[130]
            cell.lblPunjabi1?.text = arrP[131]
            cell.lblPunjabi2?.text = arrP[132]
            cell.lblPunjabi3?.text = arrP[133]
            cell.lblPunjabi4?.text = arrP[134]
            
            cell.lblEnglish?.text = arrE[130]
            cell.lblEnglish1?.text = arrE[131]
            cell.lblEnglish2?.text = arrE[132]
            cell.lblEnglish3?.text = arrE[133]
            cell.lblEnglish4?.text = arrE[134]
        }
        if indexPath.row == 27 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[135]
            cell.lblPunjabi1?.text = arrP[136]
            cell.lblPunjabi2?.text = arrP[137]
            cell.lblPunjabi3?.text = arrP[138]
            cell.lblPunjabi4?.text = arrP[139]
        
            cell.lblEnglish?.text = arrE[135]
            cell.lblEnglish1?.text = arrE[136]
            cell.lblEnglish2?.text = arrE[137]
            cell.lblEnglish3?.text = arrE[138]
            cell.lblEnglish4?.text = arrE[139]
        }
        if indexPath.row == 28 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[140]
            cell.lblPunjabi1?.text = arrP[141]
            cell.lblPunjabi2?.text = arrP[112]
            cell.lblPunjabi3?.text = arrP[113]
            cell.lblPunjabi4?.text = arrP[114]
            
            cell.lblEnglish?.text = arrE[140]
            cell.lblEnglish1?.text = arrE[141]
            cell.lblEnglish2?.text = arrE[142]
            cell.lblEnglish3?.text = arrE[143]
            cell.lblEnglish4?.text = arrE[144]
        }
        if indexPath.row == 29 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[145]
            cell.lblPunjabi1?.text = arrP[146]
            cell.lblPunjabi2?.text = arrP[147]
            cell.lblPunjabi3?.text = arrP[148]
            cell.lblPunjabi4?.text = arrP[149]
        
            cell.lblEnglish?.text = arrE[145]
            cell.lblEnglish1?.text = arrE[146]
            cell.lblEnglish2?.text = arrE[147]
            cell.lblEnglish3?.text = arrE[148]
            cell.lblEnglish4?.text = arrE[149]
        }
        if indexPath.row == 30 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[150]
            cell.lblPunjabi1?.text = arrP[151]
            cell.lblPunjabi2?.text = arrP[152]
            cell.lblPunjabi3?.text = arrP[153]
            cell.lblPunjabi4?.text = arrP[154]
            
            cell.lblEnglish?.text = arrE[150]
            cell.lblEnglish1?.text = arrE[151]
            cell.lblEnglish2?.text = arrE[152]
            cell.lblEnglish3?.text = arrE[153]
            cell.lblEnglish4?.text = arrE[154]
        }
        if indexPath.row == 31 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[155]
            cell.lblPunjabi1?.text = arrP[156]
            cell.lblPunjabi2?.text = arrP[157]
            cell.lblPunjabi3?.text = arrP[158]
            cell.lblPunjabi4?.text = arrP[159]
        
            cell.lblEnglish?.text = arrE[155]
            cell.lblEnglish1?.text = arrE[156]
            cell.lblEnglish2?.text = arrE[157]
            cell.lblEnglish3?.text = arrE[158]
            cell.lblEnglish4?.text = arrE[159]
        }
        if indexPath.row == 32 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[160]
            cell.lblPunjabi1?.text = arrP[161]
            cell.lblPunjabi2?.text = arrP[162]
            cell.lblPunjabi3?.text = arrP[163]
            cell.lblPunjabi4?.text = arrP[164]
            
            cell.lblEnglish?.text = arrE[160]
            cell.lblEnglish1?.text = arrE[161]
            cell.lblEnglish2?.text = arrE[162]
            cell.lblEnglish3?.text = arrE[163]
            cell.lblEnglish4?.text = arrE[164]
        }
        if indexPath.row == 33 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[165]
            cell.lblPunjabi1?.text = arrP[166]
            cell.lblPunjabi2?.text = arrP[167]
            cell.lblPunjabi3?.text = arrP[168]
            cell.lblPunjabi4?.text = arrP[169]
        
            cell.lblEnglish?.text = arrE[165]
            cell.lblEnglish1?.text = arrE[166]
            cell.lblEnglish2?.text = arrE[167]
            cell.lblEnglish3?.text = arrE[168]
            cell.lblEnglish4?.text = arrE[169]
        }
        if indexPath.row == 34 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[170]
            cell.lblPunjabi1?.text = arrP[171]
            cell.lblPunjabi2?.text = arrP[172]
            cell.lblPunjabi3?.text = arrP[173]
            cell.lblPunjabi4?.text = arrP[174]
            
            cell.lblEnglish?.text = arrE[170]
            cell.lblEnglish1?.text = arrE[171]
            cell.lblEnglish2?.text = arrE[172]
            cell.lblEnglish3?.text = arrE[173]
            cell.lblEnglish4?.text = arrE[174]
        }
        if indexPath.row == 35 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[175]
            cell.lblPunjabi1?.text = arrP[176]
            cell.lblPunjabi2?.text = arrP[177]
            cell.lblPunjabi3?.text = arrP[178]
            cell.lblPunjabi4?.text = arrP[179]
        
            cell.lblEnglish?.text = arrE[175]
            cell.lblEnglish1?.text = arrE[176]
            cell.lblEnglish2?.text = arrE[177]
            cell.lblEnglish3?.text = arrE[178]
            cell.lblEnglish4?.text = arrE[179]
        }
        if indexPath.row == 36 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[180]
            cell.lblPunjabi1?.text = arrP[181]
            cell.lblPunjabi2?.text = arrP[182]
            cell.lblPunjabi3?.text = arrP[183]
            cell.lblPunjabi4?.text = arrP[184]
            
            cell.lblEnglish?.text = arrE[180]
            cell.lblEnglish1?.text = arrE[181]
            cell.lblEnglish2?.text = arrE[182]
            cell.lblEnglish3?.text = arrE[183]
            cell.lblEnglish4?.text = arrE[184]
        }
        if indexPath.row == 37 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[185]
            cell.lblPunjabi1?.text = arrP[186]
            cell.lblPunjabi2?.text = arrP[187]
            cell.lblPunjabi3?.text = arrP[188]
            cell.lblPunjabi4?.text = arrP[189]
        
            cell.lblEnglish?.text = arrE[185]
            cell.lblEnglish1?.text = arrE[186]
            cell.lblEnglish2?.text = arrE[187]
            cell.lblEnglish3?.text = arrE[188]
            cell.lblEnglish4?.text = arrE[189]
        }
        if indexPath.row == 38 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[190]
            cell.lblPunjabi1?.text = arrP[191]
            cell.lblPunjabi2?.text = arrP[192]
            cell.lblPunjabi3?.text = arrP[193]
            cell.lblPunjabi4?.text = arrP[194]
            
            cell.lblEnglish?.text = arrE[190]
            cell.lblEnglish1?.text = arrE[191]
            cell.lblEnglish2?.text = arrE[192]
            cell.lblEnglish3?.text = arrE[193]
            cell.lblEnglish4?.text = arrE[194]
        }
        if indexPath.row == 39 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[195]
            cell.lblPunjabi1?.text = arrP[196]
            cell.lblPunjabi2?.text = arrP[197]
            cell.lblPunjabi3?.text = arrP[198]
            cell.lblPunjabi4?.text = arrP[199]
        
            cell.lblEnglish?.text = arrE[195]
            cell.lblEnglish1?.text = arrE[196]
            cell.lblEnglish2?.text = arrE[197]
            cell.lblEnglish3?.text = arrE[198]
            cell.lblEnglish4?.text = arrE[199]
        }
        if indexPath.row == 40 && indexPath.section == 0
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
        if indexPath.row == 41 && indexPath.section == 0
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
        if indexPath.row == 42 && indexPath.section == 0
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
        if indexPath.row == 43 && indexPath.section == 0
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
        if indexPath.row == 44 && indexPath.section == 0
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
        if indexPath.row == 45 && indexPath.section == 0
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
        if indexPath.row == 46 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[230]
            cell.lblPunjabi1?.text = arrP[231]
            cell.lblPunjabi2?.text = arrP[232]
            cell.lblPunjabi3?.text = arrP[233]
            cell.lblPunjabi4?.text = arrP[234]
            
            cell.lblEnglish?.text = arrE[230]
            cell.lblEnglish1?.text = arrE[231]
            cell.lblEnglish2?.text = arrE[232]
            cell.lblEnglish3?.text = arrE[233]
            cell.lblEnglish4?.text = arrE[234]
        }
        if indexPath.row == 47 && indexPath.section == 0
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
        if indexPath.row == 48 && indexPath.section == 0
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
        if indexPath.row == 49 && indexPath.section == 0
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
        if indexPath.row == 50 && indexPath.section == 0
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
        if indexPath.row == 51 && indexPath.section == 0
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
        if indexPath.row == 52 && indexPath.section == 0
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
        if indexPath.row == 53 && indexPath.section == 0
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
        if indexPath.row == 54 && indexPath.section == 0
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
        if indexPath.row == 55 && indexPath.section == 0
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
        if indexPath.row == 56 && indexPath.section == 0
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
        if indexPath.row == 57 && indexPath.section == 0
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
        if indexPath.row == 58 && indexPath.section == 0
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
        if indexPath.row == 59 && indexPath.section == 0
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
        if indexPath.row == 60 && indexPath.section == 0
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
        if indexPath.row == 61 && indexPath.section == 0
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
        if indexPath.row == 62 && indexPath.section == 0
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
        if indexPath.row == 63 && indexPath.section == 0
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
        if indexPath.row == 64 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[320]
            cell.lblPunjabi1?.text = arrP[321]
            cell.lblPunjabi2?.text = arrP[322]
            cell.lblPunjabi3?.text = arrP[323]
            cell.lblPunjabi4?.text = arrP[324]
            
            cell.lblEnglish?.text = arrE[320]
            cell.lblEnglish1?.text = arrE[321]
            cell.lblEnglish2?.text = arrE[322]
            cell.lblEnglish3?.text = arrE[323]
            cell.lblEnglish4?.text = arrE[324]
        }
        if indexPath.row == 65 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[325]
            cell.lblPunjabi1?.text = arrP[326]
            cell.lblPunjabi2?.text = arrP[327]
            cell.lblPunjabi3?.text = arrP[328]
            cell.lblPunjabi4?.text = arrP[329]
            
            cell.lblEnglish?.text = arrE[325]
            cell.lblEnglish1?.text = arrE[326]
            cell.lblEnglish2?.text = arrE[327]
            cell.lblEnglish3?.text = arrE[328]
            cell.lblEnglish4?.text = arrE[329]
        }
        if indexPath.row == 66 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[330]
            cell.lblPunjabi1?.text = arrP[331]
            cell.lblPunjabi2?.text = arrP[332]
            cell.lblPunjabi3?.text = arrP[333]
            cell.lblPunjabi4?.text = arrP[334]
            
            cell.lblEnglish?.text = arrE[330]
            cell.lblEnglish1?.text = arrE[331]
            cell.lblEnglish2?.text = arrE[332]
            cell.lblEnglish3?.text = arrE[333]
            cell.lblEnglish4?.text = arrE[334]
        }
        if indexPath.row == 67 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[335]
            cell.lblPunjabi1?.text = arrP[336]
            cell.lblPunjabi2?.text = arrP[337]
            cell.lblPunjabi3?.text = arrP[338]
            cell.lblPunjabi4?.text = arrP[339]
            
            cell.lblEnglish?.text = arrE[335]
            cell.lblEnglish1?.text = arrE[336]
            cell.lblEnglish2?.text = arrE[337]
            cell.lblEnglish3?.text = arrE[338]
            cell.lblEnglish4?.text = arrE[339]
        }
        if indexPath.row == 68 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[340]
            cell.lblPunjabi1?.text = arrP[341]
            cell.lblPunjabi2?.text = arrP[342]
            cell.lblPunjabi3?.text = arrP[343]
            cell.lblPunjabi4?.text = arrP[344]
            
            cell.lblEnglish?.text = arrE[340]
            cell.lblEnglish1?.text = arrE[341]
            cell.lblEnglish2?.text = arrE[342]
            cell.lblEnglish3?.text = arrE[343]
            cell.lblEnglish4?.text = arrE[344]
        }
        if indexPath.row == 69 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[345]
            cell.lblPunjabi1?.text = arrP[346]
            cell.lblPunjabi2?.text = arrP[347]
            cell.lblPunjabi3?.text = arrP[348]
            cell.lblPunjabi4?.text = arrP[349]
            
            cell.lblEnglish?.text = arrE[345]
            cell.lblEnglish1?.text = arrE[346]
            cell.lblEnglish2?.text = arrE[347]
            cell.lblEnglish3?.text = arrE[348]
            cell.lblEnglish4?.text = arrE[349]
        }
        if indexPath.row == 70 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[350]
            cell.lblPunjabi1?.text = arrP[351]
            cell.lblPunjabi2?.text = arrP[352]
            cell.lblPunjabi3?.text = arrP[353]
            cell.lblPunjabi4?.text = arrP[354]
            
            cell.lblEnglish?.text = arrE[350]
            cell.lblEnglish1?.text = arrE[351]
            cell.lblEnglish2?.text = arrE[352]
            cell.lblEnglish3?.text = arrE[353]
            cell.lblEnglish4?.text = arrE[354]
        }
        if indexPath.row == 71 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[355]
            cell.lblPunjabi1?.text = arrP[356]
            cell.lblPunjabi2?.text = arrP[357]
            cell.lblPunjabi3?.text = arrP[358]
            cell.lblPunjabi4?.text = arrP[359]
            
            cell.lblEnglish?.text = arrE[355]
            cell.lblEnglish1?.text = arrE[356]
            cell.lblEnglish2?.text = arrE[357]
            cell.lblEnglish3?.text = arrE[358]
            cell.lblEnglish4?.text = arrE[359]
        }
        if indexPath.row == 72 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[360]
            cell.lblPunjabi1?.text = arrP[361]
            cell.lblPunjabi2?.text = arrP[362]
            cell.lblPunjabi3?.text = arrP[363]
            cell.lblPunjabi4?.text = arrP[364]
            
            cell.lblEnglish?.text = arrE[360]
            cell.lblEnglish1?.text = arrE[361]
            cell.lblEnglish2?.text = arrE[362]
            cell.lblEnglish3?.text = arrE[363]
            cell.lblEnglish4?.text = arrE[364]
        }
        if indexPath.row == 73 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[365]
            cell.lblPunjabi1?.text = arrP[366]
            cell.lblPunjabi2?.text = arrP[367]
            cell.lblPunjabi3?.text = arrP[368]
            cell.lblPunjabi4?.text = arrP[369]
            
            cell.lblEnglish?.text = arrE[365]
            cell.lblEnglish1?.text = arrE[366]
            cell.lblEnglish2?.text = arrE[367]
            cell.lblEnglish3?.text = arrE[368]
            cell.lblEnglish4?.text = arrE[369]
        }
        if indexPath.row == 74 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[370]
            cell.lblPunjabi1?.text = arrP[371]
            cell.lblPunjabi2?.text = arrP[372]
            cell.lblPunjabi3?.text = arrP[373]
            cell.lblPunjabi4?.text = arrP[374]
            
            cell.lblEnglish?.text = arrE[370]
            cell.lblEnglish1?.text = arrE[371]
            cell.lblEnglish2?.text = arrE[372]
            cell.lblEnglish3?.text = arrE[373]
            cell.lblEnglish4?.text = arrE[374]
        }
        if indexPath.row == 75 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[375]
            cell.lblPunjabi1?.text = arrP[376]
            cell.lblPunjabi2?.text = arrP[377]
            cell.lblPunjabi3?.text = arrP[378]
            cell.lblPunjabi4?.text = arrP[379]
            
            cell.lblEnglish?.text = arrE[375]
            cell.lblEnglish1?.text = arrE[376]
            cell.lblEnglish2?.text = arrE[377]
            cell.lblEnglish3?.text = arrE[378]
            cell.lblEnglish4?.text = arrE[379]
        }
        if indexPath.row == 76 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[380]
            cell.lblPunjabi1?.text = arrP[381]
            cell.lblPunjabi2?.text = arrP[382]
            cell.lblPunjabi3?.text = arrP[383]
            cell.lblPunjabi4?.text = arrP[384]
            
            cell.lblEnglish?.text = arrE[380]
            cell.lblEnglish1?.text = arrE[381]
            cell.lblEnglish2?.text = arrE[382]
            cell.lblEnglish3?.text = arrE[383]
            cell.lblEnglish4?.text = arrE[384]
        }
        if indexPath.row == 77 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[385]
            cell.lblPunjabi1?.text = arrP[386]
            cell.lblPunjabi2?.text = arrP[387]
            cell.lblPunjabi3?.text = arrP[388]
            cell.lblPunjabi4?.text = arrP[389]
            
            cell.lblEnglish?.text = arrE[385]
            cell.lblEnglish1?.text = arrE[386]
            cell.lblEnglish2?.text = arrE[387]
            cell.lblEnglish3?.text = arrE[388]
            cell.lblEnglish4?.text = arrE[389]
        }
        if indexPath.row == 78 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[390]
            cell.lblPunjabi1?.text = arrP[391]
            cell.lblPunjabi2?.text = arrP[392]
            cell.lblPunjabi3?.text = arrP[393]
            cell.lblPunjabi4?.text = arrP[394]
            
            cell.lblEnglish?.text = arrE[390]
            cell.lblEnglish1?.text = arrE[391]
            cell.lblEnglish2?.text = arrE[392]
            cell.lblEnglish3?.text = arrE[393]
            cell.lblEnglish4?.text = arrE[394]
        }
        if indexPath.row == 79 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[395]
            cell.lblPunjabi1?.text = arrP[396]
            cell.lblPunjabi2?.text = arrP[397]
            cell.lblPunjabi3?.text = arrP[398]
            cell.lblPunjabi4?.text = arrP[399]
            
            cell.lblEnglish?.text = arrE[395]
            cell.lblEnglish1?.text = arrE[396]
            cell.lblEnglish2?.text = arrE[397]
            cell.lblEnglish3?.text = arrE[398]
            cell.lblEnglish4?.text = arrE[399]
        }
        if indexPath.row == 80 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[400]
            cell.lblPunjabi1?.text = arrP[401]
            cell.lblPunjabi2?.text = arrP[402]
            cell.lblPunjabi3?.text = arrP[403]
            cell.lblPunjabi4?.text = arrP[404]
            
            cell.lblEnglish?.text = arrE[400]
            cell.lblEnglish1?.text = arrE[401]
            cell.lblEnglish2?.text = arrE[402]
            cell.lblEnglish3?.text = arrE[403]
            cell.lblEnglish4?.text = arrE[404]
        }
        if indexPath.row == 81 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[405]
            cell.lblPunjabi1?.text = arrP[406]
            cell.lblPunjabi2?.text = arrP[407]
            cell.lblPunjabi3?.text = arrP[408]
            cell.lblPunjabi4?.text = arrP[409]
            
            cell.lblEnglish?.text = arrE[405]
            cell.lblEnglish1?.text = arrE[406]
            cell.lblEnglish2?.text = arrE[407]
            cell.lblEnglish3?.text = arrE[408]
            cell.lblEnglish4?.text = arrE[409]
        }
        if indexPath.row == 82 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[410]
            cell.lblPunjabi1?.text = arrP[411]
            cell.lblPunjabi2?.text = arrP[412]
            cell.lblPunjabi3?.text = arrP[413]
            cell.lblPunjabi4?.text = arrP[414]
            
            cell.lblEnglish?.text = arrE[410]
            cell.lblEnglish1?.text = arrE[411]
            cell.lblEnglish2?.text = arrE[412]
            cell.lblEnglish3?.text = arrE[413]
            cell.lblEnglish4?.text = arrE[414]
        }
        if indexPath.row == 83 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[415]
            cell.lblPunjabi1?.text = arrP[416]
            cell.lblPunjabi2?.text = arrP[417]
            cell.lblPunjabi3?.text = arrP[418]
            cell.lblPunjabi4?.text = arrP[419]
            
            cell.lblEnglish?.text = arrE[415]
            cell.lblEnglish1?.text = arrE[416]
            cell.lblEnglish2?.text = arrE[417]
            cell.lblEnglish3?.text = arrE[418]
            cell.lblEnglish4?.text = arrE[419]
        }
        if indexPath.row == 84 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[420]
            cell.lblPunjabi1?.text = arrP[421]
            cell.lblPunjabi2?.text = arrP[422]
            cell.lblPunjabi3?.text = arrP[423]
            cell.lblPunjabi4?.text = arrP[424]
            
            cell.lblEnglish?.text = arrE[420]
            cell.lblEnglish1?.text = arrE[421]
            cell.lblEnglish2?.text = arrE[422]
            cell.lblEnglish3?.text = arrE[423]
            cell.lblEnglish4?.text = arrE[424]
        }
        if indexPath.row == 85 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[425]
            cell.lblPunjabi1?.text = arrP[426]
            cell.lblPunjabi2?.text = arrP[427]
            cell.lblPunjabi3?.text = arrP[428]
            cell.lblPunjabi4?.text = arrP[429]
            
            cell.lblEnglish?.text = arrE[425]
            cell.lblEnglish1?.text = arrE[426]
            cell.lblEnglish2?.text = arrE[427]
            cell.lblEnglish3?.text = arrE[428]
            cell.lblEnglish4?.text = arrE[429]
        }
        if indexPath.row == 86 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[430]
            cell.lblPunjabi1?.text = arrP[431]
            cell.lblPunjabi2?.text = arrP[432]
            cell.lblPunjabi3?.text = arrP[433]
            cell.lblPunjabi4?.text = arrP[434]
            
            cell.lblEnglish?.text = arrE[430]
            cell.lblEnglish1?.text = arrE[431]
            cell.lblEnglish2?.text = arrE[432]
            cell.lblEnglish3?.text = arrE[433]
            cell.lblEnglish4?.text = arrE[434]
        }
        if indexPath.row == 87 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[435]
            cell.lblPunjabi1?.text = arrP[436]
            cell.lblPunjabi2?.text = arrP[437]
            cell.lblPunjabi3?.text = arrP[438]
            cell.lblPunjabi4?.text = arrP[439]
            
            cell.lblEnglish?.text = arrE[435]
            cell.lblEnglish1?.text = arrE[436]
            cell.lblEnglish2?.text = arrE[437]
            cell.lblEnglish3?.text = arrE[438]
            cell.lblEnglish4?.text = arrE[439]
        }
        if indexPath.row == 88 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[440]
            cell.lblPunjabi1?.text = arrP[441]
            cell.lblPunjabi2?.text = arrP[442]
            cell.lblPunjabi3?.text = arrP[443]
            cell.lblPunjabi4?.text = arrP[444]
            
            cell.lblEnglish?.text = arrE[440]
            cell.lblEnglish1?.text = arrE[441]
            cell.lblEnglish2?.text = arrE[442]
            cell.lblEnglish3?.text = arrE[443]
            cell.lblEnglish4?.text = arrE[444]
        }
        if indexPath.row == 89 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[445]
            cell.lblPunjabi1?.text = arrP[446]
            cell.lblPunjabi2?.text = arrP[447]
            cell.lblPunjabi3?.text = arrP[448]
            cell.lblPunjabi4?.text = arrP[449]
            
            cell.lblEnglish?.text = arrE[445]
            cell.lblEnglish1?.text = arrE[446]
            cell.lblEnglish2?.text = arrE[447]
            cell.lblEnglish3?.text = arrE[448]
            cell.lblEnglish4?.text = arrE[449]
        }
        if indexPath.row == 90 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[450]
            cell.lblPunjabi1?.text = arrP[451]
            cell.lblPunjabi2?.text = arrP[452]
            cell.lblPunjabi3?.text = arrP[453]
            cell.lblPunjabi4?.text = arrP[454]
            
            cell.lblEnglish?.text = arrE[450]
            cell.lblEnglish1?.text = arrE[451]
            cell.lblEnglish2?.text = arrE[452]
            cell.lblEnglish3?.text = arrE[453]
            cell.lblEnglish4?.text = arrE[454]
        }
        if indexPath.row == 91 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[455]
            cell.lblPunjabi1?.text = arrP[456]
            cell.lblPunjabi2?.text = arrP[457]
            cell.lblPunjabi3?.text = arrP[458]
            cell.lblPunjabi4?.text = arrP[459]
            
            cell.lblEnglish?.text = arrE[455]
            cell.lblEnglish1?.text = arrE[456]
            cell.lblEnglish2?.text = arrE[457]
            cell.lblEnglish3?.text = arrE[458]
            cell.lblEnglish4?.text = arrE[459]
        }
        if indexPath.row == 92 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[460]
            cell.lblPunjabi1?.text = arrP[461]
            cell.lblPunjabi2?.text = arrP[462]
            cell.lblPunjabi3?.text = arrP[463]
            cell.lblPunjabi4?.text = arrP[464]
            
            cell.lblEnglish?.text = arrE[460]
            cell.lblEnglish1?.text = arrE[461]
            cell.lblEnglish2?.text = arrE[462]
            cell.lblEnglish3?.text = arrE[463]
            cell.lblEnglish4?.text = arrE[464]
        }
        if indexPath.row == 93 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[465]
            cell.lblPunjabi1?.text = arrP[466]
            cell.lblPunjabi2?.text = arrP[467]
            cell.lblPunjabi3?.text = arrP[468]
            cell.lblPunjabi4?.text = arrP[469]
            
            cell.lblEnglish?.text = arrE[465]
            cell.lblEnglish1?.text = arrE[466]
            cell.lblEnglish2?.text = arrE[467]
            cell.lblEnglish3?.text = arrE[468]
            cell.lblEnglish4?.text = arrE[469]
        }
        if indexPath.row == 94 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[470]
            cell.lblPunjabi1?.text = arrP[471]
            cell.lblPunjabi2?.text = arrP[472]
            cell.lblPunjabi3?.text = arrP[473]
            cell.lblPunjabi4?.text = arrP[474]
            
            cell.lblEnglish?.text = arrE[470]
            cell.lblEnglish1?.text = arrE[471]
            cell.lblEnglish2?.text = arrE[472]
            cell.lblEnglish3?.text = arrE[473]
            cell.lblEnglish4?.text = arrE[474]
        }
        if indexPath.row == 95 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[475]
            cell.lblPunjabi1?.text = arrP[476]
            cell.lblPunjabi2?.text = arrP[477]
            cell.lblPunjabi3?.text = arrP[478]
            cell.lblPunjabi4?.text = arrP[479]
            
            cell.lblEnglish?.text = arrE[475]
            cell.lblEnglish1?.text = arrE[476]
            cell.lblEnglish2?.text = arrE[477]
            cell.lblEnglish3?.text = arrE[478]
            cell.lblEnglish4?.text = arrE[479]
        }
        if indexPath.row == 96 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[480]
            cell.lblPunjabi1?.text = arrP[481]
            cell.lblPunjabi2?.text = arrP[482]
            cell.lblPunjabi3?.text = arrP[483]
            cell.lblPunjabi4?.text = arrP[484]
            
            cell.lblEnglish?.text = arrE[480]
            cell.lblEnglish1?.text = arrE[481]
            cell.lblEnglish2?.text = arrE[482]
            cell.lblEnglish3?.text = arrE[483]
            cell.lblEnglish4?.text = arrE[484]
        }
        if indexPath.row == 97 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[485]
            cell.lblPunjabi1?.text = arrP[486]
            cell.lblPunjabi2?.text = arrP[487]
            cell.lblPunjabi3?.text = arrP[488]
            cell.lblPunjabi4?.text = arrP[489]
            
            cell.lblEnglish?.text = arrE[485]
            cell.lblEnglish1?.text = arrE[486]
            cell.lblEnglish2?.text = arrE[487]
            cell.lblEnglish3?.text = arrE[488]
            cell.lblEnglish4?.text = arrE[489]
        }
        if indexPath.row == 98 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[490]
            cell.lblPunjabi1?.text = arrP[491]
            cell.lblPunjabi2?.text = arrP[492]
            cell.lblPunjabi3?.text = arrP[493]
            cell.lblPunjabi4?.text = arrP[494]
            
            cell.lblEnglish?.text = arrE[490]
            cell.lblEnglish1?.text = arrE[491]
            cell.lblEnglish2?.text = arrE[492]
            cell.lblEnglish3?.text = arrE[493]
            cell.lblEnglish4?.text = arrE[494]
        }
        if indexPath.row == 99 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[495]
            cell.lblPunjabi1?.text = arrP[496]
            cell.lblPunjabi2?.text = arrP[497]
            cell.lblPunjabi3?.text = arrP[498]
            cell.lblPunjabi4?.text = arrP[499]
            
            cell.lblEnglish?.text = arrE[495]
            cell.lblEnglish1?.text = arrE[496]
            cell.lblEnglish2?.text = arrE[497]
            cell.lblEnglish3?.text = arrE[498]
            cell.lblEnglish4?.text = arrE[499]
        }
        if indexPath.row == 100 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[500]
            cell.lblPunjabi1?.text = arrP[501]
            cell.lblPunjabi2?.text = arrP[502]
            cell.lblPunjabi3?.text = arrP[503]
            cell.lblPunjabi4?.text = arrP[504]
            
            cell.lblEnglish?.text = arrE[500]
            cell.lblEnglish1?.text = arrE[501]
            cell.lblEnglish2?.text = arrE[502]
            cell.lblEnglish3?.text = arrE[503]
            cell.lblEnglish4?.text = arrE[504]
        }
        if indexPath.row == 101 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[505]
            cell.lblPunjabi1?.text = arrP[506]
            cell.lblPunjabi2?.text = arrP[507]
            cell.lblPunjabi3?.text = arrP[508]
            cell.lblPunjabi4?.text = arrP[509]
            
            cell.lblEnglish?.text = arrE[505]
            cell.lblEnglish1?.text = arrE[506]
            cell.lblEnglish2?.text = arrE[507]
            cell.lblEnglish3?.text = arrE[508]
            cell.lblEnglish4?.text = arrE[509]
        }
        if indexPath.row == 102 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[510]
            cell.lblPunjabi1?.text = arrP[511]
            cell.lblPunjabi2?.text = arrP[512]
            cell.lblPunjabi3?.text = arrP[513]
            cell.lblPunjabi4?.text = arrP[514]
            
            cell.lblEnglish?.text = arrE[510]
            cell.lblEnglish1?.text = arrE[511]
            cell.lblEnglish2?.text = arrE[512]
            cell.lblEnglish3?.text = arrE[513]
            cell.lblEnglish4?.text = arrE[514]
        }
        if indexPath.row == 103 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[515]
            cell.lblPunjabi1?.text = arrP[516]
            cell.lblPunjabi2?.text = arrP[517]
            cell.lblPunjabi3?.text = arrP[518]
            cell.lblPunjabi4?.text = arrP[519]
            
            cell.lblEnglish?.text = arrE[515]
            cell.lblEnglish1?.text = arrE[516]
            cell.lblEnglish2?.text = arrE[517]
            cell.lblEnglish3?.text = arrE[518]
            cell.lblEnglish4?.text = arrE[519]
        }
        if indexPath.row == 104 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[520]
            cell.lblPunjabi1?.text = arrP[521]
            cell.lblPunjabi2?.text = arrP[522]
            cell.lblPunjabi3?.text = arrP[523]
            cell.lblPunjabi4?.text = arrP[524]
            
            cell.lblEnglish?.text = arrE[520]
            cell.lblEnglish1?.text = arrE[521]
            cell.lblEnglish2?.text = arrE[522]
            cell.lblEnglish3?.text = arrE[523]
            cell.lblEnglish4?.text = arrE[524]
        }
        if indexPath.row == 105 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[525]
            cell.lblPunjabi1?.text = arrP[526]
            cell.lblPunjabi2?.text = arrP[527]
            cell.lblPunjabi3?.text = arrP[528]
            cell.lblPunjabi4?.text = arrP[529]
            
            cell.lblEnglish?.text = arrE[525]
            cell.lblEnglish1?.text = arrE[526]
            cell.lblEnglish2?.text = arrE[527]
            cell.lblEnglish3?.text = arrE[528]
            cell.lblEnglish4?.text = arrE[529]
        }
        if indexPath.row == 106 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[530]
            cell.lblPunjabi1?.text = arrP[531]
            cell.lblPunjabi2?.text = arrP[532]
            cell.lblPunjabi3?.text = arrP[533]
            cell.lblPunjabi4?.text = arrP[534]
            
            cell.lblEnglish?.text = arrE[530]
            cell.lblEnglish1?.text = arrE[531]
            cell.lblEnglish2?.text = arrE[532]
            cell.lblEnglish3?.text = arrE[533]
            cell.lblEnglish4?.text = arrE[534]
        }
        if indexPath.row == 107 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[535]
            cell.lblPunjabi1?.text = arrP[536]
            cell.lblPunjabi2?.text = arrP[537]
            cell.lblPunjabi3?.text = arrP[538]
            cell.lblPunjabi4?.text = arrP[539]
            
            cell.lblEnglish?.text = arrE[535]
            cell.lblEnglish1?.text = arrE[536]
            cell.lblEnglish2?.text = arrE[537]
            cell.lblEnglish3?.text = arrE[538]
            cell.lblEnglish4?.text = arrE[539]
        }
        if indexPath.row == 108 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[540]
            cell.lblPunjabi1?.text = arrP[541]
            cell.lblPunjabi2?.text = arrP[542]
            cell.lblPunjabi3?.text = arrP[543]
            cell.lblPunjabi4?.text = arrP[544]
            
            cell.lblEnglish?.text = arrE[540]
            cell.lblEnglish1?.text = arrE[541]
            cell.lblEnglish2?.text = arrE[542]
            cell.lblEnglish3?.text = arrE[543]
            cell.lblEnglish4?.text = arrE[544]
        }
        if indexPath.row == 109 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[545]
            cell.lblPunjabi1?.text = arrP[546]
            cell.lblPunjabi2?.text = arrP[547]
            cell.lblPunjabi3?.text = arrP[548]
            cell.lblPunjabi4?.text = arrP[549]
            
            cell.lblEnglish?.text = arrE[545]
            cell.lblEnglish1?.text = arrE[546]
            cell.lblEnglish2?.text = arrE[547]
            cell.lblEnglish3?.text = arrE[548]
            cell.lblEnglish4?.text = arrE[549]
        }
        if indexPath.row == 110 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[550]
            cell.lblPunjabi1?.text = arrP[551]
            cell.lblPunjabi2?.text = arrP[552]
            cell.lblPunjabi3?.text = arrP[553]
            cell.lblPunjabi4?.text = arrP[554]
            
            cell.lblEnglish?.text = arrE[550]
            cell.lblEnglish1?.text = arrE[551]
            cell.lblEnglish2?.text = arrE[552]
            cell.lblEnglish3?.text = arrE[553]
            cell.lblEnglish4?.text = arrE[554]
        }
        if indexPath.row == 111 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[555]
            cell.lblPunjabi1?.text = arrP[556]
            cell.lblPunjabi2?.text = arrP[557]
            cell.lblPunjabi3?.text = arrP[558]
            cell.lblPunjabi4?.text = arrP[559]
            
            cell.lblEnglish?.text = arrE[555]
            cell.lblEnglish1?.text = arrE[556]
            cell.lblEnglish2?.text = arrE[557]
            cell.lblEnglish3?.text = arrE[558]
            cell.lblEnglish4?.text = arrE[559]
        }
        if indexPath.row == 112 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[560]
            cell.lblPunjabi1?.text = arrP[561]
            cell.lblPunjabi2?.text = arrP[562]
            cell.lblPunjabi3?.text = arrP[563]
            cell.lblPunjabi4?.text = arrP[564]
            
            cell.lblEnglish?.text = arrE[560]
            cell.lblEnglish1?.text = arrE[561]
            cell.lblEnglish2?.text = arrE[562]
            cell.lblEnglish3?.text = arrE[563]
            cell.lblEnglish4?.text = arrE[564]
        }
        if indexPath.row == 113 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[565]
            cell.lblPunjabi1?.text = arrP[566]
            cell.lblPunjabi2?.text = arrP[567]
            cell.lblPunjabi3?.text = arrP[568]
            cell.lblPunjabi4?.text = arrP[569]
            
            cell.lblEnglish?.text = arrE[565]
            cell.lblEnglish1?.text = arrE[566]
            cell.lblEnglish2?.text = arrE[567]
            cell.lblEnglish3?.text = arrE[568]
            cell.lblEnglish4?.text = arrE[569]
        }
        if indexPath.row == 114 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[570]
            cell.lblPunjabi1?.text = arrP[571]
            cell.lblPunjabi2?.text = arrP[572]
            cell.lblPunjabi3?.text = arrP[573]
            cell.lblPunjabi4?.text = arrP[574]
            
            cell.lblEnglish?.text = arrE[570]
            cell.lblEnglish1?.text = arrE[571]
            cell.lblEnglish2?.text = arrE[572]
            cell.lblEnglish3?.text = arrE[573]
            cell.lblEnglish4?.text = arrE[574]
        }
        if indexPath.row == 115 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[575]
            cell.lblPunjabi1?.text = arrP[576]
            cell.lblPunjabi2?.text = arrP[577]
            cell.lblPunjabi3?.text = arrP[578]
            cell.lblPunjabi4?.text = arrP[579]
            
            cell.lblEnglish?.text = arrE[575]
            cell.lblEnglish1?.text = arrE[576]
            cell.lblEnglish2?.text = arrE[577]
            cell.lblEnglish3?.text = arrE[578]
            cell.lblEnglish4?.text = arrE[579]
        }
        if indexPath.row == 116 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[580]
            cell.lblPunjabi1?.text = arrP[581]
            cell.lblPunjabi2?.text = arrP[582]
            cell.lblPunjabi3?.text = arrP[583]
            cell.lblPunjabi4?.text = arrP[584]
            
            cell.lblEnglish?.text = arrE[580]
            cell.lblEnglish1?.text = arrE[581]
            cell.lblEnglish2?.text = arrE[582]
            cell.lblEnglish3?.text = arrE[583]
            cell.lblEnglish4?.text = arrE[584]
        }
        if indexPath.row == 117 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[585]
            cell.lblPunjabi1?.text = arrP[586]
            cell.lblPunjabi2?.text = arrP[587]
            cell.lblPunjabi3?.text = arrP[588]
            cell.lblPunjabi4?.text = arrP[589]
            
            cell.lblEnglish?.text = arrE[585]
            cell.lblEnglish1?.text = arrE[586]
            cell.lblEnglish2?.text = arrE[587]
            cell.lblEnglish3?.text = arrE[588]
            cell.lblEnglish4?.text = arrE[589]
        }
        if indexPath.row == 118 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[590]
            cell.lblPunjabi1?.text = arrP[591]
            cell.lblPunjabi2?.text = arrP[592]
            cell.lblPunjabi3?.text = arrP[593]
            cell.lblPunjabi4?.text = arrP[594]
            
            cell.lblEnglish?.text = arrE[590]
            cell.lblEnglish1?.text = arrE[591]
            cell.lblEnglish2?.text = arrE[592]
            cell.lblEnglish3?.text = arrE[593]
            cell.lblEnglish4?.text = arrE[594]
        }
        if indexPath.row == 119 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[595]
            cell.lblPunjabi1?.text = arrP[596]
            cell.lblPunjabi2?.text = arrP[597]
            cell.lblPunjabi3?.text = arrP[598]
            cell.lblPunjabi4?.text = arrP[599]
            
            cell.lblEnglish?.text = arrE[595]
            cell.lblEnglish1?.text = arrE[596]
            cell.lblEnglish2?.text = arrE[597]
            cell.lblEnglish3?.text = arrE[598]
            cell.lblEnglish4?.text = arrE[599]
        }
        if indexPath.row == 120 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[600]
            cell.lblPunjabi1?.text = arrP[601]
            cell.lblPunjabi2?.text = arrP[602]
            cell.lblPunjabi3?.text = arrP[603]
            cell.lblPunjabi4?.text = arrP[604]
            
            cell.lblEnglish?.text = arrE[600]
            cell.lblEnglish1?.text = arrE[601]
            cell.lblEnglish2?.text = arrE[602]
            cell.lblEnglish3?.text = arrE[603]
            cell.lblEnglish4?.text = arrE[604]
        }
        if indexPath.row == 121 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[605]
            cell.lblPunjabi1?.text = arrP[606]
            cell.lblPunjabi2?.text = arrP[607]
            cell.lblPunjabi3?.text = arrP[608]
            cell.lblPunjabi4?.text = arrP[609]
            
            cell.lblEnglish?.text = arrE[605]
            cell.lblEnglish1?.text = arrE[606]
            cell.lblEnglish2?.text = arrE[607]
            cell.lblEnglish3?.text = arrE[608]
            cell.lblEnglish4?.text = arrE[609]
        }
        if indexPath.row == 122 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[610]
            cell.lblPunjabi1?.text = arrP[611]
            cell.lblPunjabi2?.text = arrP[612]
            cell.lblPunjabi3?.text = arrP[613]
            cell.lblPunjabi4?.text = arrP[614]
            
            cell.lblEnglish?.text = arrE[610]
            cell.lblEnglish1?.text = arrE[611]
            cell.lblEnglish2?.text = arrE[612]
            cell.lblEnglish3?.text = arrE[613]
            cell.lblEnglish4?.text = arrE[614]
        }
        if indexPath.row == 123 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[615]
            cell.lblPunjabi1?.text = arrP[616]
            cell.lblPunjabi2?.text = arrP[617]
            cell.lblPunjabi3?.text = arrP[618]
            cell.lblPunjabi4?.text = arrP[619]
            
            cell.lblEnglish?.text = arrE[615]
            cell.lblEnglish1?.text = arrE[616]
            cell.lblEnglish2?.text = arrE[617]
            cell.lblEnglish3?.text = arrE[618]
            cell.lblEnglish4?.text = arrE[619]
        }
        if indexPath.row == 124 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[620]
            cell.lblPunjabi1?.text = arrP[621]
            cell.lblPunjabi2?.text = arrP[622]
            cell.lblPunjabi3?.text = arrP[623]
            cell.lblPunjabi4?.text = arrP[624]
            
            cell.lblEnglish?.text = arrE[620]
            cell.lblEnglish1?.text = arrE[621]
            cell.lblEnglish2?.text = arrE[622]
            cell.lblEnglish3?.text = arrE[623]
            cell.lblEnglish4?.text = arrE[624]
        }
        if indexPath.row == 125 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[625]
            cell.lblPunjabi1?.text = arrP[626]
            cell.lblPunjabi2?.text = arrP[627]
            cell.lblPunjabi3?.text = arrP[628]
            cell.lblPunjabi4?.text = arrP[629]
            
            cell.lblEnglish?.text = arrE[625]
            cell.lblEnglish1?.text = arrE[626]
            cell.lblEnglish2?.text = arrE[627]
            cell.lblEnglish3?.text = arrE[628]
            cell.lblEnglish4?.text = arrE[629]
        }
        if indexPath.row == 126 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[630]
            cell.lblPunjabi1?.text = arrP[631]
            cell.lblPunjabi2?.text = arrP[632]
            cell.lblPunjabi3?.text = arrP[633]
            cell.lblPunjabi4?.text = arrP[634]
            
            cell.lblEnglish?.text = arrE[630]
            cell.lblEnglish1?.text = arrE[631]
            cell.lblEnglish2?.text = arrE[632]
            cell.lblEnglish3?.text = arrE[633]
            cell.lblEnglish4?.text = arrE[634]
        }
        if indexPath.row == 127 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[635]
            cell.lblPunjabi1?.text = arrP[636]
            cell.lblPunjabi2?.text = arrP[637]
            cell.lblPunjabi3?.text = arrP[638]
            cell.lblPunjabi4?.text = arrP[639]
            
            cell.lblEnglish?.text = arrE[635]
            cell.lblEnglish1?.text = arrE[636]
            cell.lblEnglish2?.text = arrE[637]
            cell.lblEnglish3?.text = arrE[638]
            cell.lblEnglish4?.text = arrE[639]
        }
        if indexPath.row == 128 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[640]
            cell.lblPunjabi1?.text = arrP[641]
            cell.lblPunjabi2?.text = arrP[642]
            cell.lblPunjabi3?.text = arrP[643]
            cell.lblPunjabi4?.text = arrP[644]
            
            cell.lblEnglish?.text = arrE[640]
            cell.lblEnglish1?.text = arrE[641]
            cell.lblEnglish2?.text = arrE[642]
            cell.lblEnglish3?.text = arrE[643]
            cell.lblEnglish4?.text = arrE[644]
        }
        if indexPath.row == 129 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[645]
            cell.lblPunjabi1?.text = arrP[646]
            cell.lblPunjabi2?.text = arrP[647]
            cell.lblPunjabi3?.text = arrP[648]
            cell.lblPunjabi4?.text = arrP[649]
            
            cell.lblEnglish?.text = arrE[645]
            cell.lblEnglish1?.text = arrE[646]
            cell.lblEnglish2?.text = arrE[647]
            cell.lblEnglish3?.text = arrE[648]
            cell.lblEnglish4?.text = arrE[649]
        }
        if indexPath.row == 130 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[650]
            cell.lblPunjabi1?.text = arrP[651]
            cell.lblPunjabi2?.text = arrP[652]
            cell.lblPunjabi3?.text = arrP[653]
            cell.lblPunjabi4?.text = arrP[654]
            
            cell.lblEnglish?.text = arrE[650]
            cell.lblEnglish1?.text = arrE[651]
            cell.lblEnglish2?.text = arrE[652]
            cell.lblEnglish3?.text = arrE[653]
            cell.lblEnglish4?.text = arrE[654]
        }
        if indexPath.row == 131 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[655]
            cell.lblPunjabi1?.text = arrP[656]
            cell.lblPunjabi2?.text = arrP[657]
            cell.lblPunjabi3?.text = arrP[658]
            cell.lblPunjabi4?.text = arrP[659]
            
            cell.lblEnglish?.text = arrE[655]
            cell.lblEnglish1?.text = arrE[656]
            cell.lblEnglish2?.text = arrE[657]
            cell.lblEnglish3?.text = arrE[658]
            cell.lblEnglish4?.text = arrE[659]
        }
        if indexPath.row == 132 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[660]
            cell.lblPunjabi1?.text = arrP[661]
            cell.lblPunjabi2?.text = arrP[662]
            cell.lblPunjabi3?.text = arrP[663]
            cell.lblPunjabi4?.text = arrP[664]
            
            cell.lblEnglish?.text = arrE[660]
            cell.lblEnglish1?.text = arrE[661]
            cell.lblEnglish2?.text = arrE[662]
            cell.lblEnglish3?.text = arrE[663]
            cell.lblEnglish4?.text = arrE[664]
        }
        if indexPath.row == 133 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[665]
            cell.lblPunjabi1?.text = arrP[666]
            cell.lblPunjabi2?.text = arrP[667]
            cell.lblPunjabi3?.text = arrP[668]
            cell.lblPunjabi4?.text = arrP[669]
            
            cell.lblEnglish?.text = arrE[665]
            cell.lblEnglish1?.text = arrE[666]
            cell.lblEnglish2?.text = arrE[667]
            cell.lblEnglish3?.text = arrE[668]
            cell.lblEnglish4?.text = arrE[669]
        }
        if indexPath.row == 134 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[670]
            cell.lblPunjabi1?.text = arrP[671]
            cell.lblPunjabi2?.text = arrP[672]
            cell.lblPunjabi3?.text = arrP[673]
            cell.lblPunjabi4?.text = arrP[674]
            
            cell.lblEnglish?.text = arrE[670]
            cell.lblEnglish1?.text = arrE[671]
            cell.lblEnglish2?.text = arrE[672]
            cell.lblEnglish3?.text = arrE[673]
            cell.lblEnglish4?.text = arrE[674]
        }
        if indexPath.row == 135 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[675]
            cell.lblPunjabi1?.text = arrP[676]
            cell.lblPunjabi2?.text = arrP[677]
            cell.lblPunjabi3?.text = arrP[678]
            cell.lblPunjabi4?.text = arrP[679]
            
            cell.lblEnglish?.text = arrE[675]
            cell.lblEnglish1?.text = arrE[676]
            cell.lblEnglish2?.text = arrE[677]
            cell.lblEnglish3?.text = arrE[678]
            cell.lblEnglish4?.text = arrE[679]
        }
        if indexPath.row == 136 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[680]
            cell.lblPunjabi1?.text = arrP[681]
            cell.lblPunjabi2?.text = arrP[682]
            cell.lblPunjabi3?.text = arrP[683]
            cell.lblPunjabi4?.text = arrP[684]
            
            cell.lblEnglish?.text = arrE[680]
            cell.lblEnglish1?.text = arrE[681]
            cell.lblEnglish2?.text = arrE[682]
            cell.lblEnglish3?.text = arrE[683]
            cell.lblEnglish4?.text = arrE[684]
        }
        if indexPath.row == 137 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[685]
            cell.lblPunjabi1?.text = arrP[686]
            cell.lblPunjabi2?.text = arrP[687]
            cell.lblPunjabi3?.text = arrP[688]
            cell.lblPunjabi4?.text = arrP[689]
            
            cell.lblEnglish?.text = arrE[685]
            cell.lblEnglish1?.text = arrE[686]
            cell.lblEnglish2?.text = arrE[687]
            cell.lblEnglish3?.text = arrE[688]
            cell.lblEnglish4?.text = arrE[689]
        }
        if indexPath.row == 138 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[690]
            cell.lblPunjabi1?.text = arrP[691]
            cell.lblPunjabi2?.text = arrP[692]
            cell.lblPunjabi3?.text = arrP[693]
            cell.lblPunjabi4?.text = arrP[694]
            
            cell.lblEnglish?.text = arrE[690]
            cell.lblEnglish1?.text = arrE[691]
            cell.lblEnglish2?.text = arrE[692]
            cell.lblEnglish3?.text = arrE[693]
            cell.lblEnglish4?.text = arrE[694]
        }
        if indexPath.row == 139 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[695]
            cell.lblPunjabi1?.text = arrP[696]
            cell.lblPunjabi2?.text = arrP[697]
            cell.lblPunjabi3?.text = arrP[698]
            cell.lblPunjabi4?.text = arrP[699]
            
            cell.lblEnglish?.text = arrE[695]
            cell.lblEnglish1?.text = arrE[696]
            cell.lblEnglish2?.text = arrE[697]
            cell.lblEnglish3?.text = arrE[698]
            cell.lblEnglish4?.text = arrE[699]
        }
        if indexPath.row == 140 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[700]
            cell.lblPunjabi1?.text = arrP[701]
            cell.lblPunjabi2?.text = arrP[702]
            cell.lblPunjabi3?.text = arrP[703]
            cell.lblPunjabi4?.text = arrP[704]
            
            cell.lblEnglish?.text = arrE[700]
            cell.lblEnglish1?.text = arrE[701]
            cell.lblEnglish2?.text = arrE[702]
            cell.lblEnglish3?.text = arrE[703]
            cell.lblEnglish4?.text = arrE[704]
        }
        if indexPath.row == 141 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[705]
            cell.lblPunjabi1?.text = arrP[706]
            cell.lblPunjabi2?.text = arrP[707]
            cell.lblPunjabi3?.text = arrP[708]
            cell.lblPunjabi4?.text = arrP[709]
            
            cell.lblEnglish?.text = arrE[705]
            cell.lblEnglish1?.text = arrE[706]
            cell.lblEnglish2?.text = arrE[707]
            cell.lblEnglish3?.text = arrE[708]
            cell.lblEnglish4?.text = arrE[709]
        }
        if indexPath.row == 142 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[710]
            cell.lblPunjabi1?.text = arrP[711]
            cell.lblPunjabi2?.text = arrP[712]
            cell.lblPunjabi3?.text = arrP[713]
            cell.lblPunjabi4?.text = arrP[714]
            
            cell.lblEnglish?.text = arrE[710]
            cell.lblEnglish1?.text = arrE[711]
            cell.lblEnglish2?.text = arrE[712]
            cell.lblEnglish3?.text = arrE[713]
            cell.lblEnglish4?.text = arrE[714]
        }
        if indexPath.row == 143 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[715]
            cell.lblPunjabi1?.text = arrP[716]
            cell.lblPunjabi2?.text = arrP[717]
            cell.lblPunjabi3?.text = arrP[718]
            cell.lblPunjabi4?.text = arrP[719]
            
            cell.lblEnglish?.text = arrE[715]
            cell.lblEnglish1?.text = arrE[716]
            cell.lblEnglish2?.text = arrE[717]
            cell.lblEnglish3?.text = arrE[718]
            cell.lblEnglish4?.text = arrE[719]
        }
        if indexPath.row == 144 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[720]
            cell.lblPunjabi1?.text = arrP[721]
            cell.lblPunjabi2?.text = arrP[722]
            cell.lblPunjabi3?.text = arrP[723]
            cell.lblPunjabi4?.text = arrP[724]
            
            cell.lblEnglish?.text = arrE[720]
            cell.lblEnglish1?.text = arrE[721]
            cell.lblEnglish2?.text = arrE[722]
            cell.lblEnglish3?.text = arrE[723]
            cell.lblEnglish4?.text = arrE[724]
        }
        if indexPath.row == 145 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[725]
            cell.lblPunjabi1?.text = arrP[726]
            cell.lblPunjabi2?.text = arrP[727]
            cell.lblPunjabi3?.text = arrP[728]
            cell.lblPunjabi4?.text = arrP[729]
            
            cell.lblEnglish?.text = arrE[725]
            cell.lblEnglish1?.text = arrE[726]
            cell.lblEnglish2?.text = arrE[727]
            cell.lblEnglish3?.text = arrE[728]
            cell.lblEnglish4?.text = arrE[729]
        }
        if indexPath.row == 146 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[730]
            cell.lblPunjabi1?.text = arrP[731]
            cell.lblPunjabi2?.text = arrP[732]
            cell.lblPunjabi3?.text = arrP[733]
            cell.lblPunjabi4?.text = arrP[734]
            
            cell.lblEnglish?.text = arrE[730]
            cell.lblEnglish1?.text = arrE[731]
            cell.lblEnglish2?.text = arrE[732]
            cell.lblEnglish3?.text = arrE[733]
            cell.lblEnglish4?.text = arrE[734]
        }
        if indexPath.row == 147 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[735]
            cell.lblPunjabi1?.text = arrP[736]
            cell.lblPunjabi2?.text = arrP[737]
            cell.lblPunjabi3?.text = arrP[738]
            cell.lblPunjabi4?.text = arrP[739]
            
            cell.lblEnglish?.text = arrE[735]
            cell.lblEnglish1?.text = arrE[736]
            cell.lblEnglish2?.text = arrE[737]
            cell.lblEnglish3?.text = arrE[738]
            cell.lblEnglish4?.text = arrE[739]
        }
        if indexPath.row == 148 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[740]
            cell.lblPunjabi1?.text = arrP[741]
            cell.lblPunjabi2?.text = arrP[742]
            cell.lblPunjabi3?.text = arrP[743]
            cell.lblPunjabi4?.text = arrP[744]
            
            cell.lblEnglish?.text = arrE[740]
            cell.lblEnglish1?.text = arrE[741]
            cell.lblEnglish2?.text = arrE[742]
            cell.lblEnglish3?.text = arrE[743]
            cell.lblEnglish4?.text = arrE[744]
        }
        if indexPath.row == 149 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[745]
            cell.lblPunjabi1?.text = arrP[746]
            cell.lblPunjabi2?.text = arrP[747]
            cell.lblPunjabi3?.text = arrP[748]
            cell.lblPunjabi4?.text = arrP[749]
            
            cell.lblEnglish?.text = arrE[745]
            cell.lblEnglish1?.text = arrE[746]
            cell.lblEnglish2?.text = arrE[747]
            cell.lblEnglish3?.text = arrE[748]
            cell.lblEnglish4?.text = arrE[749]
        }
        if indexPath.row == 150 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[750]
            cell.lblPunjabi1?.text = arrP[751]
            cell.lblPunjabi2?.text = arrP[752]
            cell.lblPunjabi3?.text = arrP[753]
            cell.lblPunjabi4?.text = arrP[754]
            
            cell.lblEnglish?.text = arrE[750]
            cell.lblEnglish1?.text = arrE[751]
            cell.lblEnglish2?.text = arrE[752]
            cell.lblEnglish3?.text = arrE[753]
            cell.lblEnglish4?.text = arrE[754]
        }
        if indexPath.row == 151 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[755]
            cell.lblPunjabi1?.text = arrP[756]
            cell.lblPunjabi2?.text = arrP[757]
            cell.lblPunjabi3?.text = arrP[758]
            cell.lblPunjabi4?.text = arrP[759]
            
            cell.lblEnglish?.text = arrE[755]
            cell.lblEnglish1?.text = arrE[756]
            cell.lblEnglish2?.text = arrE[757]
            cell.lblEnglish3?.text = arrE[758]
            cell.lblEnglish4?.text = arrE[759]
        }
        if indexPath.row == 152 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[760]
            cell.lblPunjabi1?.text = arrP[761]
            cell.lblPunjabi2?.text = arrP[762]
            cell.lblPunjabi3?.text = arrP[763]
            cell.lblPunjabi4?.text = arrP[764]
            
            cell.lblEnglish?.text = arrE[760]
            cell.lblEnglish1?.text = arrE[761]
            cell.lblEnglish2?.text = arrE[762]
            cell.lblEnglish3?.text = arrE[763]
            cell.lblEnglish4?.text = arrE[764]
        }
        if indexPath.row == 153 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[765]
            cell.lblPunjabi1?.text = arrP[766]
            cell.lblPunjabi2?.text = arrP[767]
            cell.lblPunjabi3?.text = arrP[768]
            cell.lblPunjabi4?.text = arrP[769]
            
            cell.lblEnglish?.text = arrE[765]
            cell.lblEnglish1?.text = arrE[766]
            cell.lblEnglish2?.text = arrE[767]
            cell.lblEnglish3?.text = arrE[768]
            cell.lblEnglish4?.text = arrE[769]
        }
        if indexPath.row == 154 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[770]
            cell.lblPunjabi1?.text = arrP[771]
            cell.lblPunjabi2?.text = arrP[772]
            cell.lblPunjabi3?.text = arrP[773]
            cell.lblPunjabi4?.text = arrP[774]
            
            cell.lblEnglish?.text = arrE[770]
            cell.lblEnglish1?.text = arrE[771]
            cell.lblEnglish2?.text = arrE[772]
            cell.lblEnglish3?.text = arrE[773]
            cell.lblEnglish4?.text = arrE[774]
        }
        if indexPath.row == 155 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[775]
            cell.lblPunjabi1?.text = arrP[776]
            cell.lblPunjabi2?.text = arrP[777]
            cell.lblPunjabi3?.text = arrP[778]
            cell.lblPunjabi4?.text = arrP[779]
            
            cell.lblEnglish?.text = arrE[775]
            cell.lblEnglish1?.text = arrE[776]
            cell.lblEnglish2?.text = arrE[777]
            cell.lblEnglish3?.text = arrE[778]
            cell.lblEnglish4?.text = arrE[779]
        }
        if indexPath.row == 156 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[780]
            cell.lblPunjabi1?.text = arrP[781]
            cell.lblPunjabi2?.text = arrP[782]
            cell.lblPunjabi3?.text = arrP[783]
            cell.lblPunjabi4?.text = arrP[784]
            
            cell.lblEnglish?.text = arrE[780]
            cell.lblEnglish1?.text = arrE[781]
            cell.lblEnglish2?.text = arrE[782]
            cell.lblEnglish3?.text = arrE[783]
            cell.lblEnglish4?.text = arrE[784]
        }
        if indexPath.row == 157 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[785]
            cell.lblPunjabi1?.text = arrP[786]
            cell.lblPunjabi2?.text = arrP[787]
            cell.lblPunjabi3?.text = arrP[788]
            cell.lblPunjabi4?.text = arrP[789]
            
            cell.lblEnglish?.text = arrE[785]
            cell.lblEnglish1?.text = arrE[786]
            cell.lblEnglish2?.text = arrE[787]
            cell.lblEnglish3?.text = arrE[788]
            cell.lblEnglish4?.text = arrE[789]
        }
        if indexPath.row == 158 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[790]
            cell.lblPunjabi1?.text = arrP[791]
            cell.lblPunjabi2?.text = arrP[792]
            cell.lblPunjabi3?.text = arrP[793]
            cell.lblPunjabi4?.text = arrP[794]
            
            cell.lblEnglish?.text = arrE[790]
            cell.lblEnglish1?.text = arrE[791]
            cell.lblEnglish2?.text = arrE[792]
            cell.lblEnglish3?.text = arrE[793]
            cell.lblEnglish4?.text = arrE[794]
        }
        if indexPath.row == 159 && indexPath.section == 0
        {
            cell.lblPunjabi?.text = arrP[795]
            cell.lblPunjabi1?.text = arrP[796]
            cell.lblPunjabi2?.text = arrP[797]
            cell.lblPunjabi3?.text = arrP[798]
            cell.lblPunjabi4?.text = arrP[799]
            
            cell.lblEnglish?.text = arrE[795]
            cell.lblEnglish1?.text = arrE[796]
            cell.lblEnglish2?.text = arrE[797]
            cell.lblEnglish3?.text = arrE[798]
            cell.lblEnglish4?.text = arrE[799]
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
