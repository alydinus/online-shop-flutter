# Tech Store (Flutter)

Минимальный магазин техники (PC / Laptop / Phone).

## Запуск
1. `flutter pub get`
2. `flutter run`

## Структура
- models — сущности
- services — ProductService (mock) и ApiService (HTTP)
- providers — ProductProvider, CartProvider
- screens — home / detail / cart
- widgets — UI компоненты

## План развития (дальше)
1. Заменить моковый ProductService на моковые данные с dymmyjson.
2. Добавить авторизацию и аутентификацию.
3. Добавить пагинацию, фильтры и поиск.
4. Улучшить UI: адаптивность, анимации, placeholder для картинок.
5. Тесты (unit + widget).
