//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Christian Manzaraz on 06/12/2022.
//

import UIKit

class QuestionViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singleButton1: UIButton!
    @IBOutlet var singleButton2: UIButton!
    @IBOutlet var singleButton3: UIButton!
    @IBOutlet var singleButton4: UIButton!
    
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var multiLabel1: UILabel!
    @IBOutlet var multiLabel2: UILabel!
    @IBOutlet var multiLabel3: UILabel!
    @IBOutlet var multiLabel4: UILabel!
    
    @IBOutlet var rangedStackView: UIStackView!
    @IBOutlet var rangedLabel1: UILabel!
    @IBOutlet var rangedLabel2: UILabel!
    
    @IBOutlet var questionProgressView: UIProgressView!
    
    
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
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers  = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Pregunta Nro. \(questionIndex + 1)."
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
            updateMultipleStack(using: currentAnswers)
        case .ranged:
            updateRangedStack(using: currentAnswers)
        }
    }
    
    func updateSingleStack(using answers: [Answer]) {
        singleStackView.isHidden = false
        
        singleButton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
    }
    
    func updateMultipleStack(using answers: [Answer]) {
        multipleStackView.isHidden = false
        
        multiLabel1.text = answers[0].text
        multiLabel2.text = answers[1].text
        multiLabel3.text = answers[2].text
        multiLabel4.text = answers[3].text
    }
    
    func updateRangedStack(using answers: [Answer]) {
        rangedStackView.isHidden = false
        
        rangedLabel1.text = answers.first?.text
        rangedLabel2.text = answers.last?.text
    }
    
}
