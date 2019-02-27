//
//  FirebaseAuthController.swift
//  question-app
//
//  Created by Алишер Халыкбаев on 20.02.2019.
//  Copyright © 2019 Алишер Халыкбаев. All rights reserved.
//

import UIKit
import FirebaseUI

class FirebaseAuthController: UIViewController {
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
   
        //Get the default auth UI object
        let authUI = FUIAuth.defaultAuthUI()
        
        guard authUI != nil else{
            //log the error
            return
        }
        
        //Set ourselves as the delegate
        authUI?.delegate = self
        
        //Get a reference to the auth UI view controller
       let authViewController = authUI!.authViewController()
        
        //Show it
        present(authViewController, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension FirebaseAuthController: FUIAuthDelegate{
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        
        if error != nil{
            //Log error
            return
        }
        
        //authDataResult?.user.uid
        
        performSegue(withIdentifier: "goHome", sender: self)
    }
}
