import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var calculateSegment: UISegmentedControl!
    @IBOutlet private weak var calculateButton: UIButton!
    @IBOutlet private weak var totalLabel: UILabel!

    @IBAction private func buttonTapped(_ sender: Any) {
        let num1 = Double(textField1.text ?? "") ?? 0
        let num2 = Double(textField2.text ?? "") ?? 0

        switch calculateSegment.selectedSegmentIndex {
        case 0:
            totalLabel.text = String(num1 + num2)
        case 1:
            totalLabel.text = String(num1 - num2)
        case 2:
            totalLabel.text = String(num1 * num2)
        case 3:
            if num2 == 0 {
                totalLabel.text = "割る数には0以外を入力してください"
            } else {
                totalLabel.text = String(num1 / num2)
            }
        default:
            break
        }
    }
}
