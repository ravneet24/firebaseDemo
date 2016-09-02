//
//  ViewController.swift
//  firebaseDemo
//
//  Created by ravneet arora on 9/3/16.
//  Copyright © 2016 Ravneet Arora. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        FIRAuth.auth()?.createUserWithEmail("gaurav@gmail.com", password: "gaurav123") { (user, error) in
//            
//        }
        FIRAuth.auth()?.signInWithEmail("gaurav@gmail.com", password: "gaurav123") { (user, error) in
            if error == nil{
                print("success")

            }
            else{
            print(error?.description)
            }
        }
        let ref = FIRDatabase.database().reference()
        ref.child("response").setValue("result")
        let key = ref.child("result").childByAutoId().key
        
        //ref.updateChildValues(key)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

