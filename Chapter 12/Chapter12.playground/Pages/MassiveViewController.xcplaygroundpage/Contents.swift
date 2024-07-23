//: [Previous](@previous)

import Foundation
import UIKit

enum NetworkError: Error {
    case badURL
    case requestFailed
    case unknown
}

class NetworkManager {
    
    func fetchData(completion: @escaping (Result<[String], NetworkError>) -> Void) {
        // Simulating a network request which captures self weakly
       
            print("Fetching data... reference to self: \(self)")
        // Simulating a network request delay
        DispatchQueue.global().asyncAfter(deadline: .now() + 2) { [completion] in
            completion(.success(["Result1", "Result2"]))
        }
    }

    deinit {
        print("NetworkManager is being deinitialized")
    }
}

class MassiveViewController: UIViewController {
    // Properties
    var networkManager = NetworkManager()
    var data: [String] = []

    // IBOutlets
    @IBOutlet weak var tableView: UITableView!

    // View lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }

    // Networking logic
    func fetchData() {
        networkManager.fetchData() { result in
            switch result {
            case .success(let newData):
                self.data = newData
                self.tableView.reloadData()
            case .failure(let error):
                print("Error fetching data: \(error)")
            }
        }
    }

    // UITableViewDataSource methods
    // ...
    
    // UITableViewDelegate methods
    // ...
}



//: [Next](@next)
