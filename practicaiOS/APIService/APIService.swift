import Foundation

struct APIService {
    
    static func fetchData(stringURL: String) async throws -> [Song]{
        guard let url = URL(string: stringURL) else {
            throw APIError.invalidURL
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let responseHttp = response as? HTTPURLResponse, (200...299).contains(responseHttp.statusCode) else {
                throw APIError.invalidResponse
            }
            return try JSONDecoder().decode([Song].self, from: data)
            
        } catch let error as DecodingError{
            throw APIError.decoding(error)
        } catch {
            throw APIError.networkError(error)
        }
        
    }
    
}
