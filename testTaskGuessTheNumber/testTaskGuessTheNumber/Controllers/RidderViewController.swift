
import UIKit

class RidderViewController: UIViewController {
    
    @IBOutlet weak var dataTextField: UITextField!
    
    @IBAction func readNumberButton(_ sender: Any) {
        var isWin = true
        guard let readNumber = Int(dataTextField.text ?? "") else
        { isWin = false
            showAlert(message: "Введенные данные не являются числом")
            return }
        if readNumber < 1 || readNumber > 100 {
            isWin = false
            showAlert(message: "Ваш вариант не укладывается в диапазон загадываемого числа")
        }
        
        if isWin {
            EventHistory.shared.guessedNumber = readNumber
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            guard let viewController = storyboard.instantiateViewController(withIdentifier: "GuessNumberComputerViewController") as? GuessNumberComputerViewController else {return}
            show(viewController as UIViewController, sender: nil)
        }
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Внимание", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ввести число заново", style: .default, handler: nil)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
