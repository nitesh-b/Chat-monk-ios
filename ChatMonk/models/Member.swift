//
// Copyright (c) 2020 Related Code - http://relatedcode.com
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

//-------------------------------------------------------------------------------------------------------------------------------------------------
class Member: BaseModel {
    
    var chatId : String
    var userId : String
    var isActive : Bool
    var isDeleted: Bool
    var isArchived : Bool
    var mutedUntil: Int
    var isTyping: Bool
    
    enum CodingKeys: String, CodingKey{
        case chatId
        case userId
        case isActive
        case isDeleted
        case isArchived
        case mutedUntil
        case isTyping
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        chatId = try values.decodeIfPresent(String.self, forKey: .chatId) ?? ""
        userId = try values.decodeIfPresent(String.self, forKey: .userId) ?? ""
        isActive = try values.decodeIfPresent(Bool.self, forKey: .isActive) ?? false
        isDeleted = try values.decode(Bool.self, forKey: .isDeleted)
        isArchived = try values.decode(Bool.self, forKey: .isArchived)
        mutedUntil = try values.decode(Int.self, forKey: .mutedUntil)
        isTyping = try values.decode(Bool.self, forKey: .isTyping)
        try super.init(from: decoder)
    }
    
}
