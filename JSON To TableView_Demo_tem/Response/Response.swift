import Foundation

struct ResponseService: Decodable {
    var Grid_20200713000000000605_1: Grid_20200713000000000605_1
}

struct Grid_20200713000000000605_1: Decodable {
    var totalCnt: Int
    var startRow: Int
    var endRow: Int
    var result: Result
    var row: [Row]
}

struct Result: Decodable {
    var code: String
    var message: String
}

struct Row: Decodable {
    
        var ROW_NUM: Int
        var RELAX_SEQ: Int
        var RELAX_ZIPCODE: String
        var RELAX_SI_NM: String
        var RELAX_SIDO_NM: String
        var RELAX_RSTRNT_NM: String
        var RELAX_RSTRNT_REPRESENT: String
        var RELAX_ADD1: String
        var RELAX_ADD2: String
        var RELAX_GUBUN: String
        var RELAX_GUBUN_DETAIL: String
        var RELAX_RSTRNT_TEL: String
        var RELAX_USE_YN: String
        var RELAX_RSTRNT_ETC: String
    
}
