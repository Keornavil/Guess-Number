# Guess-Number
Приложение представляет из себя игру, где компьютер и игрок отгадывают число, загаданное друг другу.
Приложение встречает нас стартовым экраном
![Simulator Screen Shot - iPad mini (6th generation) - 2022-05-10 at 12 59 09](https://user-images.githubusercontent.com/74978825/167559570-896982c0-4d16-4753-93d7-7a15cdb72b0d.png)
Первым число угадывает компьютер, поэтому после нажатия на кнопку "Начать игру" мы переходим на экран, на котором мы бдолжны будем загадать число, которое компьютер будет отгадывать.
ВАЖНО! 
Загадываются числа из диапазона от 1 до 100, и если вы введете число, которое не соответствует требованиям, или это будет какой-либо символ, то сразу же появится предупреждающее сообщение об этом, и вам потребуется заново вводить число
![Simulator Screen Shot - iPad mini (6th generation) - 2022-05-10 at 12 59 53](https://user-images.githubusercontent.com/74978825/167560298-79ae3dbd-2fdc-4af0-9de4-94d7c5ba6355.png)
![Simulator Screen Shot - iPad mini (6th generation) - 2022-05-10 at 13 00 06](https://user-images.githubusercontent.com/74978825/167560309-f887374b-3d22-42a2-a072-b548fddc70ba.png)
После того, как мы загадали число компьютеру, мы переходим на экран угадывания компьютером числа.
![Simulator Screen Shot - iPad mini (6th generation) - 2022-05-10 at 13 00 26](https://user-images.githubusercontent.com/74978825/167560443-3db82806-6868-4fa6-8b4b-89318cd19dca.png)
Когда компьютер пытается отгадать число, мы даем ему подсказки о том, больше или меньше загаданное число, или же он угадал его.
ВАЖНО!
Если мы попытаемся обмануть компьютер, давая неверную подсказку, то появится предупреждающее сообщение об этом.
![Simulator Screen Shot - iPad mini (6th generation) - 2022-05-10 at 13 00 47](https://user-images.githubusercontent.com/74978825/167560956-48e810cf-8b27-43f3-aded-bb0ef9746cb9.png)
Каждая попытка отгадать число суммируется.
После того, как компьютер отгадает число, появится сообщение об этом, и мы перейдем к угадыванию числа игроком.
![Simulator Screen Shot - iPad mini (6th generation) - 2022-05-10 at 13 01 10](https://user-images.githubusercontent.com/74978825/167561351-ffa67fb8-a14a-4690-bd6f-2f84fbed4a0d.png)
Мы переходим на стартовый экран, и после нажатия на кнопку переходим на экран отгадывания числа игроком.
Введеное число так же проверяется на соответствие. Для помощи игроку дается подсказка о том, больше угадываемое число или меньше, а так же отображается последнее число, которое ввёл игрок.
![Simulator Screen Shot - iPad mini (6th generation) - 2022-05-10 at 13 01 37](https://user-images.githubusercontent.com/74978825/167562305-45073d92-eec5-4add-ad2f-69a156d09057.png)
![Simulator Screen Shot - iPad mini (6th generation) - 2022-05-10 at 13 01 56](https://user-images.githubusercontent.com/74978825/167562361-e5568f3d-ad18-4333-b7f6-11ac8c727110.png)
Идет посчет каждой попытки угадать число.
После того, как игрок угадает число, появится сообщение об этом. После чего мы переходим на экран с результатами.
![Simulator Screen Shot - iPad mini (6th generation) - 2022-05-10 at 13 02 37](https://user-images.githubusercontent.com/74978825/167562881-bffb455c-d78c-4324-9235-95fbf6cc038a.png)
Результаты сразу же отображаются на экране. Так же есть возможность начать новую игру. Для этого есть соответствующая кнопка.
![Simulator Screen Shot - iPad mini (6th generation) - 2022-05-10 at 13 02 50](https://user-images.githubusercontent.com/74978825/167563128-cc0a4ae0-b4db-4015-ab9b-54460fc26e00.png)
Всего в игре используется 5 экранов.
Для построения структуры был применён паттерн MVC как наиболее подходящий для небольших приложений. Для хранения данных был применён шаблон Singleton. Преимущество его в том, что создается всего 1 экземпляр класса на весь проект.
