import Foundation
import AVFoundation


class PlayerController: NSObject, AVAudioPlayerDelegate {
    
    static let sharedInstance = PlayerController()
    
    private override init() {}
    
    var players = [URL:AVAudioPlayer]()
    var duplicatePlayers = [AVAudioPlayer]()
    
    func playSound (soundFileName: String){
        // Get file music in path
        let soundFileNameURL = URL(fileURLWithPath: Bundle.main.path(forResource: soundFileName, ofType: "mp3")!)
        
        if let player = players[soundFileNameURL] { //player for sound has been found
            
            if player.isPlaying == false { //player is not in use, so use that one
                
                
                player.prepareToPlay()
                player.play()
                
            } else { // player is in use, create a new, duplicate, player and use that instead
                
                let duplicatePlayer = try! AVAudioPlayer.init(contentsOf: soundFileNameURL)
                //use 'try!' because we know the URL worked before.
                
                duplicatePlayer.delegate = self
                //assign delegate for duplicatePlayer so delegate can remove the duplicate once it's stopped playing
                
                duplicatePlayers.append(duplicatePlayer)
                //add duplicate to array so it doesn't get removed from memory before finishing
                
                
                duplicatePlayer.prepareToPlay()
                duplicatePlayer.play()

            }
        } else { //player has not been found, create a new player with the URL if possible
            do{
                let player = try AVAudioPlayer.init(contentsOf: soundFileNameURL)
                players[soundFileNameURL] = player
                
                player.prepareToPlay()
                player.play()
            } catch {
                print("Could not play sound file!")
            }
        }
    }
    
    
    func playSounds(soundFileNames: [String]){
        
        for soundFileName in soundFileNames {
            self.playSound(soundFileName: soundFileName)
        }
    }
    
    func playSounds(soundFileNames: String...){
        for soundFileName in soundFileNames {
            self.playSound(soundFileName: soundFileName)
        }
    }
    
//    func playSoundSynchronized(withFileName name: String){
//        //Lista de arquivos que vão ser executados novamente
//        var listSynchronizedFiles: [URL] = []
//        print(1)
//        //Obtendo o novo arquivo que vai tocar
//        let file = self.getPathToFile(withName: name)
//        print(2)
//
//        for player in self.players {
//            let play = player.value
//            print(3)
//
//            if play.isPlaying {
//                listSynchronizedFiles.append(player.key)
//                play.stop()
//            }
//            print(4)
//        }
//
//        //Tocar as músicas só que sincronizado agora
//        var spaceTime: TimeInterval = 3
//        for url in listSynchronizedFiles {
//            if let play = players[url] {
//                play.numberOfLoops = -1
//                play.prepareToPlay()
//                play.play(atTime: spaceTime)
//                spaceTime += 5
//            }
//        }
//        print(5)
//
//        if players[file!] != nil {
//            print("Players != nil")
//        }else {
//            do{
//                let player = try AVAudioPlayer.init(contentsOf: file!)
//                players[file!] = player
//                player.numberOfLoops = -1
//
//              _ = Timer.init(timeInterval: 2.0, repeats: false) { (time) in
//                    print(10)
//                }
//
//
//            } catch {
//                print("Could not play sound file!")
//            }
//        }
//        print(6)
//
//    }
    
//    func getPathToFile(withName: String) -> URL?{
//        guard let path = Bundle.main.path(forResource: withName, ofType: "wav") else {
//            return nil
//        }
//
//        let url = URL.init(fileURLWithPath: path)
//        return url
//
//    }
    
//    func playSoundNotification(notification: NSNotification) {
//        if let soundFileName = notification.userInfo?["fileName"] as? String {
//            playSound(soundFileName)
//        }
//    }
    
//    func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully flag: Bool) {
//        duplicatePlayers.removeAtIndex(duplicatePlayers.indexOf(player)!)
//        //Remove the duplicate player once it is done
//    }
   
}
