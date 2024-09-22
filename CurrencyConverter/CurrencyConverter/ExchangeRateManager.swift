//
//  ExchangeRateManager.swift
//  CurrencyConverter
//
//  Created by Dongha Ryu on 9/13/24.
//

import Foundation

class ExchangeRateManager{
    
    public var delegate: ExchangeRateDelegate? = nil
    
    static let apiKey = "fca_live_WHsgJddbtxUryFL9oiX4gF18M9AB6C1DvgZauEzS"
    
    let url = "https://api.freecurrencyapi.com/v1/latest?apikey=\(ExchangeRateManager.apiKey)"
    
    func fetchRates(for currency: String, toCurrency: String, completion: @escaping(_ exchangeRate: ExchangeRate?) -> Void ){
        
        self.delegate?.reset()
        
        let url = URL(string: "\(self.url)&currencies=\(toCurrency)&base_currency=\(currency)")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let err = error {
                self.handleClientError(err)
                DispatchQueue.main.async{
                    completion(nil)
                }
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                self.handleServerError(response)
                DispatchQueue.main.async{
                    completion(nil)
                }
                return
            }
            
            if let mimeType = httpResponse.mimeType, mimeType == "application/json",
               let json = data {
                let rate = self.decodeResponse(json: json, for: currency, to: toCurrency)
                
                DispatchQueue.main.async{
                    completion(rate)
                }
            } else{
                self.handleDecodeError()
                DispatchQueue.main.async{
                    completion(nil)
                }
                return
            }
            
        } // end of task
        
        task.resume()
    }
    
    func decodeResponse(json: Data, for currency: String, to toCurrency: String) -> ExchangeRate? {
        do{
            let decoder = JSONDecoder()
            let exchangeRateResponse = try decoder.decode(ExchangeRateResponse.self, from: json)
            return exchangeRateResponse.toExchangeRate(from: currency, to: toCurrency)
        } catch{
            self.handleDecodeError()
            return nil
        }
    }
    
    private func handleClientError(_ error: Error){
        delegate?.requestFailedWith(error: error, type: .client)
        print("Client error")
    }
    
    
    private func handleServerError(_ reponse: URLResponse?){
        let error = NSError(domain: "API ERROR", code: 141)
        delegate?.requestFailedWith(error: error, type: .server)
        print("API error")

    }
    
    private func handleDecodeError(){
        let error = NSError(domain: "DECODE ERROR", code: 141)
        delegate?.requestFailedWith(error: error, type: .decode)
        print("Decode error")

    }
}
