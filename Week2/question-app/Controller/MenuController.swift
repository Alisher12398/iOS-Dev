//
//  MenuController.swift
//  question-app
//
//  Created by Алишер Халыкбаев on 20.02.2019.
//  Copyright © 2019 Алишер Халыкбаев. All rights reserved.
//

import UIKit

struct MyGitHub: Codable {
    
    let name: String?
    let location: String?
    let blog: URL?
    let followers: Int?
    let avatarUrl: URL?
    let repos: Int?
    
    private enum CodingKeys: String, CodingKey {
        case name
        case location
        case blog
        case followers
        case repos = "public_repos"
        case avatarUrl = "avatar_url"
        
    }
}



class MenuController: UIViewController {
    
    @IBOutlet weak var scoreCount: UILabel!
    
    @IBAction func clearScore(_ sender: UIButton) {
        QuizManager.score=0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //score of category in menu
        scoreCount.text = "Счет: \(QuizManager.score)/10"
    }
    
    @IBOutlet weak var text2: UILabel!
    
    
    
//    func fetchResultsFromApi() {
//        struct MyGitHub: Codable {
//
//            let name: String?
//            let location: String?
//            let followers: Int?
//            let avatarUrl: URL?
//            let repos: Int?
//
//            private enum CodingKeys: String, CodingKey {
//                case name
//                case location
//                case followers
//                case repos = "public_repos"
//                case avatarUrl = "avatar_url"
//
//            }
//        }
//        guard let gitUrl = URL(string: "https://api.github.com/users/kobeumut") else { return }
//        URLSession.shared.dataTask(with: gitUrl) { (data, response
//            , error) in
//            guard let data = data else { return }
//            do {
//                let decoder = JSONDecoder()
//                let gitData = try decoder.decode(MyGitHub.self, from: data)
//                print(gitData.name ?? "Empty Name")
//                self.text2.text = gitData.name
//
//            } catch let err {
//                print("Err", err)
//            }
//            }.resume()
//    }
    
}
