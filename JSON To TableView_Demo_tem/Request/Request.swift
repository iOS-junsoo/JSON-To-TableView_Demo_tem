import UIKit
import Alamofire



class Request {
    func getData(_ viewController: ViewController) {
        print("JSON파일 함수호출")
        let url = "http://211.237.50.150:7080/openapi/57c98321a0a1a87daac8477bfa1863558b3c7163cd54c0cd3b9e58e9058dc6d0/json/Grid_20200713000000000605_1/1/50"
        
        AF.request(url, //URL 삽입
                   method: .get, //urlRequest에 대한 HTTP메서드
                   parameters: nil, //매개변수
                   encoding: URLEncoding.default, //매개변수 값을 urlRequest로 인코딩하는데 사용되는 ParameterEncoding이다. 기본적으로 URLEncoding.default
                   headers: nil, //URLRequest에 추가할 HTTPHeaders 값이다. 기본적으로 nil이다.
                   interceptor: nil, //반환된 DataRequest에서 사용할 RequestInterceptor 값이다. 기본적으로 nil이다.
                   requestModifier: nil) //제공된 매개 변수로 생성된 URLRequest에 적용될 RequestModifier이다. 기본적으로 nil입니다.
            .responseDecodable(of: ResponseService.self) { response in
                
                switch response.result { //성공, 실패여부에 따라 분기문 설정
                
                case .success(let response):
                    print("JSON파일을 전역변수에 저장")
                    Glabal.data = response.Grid_20200713000000000605_1.row //전역변수에 JSON파일 저장 
                    
                case .failure(let error):
                    print("DEBUG>>  \(error.localizedDescription)")
                    
                }
            }
    
    }
}
