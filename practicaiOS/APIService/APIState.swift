import Foundation

enum APIState: Equatable {      // permite preguntar si dos valores tienen el mismo estado
    case idle
    case loading
    case loaded([Song])
    case error(String)
}
