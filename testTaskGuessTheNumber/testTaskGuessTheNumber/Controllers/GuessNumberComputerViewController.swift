
import UIKit

class GuessNumberComputerViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var isWin = false
    
    @IBAction func lessButton(_ sender: Any) {
        let guessedNumber = EventHistory.shared.guessedNumber
        let binValue = EventHistory.shared.binValue()
        
        if binValue > guessedNumber && isWin == true {
            EventHistory.shared.rightBorder = binValue
            isWin = false
        } else {
            showAlert(message: "Не вводите в заблуждение соперника")
        }
    }
    
    @IBAction func moreButton(_ sender: Any) {
        let guessedNumber = EventHistory.shared.guessedNumber
        let binValue = EventHistory.shared.binValue()
        
        if binValue < guessedNumber && isWin == true {
            EventHistory.shared.leftBorder = binValue
            isWin = false
        } else {
            showAlert(message: "Не вводите в заблуждение соперника")
        }
    }
    
    @IBAction func equallyButton(_ sender: Any) {
        let guessedNumber = EventHistory.shared.guessedNumber
        let binValue = EventHistory.shared.binValue()
        if binValue == guessedNumber {
            EventHistory.shared.guesser = 1
            let alert = UIAlertController(title: "Внимание", message: "Компьютер угадал число, ему потребовалось \(EventHistory.shared.attemptNumberComputer) попыток", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "Передать ход игроку", style: .default) { (action) in
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                guard let viewController = storyboard.instantiateViewController(withIdentifier: "StartViewController") as? StartViewController else {return}
                self.show(viewController as UIViewController, sender: nil)
            }
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else {
            showAlert(message: "Не вводите в заблуждение соперника")
        }
    }
    
    @IBAction func computerValueButton(_ sender: Any) {
        label.text = "Компьютер называет число \(EventHistory.shared.binValue())"
        EventHistory.shared.attemptNumberComputer += 1
        isWin = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Внимание", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "ОК", style: .default, handler: nil)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
}
