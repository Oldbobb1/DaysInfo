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
        
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(datePicker)
        view.addSubview(button)
        view.addSubview(thirdLabel)
        
        datePickerValueChanged(datePicker)
        
        datePicker.addTarget(self, action: #selector(datePickerValueChanged(_:)), for:.valueChanged)
        button.addTarget(self, action: #selector(result), for: .touchUpInside)
        
        firstLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(100)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-20)
        }
        
        secondLabel.snp.makeConstraints{make in
            make.top.equalTo(firstLabel.snp.top).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-20)
        }
        
        datePicker.snp.makeConstraints{make in
            make.top.equalTo(secondLabel.snp.top).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-20)
        }
        
        button.snp.makeConstraints { make in
            make.top.equalTo(datePicker.snp.top).offset(220)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(140)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-140)
        }
        
        thirdLabel.snp.makeConstraints { make in
            make.top.equalTo(button.snp.top).offset(50)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-20)
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

