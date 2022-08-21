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
class Detail: BaseModel {
    
    var chatId : String
    var userId : String
    var typing : Bool = false
    var lastRead: Int = 0
    var mutedUntil: Int = 0
    var isDeleted = false
    var isArchived = false
    var isGroup = false
    
    enum CodingKeys: String, CodingKey{
        case chatId
        case userId
        case typing
        case lastRead
        case mutedUntil
        case isDeleted
        case isArchived
        case isGroup
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        chatId = try values.decode(String.self, forKey: .chatId)
        userId = try values.decode(String.self, forKey: .userId)
        typing = try values.decode(Bool.self, forKey: .typing)
        lastRead = try values.decodeIfPresent(Int.self, forKey: .lastRead) ?? 0
        mutedUntil = try values.decodeIfPresent(Int.self, forKey: .mutedUntil) ?? 0
        isDeleted = try values.decodeIfPresent(Bool.self, forKey: .isDeleted) ?? false
        isArchived = try values.decodeIfPresent(Bool.self, forKey: .isArchived) ?? false
        isGroup = try values.decodeIfPresent(Bool.self, forKey: .isGroup) ?? false
        try super.init(from: decoder)
    }
    
}
