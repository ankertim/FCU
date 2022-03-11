//
//  RobotViewController.swift
//  Login
//
//  Created by RTC17 on 2019/5/31.
//  Copyright © 2019 kenychen. All rights reserved.
//

import UIKit

class RobotViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var chatUser: UITextField!
    @IBOutlet weak var chatRobot: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    var i:Int=0
    var end:Int = 0
    var user:[String] = ["hi","eat","早安","要吃什麼?","幹","無聊"]
    var robot:[String] =  ["Hi,I am robot","漢堡好吃","早安，使用者","蛋餅＋奶茶","閉嘴","去睡覺"]
    
    @IBAction func send(_ sender: Any) {
        
        i=0
        end=0
        //偵測資料庫來對話
        for i in 0...user.count-1
        {
            if chatUser.text == user[i]{
                
                chatRobot.text = robot[i]
                break
            }
            else{
                
                chatRobot.text = "我不懂你的意思"
            }
            
        }
        //教機器人對話
        let bggStr = String(chatUser.text!)
        if bggStr.prefix(3) == "bgg"
        {
            
            for char in bggStr{
                i=i+1
                if(char=="@"){
                    chatRobot.text = "我學到了"
                    break
                }
            }
            end = bggStr.count-i
            /*if(i!==7){
                
                chatRobot.text="mistake"
            }*/
            let inputString = (bggStr as NSString).substring(with: NSMakeRange(3,i-4))
             let replyString = (bggStr as NSString).substring(with: NSMakeRange(i,end))
             user += [inputString]
             robot += [replyString]
        }
    }
    
    @IBAction func out(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
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
