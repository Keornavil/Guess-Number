
import UIKit

class GuesstheNumberViewController: UIViewController {
    
    @IBOutlet weak var dataTextField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var previousDate: UILabel!
    
    @IBAction func compareButton(_ sender: Any) {
        
        var isWin = true
        guard let readNumber = Int(dataTextField.text ?? "") else
        { isWin = false
            showAlert(message: "Введенные данные не являются числом")
            return }
        if readNumber < 1 || readNumber > 100 {
            dataTextField.text = ""
            isWin = false
            let alert = UIAlertController(title: "Внимание", message: "Ваш вариант не укладывается в диапазон загадываемого числа", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "Ввести число заново", style: .default, handler: nil)
            alert.addAction(okButton)
            present(alert, animated: true, completion: nil)
        }
        dataTextField.text = ""
        
        if isWin {
            previousDate.text = "Последнее введеное число было \(readNumber)"
            EventHistory.shared.enteredNumber = readNumber
        }
        
        EventHistory.shared.compareValue(label: label)
        showAlert(message: label.text!)
    }
    
    func showAlert(message: String) {
        var titleAction: String {
            if EventHistory.shared.enteredNumber != EventHistory.shared.guessedNumber  {
                return("Ввести число заново")
            } else { return("Перейти к результатам")}
        }
        let alert = UIAlertController(title: "Внимание", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: titleAction, style: .default) { (action) in
            
            if EventHistory.shared.enteredNumber == EventHistory.shared.guessedNumber {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                guard let viewController = storyboard.instantiateViewController(withIdentifier: "WinnerViewController") as? WinnerViewController else {return}
                self.show(viewController as UIViewController, sender: nil)
            } }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
