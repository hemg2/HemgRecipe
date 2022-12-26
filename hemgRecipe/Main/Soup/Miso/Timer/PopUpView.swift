//
//  PopUpView.swift
//  hemgRecipe
//
//  Created by 1 on 2022/12/25.
//

import UIKit
import AudioToolbox


protocol addPopUpViewButton: AnyObject {
    func addTaget()
}

enum TimerStarus {
    case start
    case pause
    case end
}

class PopUpView: UIViewController {
    
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var progreeView: UIProgressView!
    @IBOutlet var datePicker: UIDatePicker!
    
    @IBOutlet var cancelButton: UIButton!
    @IBOutlet var toggleButton: UIButton!
    
    var duration = 60
    var currentSecond = 0
    var timer: DispatchSourceTimer?
    var timerStatus: TimerStarus = .end
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureToggelButton()
    }
    
    func setTimerInfoViewVisbel(isHidden: Bool) {
        self.timeLabel.isHidden = isHidden
        self.progreeView.isHidden = isHidden
    }
    
    func configureToggelButton() {
        self.toggleButton.setTitle("시작", for: .normal)
        self.toggleButton.setTitle("일시정지", for: .selected)
    }
    
    func startTimer() {
        if self.timer == nil {
            self.timer = DispatchSource.makeTimerSource(flags: [], queue: .main)
            self.timer?.schedule(deadline: .now(), repeating: 1)
            self.timer?.setEventHandler(handler: { [weak self] in
                guard let self = self else { return }
                self.currentSecond -= 1
                let hour = self.currentSecond / 3600
                let minutes = (self.currentSecond % 3600) / 60
                let seconds = (self.currentSecond % 3600) % 60
                self.timeLabel.text = String(format: "%02d:%02d:%02d", hour, minutes, seconds)
                self.progreeView.progress = Float(self.currentSecond) / Float(self.duration)
                debugPrint(self.progreeView.progress)
//                debugPrint(self.currentSecond)
                if self.currentSecond <= 0 {
                    self.stopTimer()
                    AudioServicesPlaySystemSound(1005)
                }
            })
            self.timer?.resume()
        }
    }
    
    func stopTimer() {
        if self.timerStatus == .pause {
            self.timer?.resume()
        }
        self.timerStatus = .end
        self.cancelButton.isEnabled = false
        UIView.animate(withDuration: 0.5, animations: {
            self.timeLabel.alpha = 0
            self.progreeView.alpha = 0
            self.datePicker.alpha = 1
        })
        self.toggleButton.isSelected = false
        self.timer?.cancel()
        self.timer = nil
    }

    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    
    @IBAction func tapCancelButton(_ sender: UIButton) {
        switch self.timerStatus {
        case .start, .pause:
            self.timerStatus = .end
            self.stopTimer()
        default:
            break
        }
    }
    
    @IBAction func tapToggleButton(_ sender: UIButton) {
        self.duration = Int(self.datePicker.countDownDuration)
        switch self.timerStatus {
        case .end:
            self.currentSecond = self.duration
            self.timerStatus = .start
            UIView.animate(withDuration: 0.5, animations: {
                self.timeLabel.alpha = 1
                self.progreeView.alpha = 1
                self.datePicker.alpha = 0
            })
            
            self.toggleButton.isSelected = true
            self.cancelButton.isEnabled = true
            self.startTimer()
            
        case .start:
            self.timerStatus = .pause
            self.toggleButton.isSelected = false
            self.timer?.suspend()
            
        case .pause:
            self.timerStatus = .start
            self.toggleButton.isSelected = true
            self.timer?.resume()
        }
    }
}
