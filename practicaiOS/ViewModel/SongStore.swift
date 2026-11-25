import Observation
import Foundation

@Observable //constantemente mirando si hay cambios
class SongStore {
    private(set) var state = APIState.idle
    
    func getDataFromAPI(){
        state = APIState.loading
        
        Task{
            do {
                let posts = try await APIService.fetchData(stringURL: "https://itunes.apple.com/search")
                state = .loaded(posts)
            } catch {
                state = .error(error.localizedDescription)
            }
        }
        
    }
    
    
    
}
