//
//  ChildNutritionGuideVC.swift
//  MomCare
//
//  Created by Eissa on 5/4/20.
//  Copyright © 2020 Eissa. All rights reserved.
//

import UIKit

class ChildNutritionGuideVC: UIViewController {
    
    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var textView1: UITextView!
    @IBOutlet weak var title2: UILabel!
    @IBOutlet weak var bootomContentView: UIView!
    @IBOutlet weak var titleLbl: LocalizableLabel!
    @IBOutlet weak var backBu: UIButton!
    @IBOutlet weak var textview2: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bootomContentView.addShadow(location: .top, color: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), opacity: 0.2, radius: 5.0)
        self.backBu.set(image: UIImage(named: "arrow_point"), title: "", titlePosition: .right, additionalSpacing: 10, state: .normal, color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        self.titleLbl.text = self.nutritionLbl
        self.title1.text = self.titlee1
        self.title2.text = self.titlee2
        self.textView1.text = self.text1
        self.textview2.text = self.text2
    }
    
    var nutritionLbl = ""
    var titlee1 = ""
    var titlee2 = ""
    var text1 = ""
    var text2 = ""
    
    
    @IBAction func donebuTapped(_ sender: UIButton) {
        //        correct-3
        self.handleSelectedBu(sender, Selectedmage: "correct", unSelectedmage: "correct-3")
    }
    
    @IBAction func saveBuTapped(_ sender: Any) {
    }
    
    @IBAction func backBuTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
