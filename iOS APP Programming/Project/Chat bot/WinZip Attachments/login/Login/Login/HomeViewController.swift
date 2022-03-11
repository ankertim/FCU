//
//  HomeViewController.swift
//  Login
//
//  Created by RTC24 on 2019/4/15.
//  Copyright © 2019 kenychen. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func userButton(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let userDataVC = storyboard.instantiateViewController(withIdentifier: "UserDataVC")
        self.present(userDataVC, animated: true, completion: nil)
    }
    @IBAction func testButton(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let testVC = storyboard.instantiateViewController(withIdentifier: "TestVC")
        self.present(testVC,animated: true,completion: nil)
    }
    @IBAction func collectButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let collectionVC = storyboard.instantiateViewController(withIdentifier: "CollectionVC")
        self.present(collectionVC, animated: true, completion: nil)
    }
    
    @IBAction func rankButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let rankVC = storyboard.instantiateViewController(withIdentifier: "RankVC")
        self.present(rankVC, animated: true, completion: nil)
    }
    
    @IBAction func MissionButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let missionVC = storyboard.instantiateViewController(withIdentifier: "MissionVC")
        self.present(missionVC, animated: true, completion: nil)
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
