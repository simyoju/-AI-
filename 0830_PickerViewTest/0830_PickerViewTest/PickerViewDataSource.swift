//
//  PickerViewDataSource.swift
//  0830_PickerViewTest
//
//  Created by simyo on 2021/08/30.
//

import UIKit

class PickerViewDataSource: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 4
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        "\(row)번째 row"
    }
    

}
