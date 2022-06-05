import Foundation

// _____________________________________________
// КЛЮЧЕВОЕ СЛОВО final

// Ключевое слово final блокирует класс для наследования
// Также это слово можно отдельно применять для переменных, методов и т.д.
public final class YouCantInheritMe{
    
}
// Если раскомментировать код ниже то будет ошибка, которая так и напишет
// что нельзя наследоваться от класса "YouCantInheritMe"

//public class ITryToInheritClassAbove : YouCantInheritMe{
//
//}
