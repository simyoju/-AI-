//
//  ViewController.swift
//  0830_PickerViewTest
//
//  Created by simyo on 2021/08/30.
//

import UIKit

class ViewController: UIViewController {
    
//    let dataSource = PickerViewDataSource()
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 누가 대신해야할지를 알려주는 부분 - 대신하는 자: delegate, 굉장히 많이들 하는 실수가 아래 코드를 적지않는 것
        pickerView.delegate = self
        pickerView.dataSource = self
    }


}

extension ViewController : UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 4
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row)번째 row"
    }
}
