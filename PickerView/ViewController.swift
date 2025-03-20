//
//  ViewController.swift
//  PickerView
//
//  Created by Ömer on 20.03.2025.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDelegate,UIPickerViewDataSource{

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var ulkeler: [String] = ["Türkiye", "Almanya", "Japonya", "Rusya","İtalya"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count
    }

    @IBAction func goster(_ sender: Any) {
    }
    
}

