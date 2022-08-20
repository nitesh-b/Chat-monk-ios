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
class Single: BaseModel {
    
    var chatId : String
    var userId1 : String
    var fullname1 : String
    var initials1 : String
    var pictureAt1: Int = 0
    
    var userId2 : String
    var fullname2 : String
    var initials2 : String
    var pictureAt2: Int = 0
    
    enum CodingKeys: String, CodingKey {
        case chatId
        case userId1
        case fullname1
        case initials1
        case pictureAt1
        case userId2
        case fullname2
        case initials2
        case pictureAt2
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        chatId = try values.decode(String.self, forKey: .chatId)
        userId1 = try values.decodeIfPresent(String.self, forKey: .userId1) ?? ""
        fullname1 = try values.decodeIfPresent(String.self, forKey: .fullname1) ?? ""
        initials1 = try values.decodeIfPresent(String.self, forKey: .initials1) ?? ""
        pictureAt1 = try values.decodeIfPresent(Int.self, forKey: .pictureAt1) ?? 0
        userId2 = try values.decodeIfPresent(String.self, forKey: .userId2) ?? ""
        fullname2 = try values.decodeIfPresent(String.self, forKey: .fullname2) ?? ""
        initials2 = try values.decodeIfPresent(String.self, forKey: .initials2) ?? ""
        pictureAt2 = try values.decodeIfPresent(Int.self, forKey: .pictureAt2) ?? 0
        try super.init(from: decoder)
    }
    
}
