//
//  ViewController.swift
//  Lesson2_1
//
//  Created by Evgeny Mastepan on 13.11.2024.
//

import UIKit

class ViewController: UIViewController {

    var nameLabel = UILabel()
    var surnameLabel = UILabel()
    var streamLabel = UILabel()
    var addDataButton = UIButton(type: .roundedRect)
    var clearDataButton = UIButton()
    // == incoming Data ==
    let nameUser = "Александр III"
    let surnameUser = "Романов"
    let streamNumber = "ios 9"
    // ===================
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
        setupButton()
    }
    
    func getLabel(text: String, frame: CGRect, color: UIColor) -> UILabel {
        let label = UILabel()
        label.text = text
        // Отладочный параметр
//        label.backgroundColor = .yellow
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.frame = frame
        label.textColor = color
        
        return label
    }
    
    func setLabel() {
        let viewWidth = view.frame.size.width
        view.addSubview(getLabel(text: "Имя: ", frame: CGRect(x: 51, y: 80, width: 45, height: 19), color: .black))
        view.addSubview(getLabel(text: nameUser, frame: CGRect(x: 95, y: 80, width: viewWidth - 146, height: 19), color: .red))
        view.addSubview(getLabel(text: "Фамилия: ", frame: CGRect(x: 51, y: 112, width: 80, height: 19), color: .black))
        view.addSubview(getLabel(text: surnameUser, frame: CGRect(x: 135, y: 112, width: viewWidth - 186, height: 19), color: .red))
        view.addSubview(getLabel(text: "Номер потока: ", frame: CGRect(x: 51, y: 144, width: 120, height: 19), color: .black))
        view.addSubview(getLabel(text: streamNumber, frame: CGRect(x: 175, y: 144, width: viewWidth - 226, height: 19), color: .red))
    }


    func setupButton() {
        //Ширина и высота фрейма
        let viewWidth = view.frame.size.width
        let viewHeight = view.frame.size.height
        let buttonFont = UIFont.boldSystemFont(ofSize: 16)

        //Первая кнопка
        addDataButton.setTitle("Добавить данные", for: .normal)
        addDataButton.titleLabel?.font = buttonFont
        addDataButton.setTitleColor(.white, for: .normal)
        //Кнопки выравниваем от нижнего края
        addDataButton.frame = CGRect(x: 23, y: viewHeight - 202, width: viewWidth - 46, height: 69)
        addDataButton.backgroundColor = UIColor.black
        addDataButton.layer.cornerRadius = 20
        addDataButton.addTarget(self, action: #selector(openSecondViewController), for: .touchUpInside)

        //Вторая кнопка
        clearDataButton.setTitle("Очистить данные", for: .normal)
        clearDataButton.titleLabel?.font = buttonFont
        clearDataButton.setTitleColor(.blue, for: .normal)
        // Выравниваем по ширине от центра
        clearDataButton.frame = CGRect(x: (viewWidth - 138)/2, y: viewHeight - 109, width: 138, height: 19)
        clearDataButton.sizeToFit()

        //Добавляем кнопки
        view.addSubview(addDataButton)
        view.addSubview(clearDataButton)

    }
    
        @objc func openSecondViewController() {
            let secondViewController = SecondViewController()
            self.present(secondViewController, animated: true, completion: nil)
        }

}

