
import UIKit

class WinnerViewController: UIViewController {
    
    @IBOutlet weak var resultsOfUser: UILabel!
    @IBOutlet weak var resultsOfComputer: UILabel!
    @IBOutlet weak var resultGame: UILabel!
    
    @IBAction func restartGameButton(_ sender: Any) {
        EventHistory.shared.defaultValue()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "StartViewController") as? StartViewController else {return}
        show(viewController as UIViewController, sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsOfUser.text = "Игрок отгадал число за \(EventHistory.shared.attemptNumberUser) попытки"
        resultsOfComputer.text = "Компьютер отгадал число  за \(EventHistory.shared.attemptNumberComputer) попытки"
        if EventHistory.shared.attemptNumberComputer < EventHistory.shared.attemptNumberUser {
            resultGame.text = "Победил компьютер"
        }
        if
            EventHistory.shared.attemptNumberUser < EventHistory.shared.attemptNumberComputer {
            resultGame.text = "Победил игрок"
        }
        if EventHistory.shared.attemptNumberComputer == EventHistory.shared.attemptNumberUser {
            resultGame.text = "Ничья"
        }
    }
}
