//
//  FirebaseAuthController2.swift
//  question-app
//
//  Created by Алишер Халыкбаев on 21.02.2019.
//  Copyright © 2019 Алишер Халыкбаев. All rights reserved.
//

import UIKit
import FirebaseUI
import Firebase


class FirebaseAuthController2: UIViewController, FUIAuthDelegate {
    
    @IBOutlet weak var authNameLabel: UILabel!
    
    fileprivate(set) var auth:Auth?
    fileprivate(set) var authUI: FUIAuth? //only set internally but get externally
    fileprivate(set) var authStateListenerHandle: AuthStateDidChangeListenerHandle?

    //call login UI
    @IBAction func loginAction(sender: AnyObject) {
        // Present the default login view controller provided by authUI
        let authViewController = authUI?.authViewController();
        self.present(authViewController!, animated: true, completion: nil)
        
    }
    
    //log out
    @IBAction func quitButton(_ sender: UIButton) {
        try! auth!.signOut()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //implement objects of standert classes
        self.auth = Auth.auth()
        self.authUI = FUIAuth.defaultAuthUI()
        self.authUI?.delegate = self
        self.authUI?.providers = [
         FUIEmailAuth()
        ]
        authNameLabel.text = auth?.currentUser?.displayName
       
        //user auth listener
        self.authStateListenerHandle = self.auth?.addStateDidChangeListener { (auth, user) in
            guard user != nil else {
                self.loginAction(sender: self)
                return
            }
        }
         authNameLabel.text = auth?.currentUser?.displayName
    }
    
    //error exeption
    func authUI(_ authUI: FUIAuth, didSignInWith user: User?, error: Error?) {
        guard let authError = error else { return }
        
        let errorCode = UInt((authError as NSError).code)
        
        switch errorCode {
        case FUIAuthErrorCode.userCancelledSignIn.rawValue:
            print("User cancelled sign-in");
            break
            
        default:
            let detailedError = (authError as NSError).userInfo[NSUnderlyingErrorKey] ?? authError
            print("Login error: \((detailedError as! NSError).localizedDescription)");
        }
        
        authNameLabel.text = user?.displayName

    }
    
    
}
