//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    /**
     对于传递到函数的三个参数全部为空字符串("")的特殊情况，应返回“true”。
     检查乱序字符串是否为有效长度。
     
     如果乱序字符串的字符数量少于或多于合并的两个原始字符串，那么无效，并且应返回“false”。
     否则便开始验证乱序字符串。
     
     检查乱序字符串是否为有效乱序。
     
     查找乱序字符串的每个字符并确定是否对两个原始字符串保持了从左到右的顺序。
     
     let greeting = "Guten Tag!"
     greeting[greeting.startIndex]
     // G
     greeting[greeting.index(before: greeting.endIndex)]
     // !
     greeting[greeting.index(after: greeting.startIndex)]
     // u
     let index = greeting.index(greeting.startIndex, offsetBy: 7)
     greeting[index]
     // a
 
    */
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        if s1.isEmpty && s2.isEmpty && shuffle.isEmpty {
            return true
        }else if(s1.characters.count+s2.characters.count != shuffle.characters.count ){
            return false
        }else {
            //# 比较方法 符合条件的shuffle第一个字符 必然是 s1 或s2 的开头
          
            //开头匹配s1 开头
            if(
                (s1[s1.startIndex] == shuffle[shuffle.startIndex])
                ||
                    (s2[s2.startIndex] == shuffle[shuffle.startIndex]) ){
                //比较s1 在打乱的顺序是否匹配 接着比较s2
                var i:Int = 0
                var indexs_s1 = [Int]()
                var indexs_s2 = [Int]()
                
                let shuffleArray = Array(shuffle.characters)
                var s1Array = Array(s1.characters)
                var s2Array = Array(s2.characters)
                
                while i < s1Array.count {
               
                    let item = s1Array[i]
                    //获取s1 中各个元素 在shuffle中索引 如果有序 符合
                    let index = shuffleArray.index(of: item)
                    if(index != nil){
                        indexs_s1.append(index!)
                    }else{
                        return false
                    }

                    i+=1
                }
                
                //重置 比较s2中数据
                i=0
                while i < s2Array.count {
                     let item = s2Array[i]
                    //获取s2 中各个元素 在shuffle中索引 如果有序 符合
                    let index = shuffleArray.index(of: item)
                     if(index != nil){
                        indexs_s2.append(index!)
                     }else{
                        return false
                    }
                    i+=1
                    
                }
               print(indexs_s1,"\n",indexs_s2)
            // 判断索引数组 是有序的
            //TODO 预留 这种情况没处理，比如 ("afe”, "fad", "afadfe")，可被认为是有效或无效的随机出现。在测试shuffleStrings的实现情况时，这些类型会被忽略且不会使用。
                var min :Int = indexs_s1[0]
                for item:Int in indexs_s1 {
                    if(min <= item){ // arr[0] < arr[1] < ....arr[max]
                        min = item
                    }else{ //无序
                        return false
                    }
                }
                
                min = indexs_s2[0]
                for item:Int in indexs_s2 {
                    if(min <= item){
                        min = item
                    }else{ //无序
                        return false
                    }
                }
                return true
            }else{
                return false
            }
            
            }
       
        }
   
    }

