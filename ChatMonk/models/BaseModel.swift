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
class BaseModel : Codable {
    
    var objectId: String
    var createdAt: Int
    var updatedAt: Int
    
    private enum CodingKeys: String, CodingKey {
        case objectId
        case createdAt
        case updatedAt
        
      }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        objectId = try values.decodeIfPresent(String.self, forKey: .objectId) ?? UUID().uuidString
        createdAt = try values.decodeIfPresent(Int.self, forKey: .createdAt) ?? 0
        updatedAt = try values.decodeIfPresent(Int.self, forKey: .updatedAt) ?? 0
      }
    

    
}
