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
    let nameUser = "Ярослав"
    let surnameUser = "Мудрый"
    let streamNumber = "ios 9"
    // ===================
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
        setupButton()
        
        
    }

    func setupLabel() {
        // Ширина фрейма
        let viewWidth = view.frame.size.width
        // Задаем варианты атрибутов текста.
        let blackAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.black]
        let redAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.red]
        
        // Первая метка
        let nameString = NSMutableAttributedString()
        nameString.append(NSAttributedString(string: "Имя: ", attributes: blackAttributes))
        nameString.append(NSAttributedString(string: nameUser, attributes: redAttributes))
        nameLabel.attributedText = nameString
        nameLabel.frame = CGRect(x: 51, y: 80, width: viewWidth - 102, height: 19)
        
        //Вторая метка
        let surnameString = NSMutableAttributedString()
        surnameString.append(NSAttributedString(string: "Фамилия: ", attributes: blackAttributes))
        surnameString.append(NSAttributedString(string: surnameUser, attributes: redAttributes))
        surnameLabel.attributedText = surnameString
        surnameLabel.frame = CGRect(x: 51, y: 112, width: viewWidth - 102, height: 19)
        
        //Третья метка
        let streamString = NSMutableAttributedString()
        streamString.append(NSAttributedString(string: "Номер потока: ", attributes: blackAttributes))
        streamString.append(NSAttributedString(string: streamNumber, attributes: redAttributes))
        streamLabel.attributedText = streamString
        streamLabel.frame = CGRect(x: 51, y: 144, width: viewWidth - 102, height: 19)
        
        //Добавляем на View
        view.addSubview(nameLabel)
        view.addSubview(surnameLabel)
        view.addSubview(streamLabel)
        
    }
    
    func setupButton() {
        //Ширина и высота фрейма
        let viewWidth = view.frame.size.width
        let viewHeight = view.frame.size.height
        let buttonFont = UIFont(name: "boldSystemFont", size: 16)
                
        //Первая кнопка
        addDataButton.setTitle("Добавить данные", for: .normal)
        addDataButton.titleLabel?.font = buttonFont
        addDataButton.setTitleColor(.white, for: .normal)
        //Кнопки выравниваем от нижнего края
        addDataButton.frame = CGRect(x: 23, y: viewHeight - 202, width: viewWidth - 46, height: 69)
        addDataButton.backgroundColor = UIColor.black
        addDataButton.layer.cornerRadius = 20
        
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

}

