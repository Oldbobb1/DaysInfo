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
        
    }
    
    
}

