import Observation
import Foundation

@Observable //constantemente mirando si hay cambios
class SongStore {
    private(set) var state = APIState.idle
    
}
