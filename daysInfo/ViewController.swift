//  ViewController.swift

//  daysInfo

//  Created by Bobbi R. on 2.03.24.

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var numberOfDays = ""
    
    private let firstLabel = createLabel(text:"Радуйся каждому дню!",fontSize: 25)
    private let secondLabel = createLabel(text:"Выбери cвой день рождения:",fontSize: 18)
    private let thirdLabel = createLabel(text:"Ты наслаждаешься жизнью дней",fontSize: 18)
    
    private let datePicker: UIDatePicker = {
        let date = UIDatePicker()
        date.datePickerMode = .date
        date.calendar = .current
        date.preferredDatePickerStyle = .wheels
        return date
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let button = buttonCreat(setTitle: "Result")
        button.layer.cornerRadius = 11
        button.backgroundColor = .systemBlue
        
        datePickerValueChanged(datePicker)
        datePicker.addTarget(self, action: #selector(datePickerValueChanged(_:)), for:.valueChanged)
        button.addTarget(self, action: #selector(result), for: .touchUpInside)
        
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(datePicker)
        view.addSubview(button)
        view.addSubview(thirdLabel)
        
        applyView(firstLabel, topOffset: 100, leadingOffset: 20, trailingOffset: -20)
        applyView(secondLabel, topOffset: 140, leadingOffset: 20, trailingOffset: -20)
        applyView(datePicker, topOffset: 180, leadingOffset: 20, trailingOffset: -20)
        applyView(button, topOffset: 400, leadingOffset: 140, trailingOffset: -140)
        applyView(thirdLabel, topOffset: 450, leadingOffset: 20, trailingOffset: -20)
    }
    
    func applyView(_ element: UIView, topOffset: CGFloat, leadingOffset: CGFloat, trailingOffset: CGFloat) {
        element.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(topOffset)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(leadingOffset)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(trailingOffset)
        }
    }
    
    @objc func datePickerValueChanged(_ sender: UIDatePicker) {
        let selectedDate = sender.date
        let daysDifference = Calendar.current.dateComponents([.day], from: selectedDate, to: Date()).day ?? 0
        numberOfDays = "\(daysDifference)"
    }
    
    @objc func result() {
        let labelText = "Ты наслаждаешься жизнью \(numberOfDays) дней "
        thirdLabel.text = labelText
    }
}

