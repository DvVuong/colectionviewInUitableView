//
//  ViewModel.swift
//  DemoA
//
//  Created by mr.root on 5/2/23.
//

import Foundation
import RxSwift
import RxCocoa

enum URLError: Error {
    case urlNotFound
}

class ViewModel {
    
    
    
    //MARK: Get data
    
//    func getData<T: Decodable>(url: String, data: T.Type) throws -> Observable<T> {
//        let string = Observable.just(url)
//        string.map {url -> URL in
//            return URL(string: url)!
//        }
//        .map {url -> URLRequest in
//            return URLRequest(url: url)
//        }
//        .flatMap { request -> Observable<(response: HTTPURLResponse, data: Data)> in
//            return URLSession.shared.rx.response(request: request)
//        }.share(replay: 1)
//        .filter {response, _ -> Bool in
//            return 200..<300 ~= response.statusCode
//        }
//        .map {_, data  -> Observable<T> in
//            let codable = JSONDecoder()
//            let results  = try? codable.decode(T.self, from: data)
//
//        }
//
//
//
//        return Observable.create { create in
//            <#code#>
//        }
//    }
    
    @available(iOS 15.0, *)
    func getdata<T: Decodable>(_ url: String, model: T.Type) async throws -> T {
        let (data, _) = try  await URLSession.shared.data(from: URL(string: url)!)
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            throw URLError.urlNotFound
        }
    }
}
