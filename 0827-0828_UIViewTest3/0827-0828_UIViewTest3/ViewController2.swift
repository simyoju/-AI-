//
//  ViewController2.swift
//  0827-0828_UIViewTest3
//
//  Created by simyo on 2021/08/30.
//

import UIKit

class ViewController2: UIViewController {
    // 2.생성시 초기화 -> 에러 발생 안함!!
//    let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
//    let collectionView = UICollectionView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // 1. 추가 -> 실패
//        collectionView.setCollectionViewLayout(UICollectionViewFlowLayout.init(), animated: true)
        // 3. 음.. 색은 보이지 않음.. 추가 안된거같은데
//        collectionView.backgroundColor = .red
//        view.addSubview(collectionView)
        
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
