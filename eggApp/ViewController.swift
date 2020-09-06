//
//  ViewController.swift
//  eggApp
//
//  Created by 金野利哉 on 2020/09/05.
//  Copyright © 2020 金野利哉. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = String(count)
        
//        卵の初期画像
        dispImage()
         
        
    }

    
    @IBOutlet weak var countLabel: UILabel!
    
    
    @IBOutlet weak var textLabel: UILabel!
//    Count Label初期値
    var count :Int = 100
    
    
    
    @IBOutlet weak var ImageView: UIImageView!
    
    
    var dispImageNum = 0
    
    func dispImage() {
        let imageArray = ["egg01","egg02","egg03"]
        
        let name = imageArray[dispImageNum]
//        name = egg01
        
        let image = UIImage(named: name)
        
        ImageView.image = image
        
        
    }
    
    
    @IBAction func button(_ sender: Any) {
//     カウント数に応じたテキストの変更
        count = count - 1
        countLabel.text = String(count)
        
        if (count == 75 ) {
            textLabel.text = "まだまだ！"}
            
        
        else if (count == 50 ) {
            textLabel.text = "あと半分！"
            dispImageNum += 1
        }
        
                
        else if (count == 25 ) {
            textLabel.text = "あと少し！"
        }
        
        else if (count == 0){
            dispImageNum += 1
        }
        
        
        dispImage()
        
                }
            }
            
        
        
    
    

