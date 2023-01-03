import Foundation

class LogManager {
    var logger: Logger
    
    public init(logger: Logger) {
        self.logger = logger
    }
    
    func log() {
        logger.log()
    }
}

protocol Logger {
    func log()
}

class FileLogger: Logger {
    func log() {
        
    }
}

class DBLogger: Logger {
    func log() {
        
    }
}
