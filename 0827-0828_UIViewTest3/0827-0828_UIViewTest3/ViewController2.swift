//
//  ViewController2.swift
//  0827-0828_UIViewTest3
//
//  Created by simyo on 2021/08/30.
//

import UIKit

class ViewController2: UIViewController {
    let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
//    let collectionView = UICollectionView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // 1. 추가 -> 실패
        collectionView.setCollectionViewLayout(UICollectionViewFlowLayout.init(), animated: true)
        view.addSubview(collectionView)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
