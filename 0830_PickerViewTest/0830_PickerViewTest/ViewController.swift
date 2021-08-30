//
//  ViewController.swift
//  0830_PickerViewTest
//
//  Created by simyo on 2021/08/30.
//

import UIKit

enum Idol {
    case omg
    case nct127
}

class ViewController: UIViewController {
    
//    let dataSource = PickerViewDataSource()
    let omg = ["효정", "미미", "유아", "승희", "비니", "지호", "아린"]
    let nct127 = ["태일", "태용", "쟈니", "도영", "재현", "정우", "마크", "해찬"]
    
    let components:[Idol] = [.omg, .nct127]
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 누가 대신해야할지를 알려주는 부분 - 대신하는 자: delegate, 굉장히 많이들 하는 실수가 아래 코드를 적지않는 것
        pickerView.delegate = self
        pickerView.dataSource = self
    }


}

extension ViewController : UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let idol = components[component]
        
        switch idol {
        case .omg :  return omg.count
        case .nct127:  return nct127.count 
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let idol = components[component]
        
        switch idol {
        case .omg : return omg[row]
        case .nct127 : return nct127[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let idol = components[component]
        var stringInLabel = ""
        
        switch idol {
        case .omg : stringInLabel.append("\(omg[row])와 ")
        case .nct127 : stringInLabel.append(nct127[row])
        }
        
        label.text = stringInLabel
    }
}
