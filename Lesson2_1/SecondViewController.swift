//
//  SecondViewController.swift
//  Lesson2_1
//
//  Created by Evgeny Mastepan on 13.11.2024.
//

import UIKit

class SecondViewController: UIViewController {

    var nameLabel = UILabel()
    var surnameLabel = UILabel()
    var streamLabel = UILabel()
    var addDataButton = UIButton(type: .roundedRect)
    var exitButton = UIButton()
    var textField = UITextView()
    
    // == incoming Data ==
    let subscribtion = 99
    let subscribers = 120
    let posts = 300
    let textAbout = "When power becomes gracious and descends into the visible — such descent I call beauty. And there is nobody from whom I want beauty as much as from you who are powerful: let your kindness be your final self-conquest. Of all evil I deem you capable: therefore I want the good from you. Verily, I have often laughed at the weaklings who thought themselves good because they had no claws."
    // ===================
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setLabel()
        setTextField()
        setupButton()
    }
    
    func getLabel(text: String, frame: CGRect, color: UIColor, size: CGFloat) -> UILabel {
        let label = UILabel()
        label.text = text
//        Отладочный параметр
//        label.backgroundColor = .yellow
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: size)
        label.frame = frame
        label.textColor = color
        
        return label
    }
    
    func setLabel() {
        let viewWidth = view.frame.size.width
        view.addSubview(getLabel(text: "Подписок", frame: CGRect(x: 51, y: 112, width: 80, height: 19), color: .black, size: 16))
        view.addSubview(getLabel(text: "Подписчиков", frame: CGRect(x: viewWidth / 2 - 55, y: 112, width: 110, height: 19), color: .black, size: 16))
        view.addSubview(getLabel(text: "Постов", frame: CGRect(x: viewWidth - 131, y: 112, width: 80, height: 19), color: .black, size: 16))
        view.addSubview(getLabel(text: String(subscribtion), frame: CGRect(x: 71, y: 144, width: 40, height: 19), color: .red, size: 20))
        view.addSubview(getLabel(text: String(subscribers), frame: CGRect(x: viewWidth / 2 - 20, y: 144, width: 40, height: 19), color: .red, size: 20))
        view.addSubview(getLabel(text: String(posts), frame: CGRect(x: viewWidth - 111, y: 144, width: 40, height: 19), color: .red, size: 20))
        view.addSubview(getLabel(text: "О себе", frame: CGRect(x: 23, y: 275, width: 65, height: 19), color: .black, size: 16))
    }

    func setTextField() {
        let viewWidth = view.frame.size.width
        textField.font = .systemFont(ofSize: 16)
        textField.text = textAbout
        textField.textAlignment = .justified
        textField.isEditable = false
        textField.frame = CGRect(x: 23, y: 300, width: viewWidth - 42, height: 200)
        view.addSubview(textField)
    }

    func setupButton() {
        //Ширина и высота фрейма
        let viewWidth = view.frame.size.width
        let viewHeight = view.frame.size.height
        let buttonFont = UIFont.boldSystemFont(ofSize: 16)

        //Первая кнопка
        addDataButton.setTitle("Добавить пост", for: .normal)
        addDataButton.titleLabel?.font = buttonFont
        addDataButton.setTitleColor(.white, for: .normal)
        addDataButton.frame = CGRect(x: 23, y: 202, width: viewWidth - 46, height: 40)
        addDataButton.backgroundColor = UIColor.black
        addDataButton.layer.cornerRadius = 20

        //Вторая кнопка
        exitButton.setTitle("Выйти", for: .normal)
        exitButton.titleLabel?.font = buttonFont
        exitButton.setTitleColor(.blue, for: .normal)
        exitButton.frame = CGRect(x: (viewWidth - 138)/2, y: viewHeight - 200, width: 138, height: 19)
        exitButton.addTarget(self, action: #selector(closeViewController), for: .touchUpInside)

        //Добавляем кнопки
        view.addSubview(addDataButton)
        view.addSubview(exitButton)

    }
        @objc func closeViewController() {
            // Закрываем ViewController
            self.dismiss(animated: true, completion: nil)
        }

}
