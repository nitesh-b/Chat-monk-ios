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
class Group: BaseModel {
    
    var chatId : String
    var name : String
    var ownerId : String
    var isDeleted = false
    
    enum CodingKeys: String, CodingKey{
        case chatId
        case name
        case ownerId
        case isDeleted
    }
    
    required init(from decoder: Decoder) throws {
        let value = try decoder.container(keyedBy: CodingKeys.self)
        chatId = try value.decode(String.self, forKey: .chatId)
        name = try value.decode(String.self, forKey: .name)
        ownerId = try value.decode(String.self, forKey: .ownerId)
        isDeleted = try value.decode(Bool.self, forKey: .isDeleted)
        try super.init(from: decoder)
    }
    
    //    //---------------------------------------------------------------------------------------------------------------------------------------------
    //    func update(name value: String) {
    //
    //        if (name == value) { return }
    //
    //        do{
    //            let realm = try Realm()
    //            try realm.safeWrite {
    //                name = value
    //                syncRequired = true
    //                updatedAt = Date().timestamp()
    //            }
    //        }catch(let err){
    //            NSLog("REALM Exception: %@", err.localizedDescription)
    //        }
    //
    //    }
    //
    //    //---------------------------------------------------------------------------------------------------------------------------------------------
    //    func update(isDeleted value: Bool) {
    //
    //        if (isDeleted == value) { return }
    //
    //        do{
    //            let realm = try Realm()
    //            try realm.safeWrite {
    //                isDeleted = value
    //                syncRequired = true
    //                updatedAt = Date().timestamp()
    //            }
    //        }catch(let err){
    //            NSLog("REALM Exception: %@", err.localizedDescription)
    //        }
    //    }
}
