//
//  ViewController.swift
//  UITextField
//
//  Created by D7703_06 on 2018. 3. 19..
//  Copyright © 2018년 IceArrow. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {//UITextField의 델리게이트를 사용하기위해 UITextFieldDelegate사용

    @IBOutlet weak var hello: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self //델리 게이트 연결
        textField.clearButtonMode = UITextFieldViewMode.always
        //전체 삭제 버튼 추가
        textField.placeholder = "입력하세요"
        //초기에 띄워주는 글자
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }// 화면을 터치하면 키보드가 내려감
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    @IBAction func button(_ sender: Any) {
        hello.text = "Hello " + textField.text!
        textField.text = ""
        textField.resignFirstResponder() //버튼을 실행시키면 키보드를 내린다
    }
    //UItextFieldDelegate method
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("I pressed return key")
        hello.text = "Hello " + textField.text!
        textField.text = ""
        textField.resignFirstResponder()
        //버튼을 실행시키면 키보드를 내린다
        return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool{
        view.backgroundColor = UIColor.blue
        return true
    }
    // called when 'return' key pressed. return NO to ignore.

}

