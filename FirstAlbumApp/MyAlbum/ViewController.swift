//
//  ViewController.swift
//  MyAlbum
//
//  Created by Doy Kim on 2022/01/24.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 0
    // var currentValue: Int = 0
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }

    @IBAction func showAlert(_ sender: Any) {
        let message = "가격은  \(currentValue)원 입니다."
        let alert = UIAlertController(title: "hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in self.refresh()} )
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        
    }
    
    func refresh(){
        // arc4random_uniform은 0부터 지정한 숫자-1까지 랜덤한 숫자를 가져옴.
        let randomPrice = arc4random_uniform(10000) + 1
        //타입캐스팅
        currentValue = Int(randomPrice)
        priceLabel.text = "₩\(currentValue)"
    }


}

