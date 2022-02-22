//
//  DetailViewController.swift
//  BountyList
//
//  Created by Doy Kim on 2022/02/13.
//

import UIKit


class DetailViewController: UIViewController {
    
//     MVVM
//
//     Model
//     - BountyInfo
//
//     View
//     - imgView, nameLabel, bountyLabel
//     > 뷰들은 뷰모델을 통해서 구성되기
//
//     ViewModel
//     - DetailViewModel
//     > 뷰 레이어에서 필요한 메서드 만들기
//     > 모델을 가지고 있어야 한다. (BountyInfo 들)
    
    
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
//    var name: String?
//    var bounty: Int?
    
    var bountyInfo: BountyInfo?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        if let bountyInfo = self.bountyInfo {
            imgView.image =  bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountyLabel.text = "\(bountyInfo.bounty)"
        }
//        if let name = self.name, let bounty = self.bounty  {
//            let img = UIImage(named: "\(name).jpg")
//            imgView.image =  img
//            nameLabel.text = name
//            bountyLabel.text = "\(bounty)"
//        }
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
