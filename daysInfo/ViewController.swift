//  ViewController.swift

//  daysInfo

//  Created by Bobbi R. on 2.03.24.

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var numberOfDays = ""
    
    private let firstLabel: UILabel =  {
        let label = UILabel()
        label.text = "Радуйся каждому дню!"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25)
        label.textColor = .black
        return label
    }()
    
    private let secondLabel: UILabel =  {
        let label = UILabel()
        label.text = "Выбери cвой день рождения:"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        return label
    }()
    
    private let thirdLabel: UILabel =  {
        let label = UILabel()
        label.text = "Ты наслаждаешься жизнью дней"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        return label
    }()
    
    private let datePicker: UIDatePicker = {
        let date = UIDatePicker()
        date.datePickerMode = .date
        date.calendar = .current
        date.preferredDatePickerStyle = .wheels
        return date
    }()
    
    private let buttonCreat: UIButton = {
        let button = UIButton()
        button.setTitle("Result", for: .normal)
        button.layer.cornerRadius = 11
        button.backgroundColor = .systemBlue
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(datePicker)
        view.addSubview(buttonCreat)
        view.addSubview(thirdLabel)
        
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
        
        buttonCreat.snp.makeConstraints { make in
            make.top.equalTo(datePicker.snp.top).offset(220)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(140)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-140)
        }
        
        thirdLabel.snp.makeConstraints { make in
            make.top.equalTo(buttonCreat.snp.top).offset(50)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-20)
        }
    }
}

