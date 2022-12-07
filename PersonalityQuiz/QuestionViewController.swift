//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Christian Manzaraz on 06/12/2022.
//

import UIKit

class QuestionViewController: UIViewController {
        
    
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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
