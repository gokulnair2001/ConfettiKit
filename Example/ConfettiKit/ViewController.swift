//
//  ViewController.swift
//  ConfettiKit
//
//  Created by gokulnair2001 on 07/10/2021.
//  Copyright (c) 2021 gokulnair2001. All rights reserved.
//

import UIKit
import ConfettiKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var confettiTypes = ["Popper","Money","Party","Rain"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = confettiTypes[indexPath.row]
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ""
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellNo = Int("\(indexPath.section)\(indexPath.row)")
        performAction(cellNo!)
    }
    
    func performAction(_ cellNo: Int) {
        switch cellNo {
        case 0:
            Confetti.generateConfetti(ConfettiPosition: .top, ConfettiCells: 4, ConfettiImage: ["Confetti","Confetti","Confetti","Confetti"], Colours: [.systemRed, .systemTeal, .systemYellow, .systemGreen], Scale: 0.05, BirthRate: 4, LifeTime: 14, Velocity: CGFloat(Int.random(in: 100...400)), Spin: 3.5, EmissionLongitude: -CGFloat(Double.pi),EmissionRange: 0.5, View: view)
           
        case 01:
            Confetti.generateConfetti(ConfettiPosition: .topRight, ConfettiCells: 4, ConfettiImage: ["Money","Money","Money","Money"], Colours: [.systemRed, .systemTeal, .systemYellow, .systemGreen], Scale: 0.05, BirthRate: 3, LifeTime: 14, Velocity: CGFloat(Int.random(in: 100...400)), Spin: 1, EmissionLongitude: -CGFloat(Double.pi),EmissionRange: 0.5, View: view)
            
        case 02:
            Confetti.generateConfetti(ConfettiPosition: .top, ConfettiCells: 4, ConfettiImage: ["Party1","Party2","Party1","Party4"], Colours: [.systemRed, .systemTeal, .systemYellow, .systemGreen], Scale: 0.05, BirthRate: 4, LifeTime: 14, Velocity: CGFloat(Int.random(in: 100...400)), Spin: 3.5, EmissionLongitude: -CGFloat(Double.pi),EmissionRange: 0.5, View: view)
        case 03:
            Confetti.generateConfetti(ConfettiPosition: .topLeft, ConfettiCells: 3, ConfettiImage: ["rain","rain","rain"], Colours: [.systemBlue, .systemGray, .systemTeal], Scale: 0.05, BirthRate: 4, LifeTime: 14, Velocity: CGFloat(Int.random(in: 100...400)), Spin: 0, EmissionLongitude: -CGFloat(Double.pi), EmissionRange: 0.4, View: view)
        default:
           break
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            Confetti.stopConfetti()
        }
    }
}

