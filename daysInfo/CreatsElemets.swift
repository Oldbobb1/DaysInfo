//  CreatElemet.swift

//  daysInfo

//  Created by Bobbi R. on 2.03.24.

import UIKit

func createLabel(text: String, fontSize: CGFloat ) -> UILabel {
    let label = UILabel()
    label.text = text
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: fontSize)
    label.textColor = .black
    return label
}

func buttonCreat(setTitle: String ) -> UIButton {
    let button = UIButton(type: .system)
    button.setTitle(setTitle, for: .normal)
    button.setTitleColor(.black, for: .normal)
    return button
}
