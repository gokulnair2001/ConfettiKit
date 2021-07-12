//
//  Confetti.swift
//  ConfettiKit
//
//  Created by Gokul Nair on 10/07/21.
//

import UIKit

public enum Position {
    case top
    case centre
    case topLeft
    case topRight
}

public class Confetti {

    private static var emitter = CAEmitterLayer()
    
    /// A Confetti generator method, with variety of customisations.
    /// - Parameters:
    ///   - ConfettiPosition: Position of Confetti on UIView
    ///   - ConfettiCells: Types of Confetti particle to be emitted
    ///   - ConfettiImage: Images that are to be used on your Confetti
    ///   - Colours: Colours to be applied on cells
    ///   - Scale: Size of your Confetti cell
    ///   - BirthRate: No cells to be produced in a second
    ///   - LifeTime: Total life time of cells
    ///   - Velocity: Confetti cell velocity
    ///   - Spin: Rotation velocity of Confetti cells
    ///   - EmissionLongitude: The longitudinal orientation of the emission angle.
    ///   - EmissionRange: The angle, in radians, defining a cone around the emission angle
    ///   - View: The UIView on which Confetti is to be applied

    public static func generateConfetti(ConfettiPosition:Position, ConfettiCells:Int = 3, ConfettiImage:[String], Colours:[UIColor], Scale:CGFloat ,BirthRate: Float = 1.0, LifeTime:Float, Velocity:CGFloat, Spin:CGFloat, EmissionLongitude:CGFloat = CGFloat(Double.pi), EmissionRange:CGFloat, View: UIView) {

        emitter.emitterPosition = positionArrangement(with: ConfettiPosition, confettiView: View)
        emitter.emitterShape = CAEmitterLayerEmitterShape.line
        emitter.emitterSize = CGSize(width: View.frame.size.width, height: 2.0)

        var cells:[CAEmitterCell] = [CAEmitterCell]()
        for index in 0..<ConfettiCells {
            let cell = CAEmitterCell()
            cell.birthRate = BirthRate//1.0
            cell.lifetime = LifeTime
            cell.velocity = Velocity
            cell.emissionLongitude = EmissionLongitude
            cell.emissionRange = EmissionRange
            cell.spin = Spin

            if ConfettiCells <= Colours.count {
                cell.color = Colours[index].cgColor
            }else {
                print("ConfettiKit: Number of ConfettiColours(Count:\(Colours.count)) provided must be equal to number of ConfettiCells(Count: \(ConfettiCells))!")
            }

            if ConfettiCells <= ConfettiImage.count {
                cell.contents = UIImage(named: ConfettiImage[index])?.cgImage
            }else {
                print("ConfettiKit: Number of ConfettiImage(Count:\(ConfettiImage.count)) provided must be equal to number of ConfettiCells(Count: \(ConfettiCells))!")
            }

            cell.scaleRange = Scale*2
            cell.scale = Scale
            cells.append(cell)

        }
        View.layer.addSublayer(emitter)
        emitter.emitterCells = cells
    }
    //MARK:- Confetti Remover
    public static func stopConfetti() {
        emitter.removeFromSuperlayer()
    }
   //MARK:- Confetti Position Manager
    private static func positionArrangement(with pos: Position, confettiView: UIView) -> CGPoint{
        switch pos {
        case .top:
            return CGPoint(x: confettiView.center.x, y: -10)
        case .centre:
            return CGPoint(x: confettiView.center.x, y: confettiView.center.y)
        case .topLeft:
            return CGPoint(x:0 , y: -10)
        case .topRight:
            return CGPoint(x: confettiView.bounds.width, y: -10)
        }
    }
}
