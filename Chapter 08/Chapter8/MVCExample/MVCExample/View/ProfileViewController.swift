//
//  ProfileViewController.swift
//  MVCExample
//
//  Created by Mihir Das on 18/07/24.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel?
    @IBOutlet var emailLabel: UILabel?
    private var user: User?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel?.text = user?.username ?? ""
        emailLabel?.text = user?.email ?? ""
    }

    func updateView(with user: User) {
        self.user = user
    }
}
