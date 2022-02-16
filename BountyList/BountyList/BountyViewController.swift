//
//  BountyViewController.swift
//  BountyList
//
//  Created by Doy Kim on 2022/02/12.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    let nameList = ["brook", "chopper", "franky", "luffy", "nami", "robin", "sanji", "zoro"]
    let bountyList = [33000, 180000, 72000000, 500, 26400000, 31000000, 530000, 4800000 ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // DetailViewController에 데이터를 전달하는 용도.
        
        // 우리가 원하는 세그웨이인지 identifier로 한 번 확인
        if segue.identifier == "showDetail"{
            // 도착하는 화면이 DetailVieewController가 맞는지 확인
            let vc = segue.destination as? DetailViewController
            
            if let index = sender as? Int { // Integer로 다운캐스팅
                vc?.name = nameList[index]
                vc?.bounty = bountyList[index]
            }
        }
    }
    
    
    override func viewDidLoad() {
       super.viewDidLoad()
   }
    
    // UITableViewDataSource
    
    // 테이블 row 갯수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 데이터 배열의 요소 갯수
        return bountyList.count
    }
    
    // 어떻게 테이블 뷰를 표현할 것인지
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        // indexPath는 위치정보를 가지고 있다.
        
        // 셀에 데이터를 세팅
        let img = UIImage(named: "\(nameList[indexPath.row])")
        cell.imgView.image = img
        cell.nameLabel.text = nameList[indexPath.row]
        cell.bountyLabel.text = "\(bountyList[indexPath.row])"
        return cell
    }
    
    // UITableViewDelegate
    
    // 셀(Row)이 클릭되었을 때의 액션
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
        // 몇번째 클릭되어있는지 콘솔에 출력
        //print("--> \(indexPath.row)")
    }
}

class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
}
























