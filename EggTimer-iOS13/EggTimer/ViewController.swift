

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timerlabel: UILabel!
    
    
    let eggTimes=[ "Soft":3, "Medium":4, "Hard":7]
    
    var totalTime=0
    var secondPassed=0
    var timer=Timer()
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBAction func hardnessOfEgg(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness=sender.currentTitle!
        totalTime=eggTimes[hardness]!
        timer=Timer.scheduledTimer(timeInterval: 1.0, target:self, selector :#selector(updateTimer) , userInfo: nil, repeats: true)
        
        
    }
    @objc func updateTimer(){
        if secondPassed<totalTime{
            
            let percentageProgress = (Float(secondPassed)/Float(totalTime))
            progressBar.progress=Float(percentageProgress)
            
            
            secondPassed+=1
        }
        else
        {
            
            timer.invalidate()
            timerlabel.text="Done!"
            
            
        }
    }
    
}
