//
//  TestViewController.swift
//  Login
//
//  Created by 王元廷 on 2019/5/31.
//  Copyright © 2019 kenychen. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    /*struct Qna {
        var problem:String
        var choose:[String] = []
        var answer:Int
        var explanation:String
    }
    var problems = [
        Qna(problem: "請問現在問你問題的是誰?",choose:
            ["Papyrus","Sans","W.D.Gaster"],answer: 2,explanation:"f"),
        Qna(problem: "請問第一個掉進地下世界的人是誰?",choose:
            ["Toriel","Chara","Frisk"],answer: 2,explanation:"j"),
        Qna(problem: "Undyne在垃圾場相識並喜歡上的是誰?",choose:
            ["Papyrus","玩家操控的角色","Alphys"],answer: 3,explanation:"k")
    ]
    problems[0]
    //用來不要超過十題
    var number = 0
    //回答數字 用來比對跟答案是否一樣
    var answerNumber = 0
    //題數
    var numberQuestions = 0
    //分數
    var fraction = 0
    //加入警告控制器
    func warning () {
        var score = ""
        if  fraction < 60{
            score = "不及格，這樣不行喔"
        }else if fraction > 60{
            score = "不錯喔"
        }
        let alert =  UIAlertController(title: score, message: "\(fraction)", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "重新開始", style: .default, handler:{ UIAlertAction in  self.renew()})
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
    }

    @IBAction func nextButton(_ sender: UIButton) {
        
        //取一個亂數
        var random = Int.random(in: 0...2)
        var numbers = random.nextInt()
        let topic = numbers
        //把亂數放進題目
        problemLabel.text = Qna[topic].problem
        answerNumber = Qna[topic].answer
        explanationLabel.text = Qna[topic].explanation
        //用一的迴圈把四個選項放進button中
        for i in 0 ..< selectValueButton.count{
            selectValueButton[i].setTitle(Qna[topic].choose[i], for:.normal)
        }
        number += 1
        numberQuestions += 1
        numberOfQuestionsLabel.text = "\(numberQuestions + 1)"
        nextValueButton.isHidden = true
        explanationLabel.isHidden = true
        //不要讓題目超過十題
        if number == 10{
            number = 0
            warning()
        }
        
    }

        
    @IBAction func selectAnswerButton(_ sender: UIButton) {
        //判斷答案是不是和使用者選的一樣
        if answerNumber == 1{
            fraction += 10
            fractionLabel.text = "\(fraction)"
        }
        explanationLabel.isHidden = false
        nextValueButton.isHidden = false
    }
    
    @IBAction func select1AnswerButton(_ sender: UIButton) {
        //判斷答案是不是和使用者選的一樣
        if answerNumber == 1{
            fraction += 10
            fractionLabel.text = "\(fraction)"
        }
        explanationLabel.isHidden = false
        nextValueButton.isHidden = false
    }
    
    @IBAction func select2AnswerButton(_ sender: UIButton) {
        //判斷答案是不是和使用者選的一樣
        if answerNumber == 1{
            fraction += 10
            fractionLabel.text = "\(fraction)"
        }
        explanationLabel.isHidden = false
        nextValueButton.isHidden = false
    }
    
    @IBAction func select3AnswerButton(_ sender: UIButton) {
        //判斷答案是不是和使用者選的一樣
        if answerNumber == 1{
            fraction += 10
            fractionLabel.text = "\(fraction)"
        }
        explanationLabel.isHidden = false
        nextValueButton.isHidden = false
    }
    
    @IBAction func renewButton(_ sender: UIButton) {
        renew()
    }
    //宣告一個重新開始的方法
    func renew(){
        let random = Int.random(in: 0...Qna.count) GKShuffledDistribution(lowestValue: 0, highestValue: Qna.count - 1)
        var numbers = random.nextInt()
        let topic = numbers
        problemLabel.text = Qna[topic].problem
        answerNumber = Qna[topic].answer
        explanationLabel.text = Qna[topic].explanation
        
        for i in 0 ..< selectValueButton.count{
            selectValueButton[i].setTitle(Qna[topic].choose[i], for:.normal)
        }
        fraction = 0
        fractionLabel.text = "\(fraction)"
        numberQuestions = 0
        numberOfQuestionsLabel.text = "\(numberQuestions + 1)"
        nextValueButton.isHidden = true
        explanationLabel.isHidden = true
    }

        
    
    @IBOutlet weak var fractionLabel: UILabel!
    @IBOutlet var selectValueButton: [UIButton]!
    @IBOutlet weak var numberOfQuestionsLabel: UILabel!
    @IBOutlet weak var nextValueButton: UIButton!
    @IBOutlet weak var problemLabel: UILabel!
    @IBOutlet weak var explanationLabel: UILabel!
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            //把方法放進viewDidLoad裡
            renew()
    
 
        
    }*/
    
    

    
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }*/
 


}
