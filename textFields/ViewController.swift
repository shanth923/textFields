//
//  ViewController.swift
//  textFields
//
//  Created by R Shantha Kumar on 1/17/20.
//  Copyright © 2020 R Shantha Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    var passwordText:UITextField!
    var nameText:UITextField!
    
    var imagevied:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        validateGraphic()
         imagevied.isHidden = true
        passwordText.delegate = self
        nameText.delegate = self
        // Do any additional setup after loading the view.
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        
        
        if(textField == nameText){
            
            let allowCharater = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz ")
            
            if(string.rangeOfCharacter(from: allowCharater) != nil || string == ""){
                
                imagevied.isHidden = true
                
                
                return true
                
            }else{
                 imagevied.isHidden = false
                 
                
                
            }
            
            
            
        }
        
        return true
        
        
        
    }
    
    
    
    
    
    func validateGraphic(){
        
  
        
        
        nameText = UITextField()
        nameText.frame = CGRect(x: 30, y: 200, width: 250, height: 40)
        nameText.placeholder = "user name"
        nameText.backgroundColor = .lightGray
        view.addSubview(nameText)
        
        imagevied = UIImageView()
        imagevied.frame = CGRect(x: 220, y: 7, width: 20, height: 20)
        imagevied.contentMode = UIView.ContentMode.scaleToFill
        imagevied.image = UIImage(named: "reddot")
        nameText.addSubview(imagevied)
       
        passwordText = UITextField()
        passwordText.frame = CGRect(x: 30, y: 280, width: 250, height: 40)
        passwordText.placeholder = "password"
        passwordText.backgroundColor = .lightGray
        passwordText.isSecureTextEntry = true
        view.addSubview(passwordText)
        
       
        
        
    }
    


}

