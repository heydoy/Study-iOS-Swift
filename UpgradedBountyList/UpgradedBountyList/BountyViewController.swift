//
//  BountyViewController.swift
//  BountyList
//
//  Created by Doy Kim on 2022/02/12.
//

import UIKit

class BountyViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
 
    // MVVM
    
    // Model
    // - BountyInfo
    
    // View
    // - ListCell
    // > ListCell의 필요한 정보를 ViewModel 통해서 받는다.
    // > ListCell은 ViewModel을 통해 받은 정보로 뷰 업데이트
    
    // ViewModel
    // - BountyViewModel
    // > 뷰모델을 만들고 뷰 레이어에서 필요한 메서드 만들기
    // > 모델을 가지고 있어야 한다. (BountyInfo 들)
    
    let viewModel = BountyViewModel()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // DetailViewController에 데이터를 전달하는 용도.
        
        // 우리가 원하는 세그웨이인지 identifier로 한 번 확인
        if segue.identifier == "showDetail"{
            // 도착하는 화면이 DetailVieewController가 맞는지 확인
            let vc = segue.destination as? DetailViewController
            
            if let index = sender as? Int { // Integer로 다운캐스팅
                let bountyInfo = viewModel.bountyInfo(at: index)
                vc?.viewModel.update(model: bountyInfo)
            }
        }
    }
    
    override func viewDidLoad() {
       super.viewDidLoad()
   }
    
    //---> UICollectionViewDataSource
    // 몇 개를 보여줄 지
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // 데이터배열의 요소갯수를 반환해준다.
        return viewModel.numberOfBountyInfoList
    }
    
    // 셀을 어떻게 표현할 지
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridCell", for: indexPath) as? GridCell
        else  {
            return UICollectionViewCell()
        }
        
        //콜렉션 뷰이므로 row가 아니라 indexPath.item ,아이템을 가져와야 한다.
        let bountyInfo = viewModel.bountyInfo(at: indexPath.item)
        cell.update(info: bountyInfo)
        
        return cell
    }
    
    //  ---> UICollectionViewDelegate
    // 셀이 클릭되었을 때 어떻게 처리하는지
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("--->\(indexPath.item)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.item)
    }
    
    //  ---> UICollectionViewDelegateFlowLayout
    // Cell 사이즈를 계산 (다양한 디바이스에서 일관적인 디자인을 보여주기 위해)
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemSpacing: CGFloat = 10
        let textAreaHeight: CGFloat = 65
        
        let width: CGFloat = (collectionView.bounds.width - itemSpacing)/2
        let height: CGFloat = (width * 10/7) + textAreaHeight

        return CGSize(width: width, height: height)
    }
}

class BountyViewModel {
    // ViewModel은 Model을 가지고 있어야한다.
    let bountyInfoList : [BountyInfo] = [
        BountyInfo(name: "brook", bounty: 33000),
        BountyInfo(name: "chopper", bounty: 180000),
        BountyInfo(name: "franky", bounty: 72000000),
        BountyInfo(name: "luffy", bounty: 500),
        BountyInfo(name: "nami", bounty: 26400000),
        BountyInfo(name: "robin", bounty: 31000000),
        BountyInfo(name: "sanji", bounty: 530000),
        BountyInfo(name: "zoro", bounty: 4800000)
    ]
    
    // 모델의 데이터갯수
    var numberOfBountyInfoList: Int {
        return bountyInfoList.count
    }
    
    // 인덱스를 받아서 해당하는 모델의 데이터를 반환하는 함수
    func bountyInfo(at index: Int) -> BountyInfo {
        return bountyInfoList[index]
    }
}

class GridCell: UICollectionViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    

    func update(info: BountyInfo){
        imgView.image = info.image
        nameLabel.text = info.name
        bountyLabel.text = "\(info.bounty)"
    }
}


















