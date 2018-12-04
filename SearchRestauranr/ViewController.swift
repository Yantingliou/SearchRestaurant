//
//  ViewController.swift
//  SearchRestauranr
//
//  Created by 劉彥廷 on 2018/12/4.
//  Copyright © 2018年 liou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func goNextPage(_ labelLocation:String){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LocationCategoryViewController") as! LocationCategoryViewController
        vc.selectTitleString = labelLocation
        navigationController?.pushViewController(vc, animated: true)
    }
    

    @IBAction func taiwanNorth(_ sender: Any) {
        goNextPage("北部")
    }
    
    @IBAction func taiwanCentral(_ sender: Any) {
        goNextPage("中部")
    }
    
    
    @IBAction func taiwanSouth(_ sender: Any) {
        goNextPage("南部")
    }
}

