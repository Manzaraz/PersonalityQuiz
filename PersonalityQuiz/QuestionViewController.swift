//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Christian Manzaraz on 06/12/2022.
//

import UIKit

class QuestionViewController: UIViewController {
    @IBOutlet var singleStackView: UIStackView!
    
    
    @IBOutlet var multipleStackView: UIStackView!
    
    
    @IBOutlet var rangedStackView: UIStackView!
    
    
    
    var questions: [Question] = [
        Question(
            text: "¿Qué comida te gusta más?",
            type: .single,
            answers: [
                Answer(text: "Bife", type: .dog),
                Answer(text: "Salmón", type: .cat),
                Answer(text: "Zanahorias", type: .rabbit),
                Answer(text: "Lechuga", type: .turtle)
            ]
        ),
        Question(
            text: "¿Qué actividades te gustan?",
            type: .multiple,
            answers: [
                Answer(text: "Nadar", type: .turtle),
                Answer(text: "Dormir", type: .cat),
                Answer(text: "Acurrucarte", type: .rabbit),
                Answer(text: "Comer", type: .dog)
            ]
        ),
        Question(
            text: "¿Qué tanto te gustan los viajes en auto?",
            type: .ranged,
            answers: [
                Answer(text: "No me gustan", type: .cat),
                Answer(text: "Me pongo un poco nervioso", type: .rabbit),
                Answer(text: "¿De qué viaje estás hablando?", type: .turtle),
                Answer(text: "Adoro ir de paseo", type: .dog)
            ]
        )
    ]
    
    var questionIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    func updateUI() {
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        navigationItem.title = "Pregunta Nro. \(questionIndex + 1)."
        
        let currentQuestion = questions[questionIndex]
        
        
        switch currentQuestion.type {
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case .ranged:
            rangedStackView.isHidden = false
        }
        
    }
    
}
