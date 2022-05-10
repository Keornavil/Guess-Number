

import UIKit

class StartViewController: UIViewController {
    
    @IBAction func startGameButton(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if EventHistory.shared.guesser == 0 {
            guard let viewController = storyboard.instantiateViewController(withIdentifier: "RidderViewController") as? RidderViewController else {return}
            show(viewController as UIViewController, sender: nil)
        } else {
            EventHistory.shared.guessedNumber = Int.random(in: 1...100)
            guard let viewController = storyboard.instantiateViewController(withIdentifier: "GuesstheNumberViewController") as? GuesstheNumberViewController else {return}
            show(viewController as UIViewController, sender: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
