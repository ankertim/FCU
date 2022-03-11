//
//  ViewController.swift
//  Login
//
//  Created by kenychen on 2018/10/21.
//  Copyright © 2018 kenychen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPwd: UITextField!
    @IBOutlet weak var inputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //按下return鍵盤收起來
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    //點擊背景收起鍵盤
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @IBAction func loginClick(_ sender: Any) {
    

        //判斷帳密是否正確
        if txtUser.text == "sunny" && txtPwd.text == "1234"{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let homeVC = storyboard.instantiateViewController(withIdentifier: "HomeVC")
            self.present(homeVC,animated: true,completion: nil)
        }
        else if txtUser.text == "robot" && txtPwd.text == "123"{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let chatroom = storyboard.instantiateViewController(withIdentifier: "chatRoom")
            self.present(chatroom,animated: true,completion: nil)
        }
        else{
            let alertVC = UIAlertController(title: "錯誤", message: "帳號或密碼錯誤"
                , preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "確定", style: UIAlertAction.Style.default, handler: nil)
            alertVC.addAction(okButton)
            self.present(alertVC,animated: true,completion: nil)
        
       }
    }
}
