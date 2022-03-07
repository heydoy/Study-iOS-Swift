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
    
    @IBOutlet weak var nameLabelCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var bountyLabelCenterX: NSLayoutConstraint!
    
    
    let viewModel = DetailViewModel()


    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        prepareAnimation()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showAnimation()
    }
    
    private func prepareAnimation() {
        // view property를 이용하기 때문에 constraint은 쓰지않는다.
//        nameLabelCenterX.constant = view.bounds.width
//        bountyLabelCenterX.constant = view.bounds.width
        
        nameLabel.transform = CGAffineTransform(translationX: view.bounds.width, y: 0).scaledBy(x: 3, y: 3).rotated(by: 180)
        bountyLabel.transform = CGAffineTransform(translationX: view.bounds.width, y: 0).scaledBy(x: 3, y: 3).rotated(by: 180)
        
        nameLabel.alpha = 0
        bountyLabel.alpha = 0
    }
    
    
    private func showAnimation() {
//        // constraint를 이용한 애니메이션
//        nameLabelCenterX.constant = 0
//        bountyLabelCenterX.constant = 0
//
////         //매우 간단한 버전
////        UIView.animate(withDuration: 0.3) {
////            self.view.layoutIfNeeded()
////        }
//
////         //조금 복잡해진 버전
////        UIView.animate(withDuration: 0.3,
////                       delay: 0.1,
////                       options: .curveEaseIn,
////                       animations: {
////            self.view.layoutIfNeeded() },
////                       completion: nil)
//
//        // 최종 버전
//        UIView.animate(withDuration: 0.5,
//                       delay: 0.2,
//                       usingSpringWithDamping: 0.6,
//                       initialSpringVelocity: 2,
//                       options: .allowUserInteraction,
//                       animations: {
//            self.view.layoutIfNeeded()  },
//                       completion: nil)
//
//        UIView.transition(with: imgView,
//                          duration: 0.3,
//                          options: .transitionFlipFromLeft,
//                          animations: nil,
//                          completion: nil)
        
        //  이름 레이블 애니메이팅
        UIView.animate(withDuration: 1,
                       delay: 0.1,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 2,
                       options: .allowUserInteraction,
                       animations: {
            self.nameLabel.transform = CGAffineTransform.identity
            self.nameLabel.alpha = 1
        },
                       completion: nil)
        
        // 바운티 레이블 애니메이팅 (0.2초 딜레이)
        UIView.animate(withDuration: 1,
                       delay: 0.3,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 2,
                       options: .allowUserInteraction,
                       animations: {
            self.bountyLabel.transform = CGAffineTransform.identity
            self.bountyLabel.alpha = 1
        },
                       completion: nil)
        
        // 이미지 플립핑
        UIView.transition(with: imgView,
                          duration: 0.3,
                          options: .transitionFlipFromLeft,
                          animations: nil,
                          completion: nil)
    }
    
    
    func updateUI() {
        if let bountyInfo = viewModel.bountyInfo {
                    imgView.image =  bountyInfo.image
                    nameLabel.text = bountyInfo.name
                    bountyLabel.text = "\(bountyInfo.bounty)"
                }
        
//        if let bountyInfo = self.bountyInfo {
//            imgView.image =  bountyInfo.image
//            nameLabel.text = bountyInfo.name
//            bountyLabel.text = "\(bountyInfo.bounty)"
//        }
        
        
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


class DetailViewModel {
    // 뷰모델은 모델을 가지고 있어야 한다.
    var bountyInfo: BountyInfo?

    // bountyInfo 내용을 업데이트하는 함수
    func update(model : BountyInfo?) {
        bountyInfo = model
    }
    
}
