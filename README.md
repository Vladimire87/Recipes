# Тестовое задание: Менеджер рецептов

Разработайте простое Rails-приложение "Менеджер рецептов", которое позволяет пользователям создавать и редактировать рецепты с ингредиентами.

## Требования:

1. Модели:
   - `Recipe` (рецепт): имеет атрибуты `title` (название) и `description` (описание).+
   - `Ingredient` (ингредиент): имеет атрибуты `name` (название) и `quantity` (количество).+

2. Связи:
   - Рецепт имеет много ингредиентов (has_many :ingredients)+
   - Ингредиент принадлежит рецепту (belongs_to :recipe)+

3. Функциональность:
   - Создание нового рецепта с возможностью добавления нескольких ингредиентов.+
   - Редактирование существующего рецепта с возможностью добавления, изменения и удаления ингредиентов.+
   - Просмотр списка всех рецептов.+
   - Просмотр отдельного рецепта со списком ингредиентов.+

4. Требования к форме:
   - Используйте вложенные формы для создания и редактирования рецепта вместе с его ингредиентами.+
   - Реализуйте возможность динамического добавления полей для новых ингредиентов (можно использовать JavaScript или Stimulus).+
   - Добавьте возможность удаления ингредиентов при редактировании рецепта.+

5. Валидации:
   - Название рецепта не должно быть пустым и должно быть уникальным.+
   - Название ингредиента не должно быть пустым.+
   - Количество ингредиента должно быть положительным числом.+

6. Дополнительно (по желанию):
   - Добавьте простую стилизацию с использованием CSS или Bootstrap.+
   - Реализуйте пагинацию для списка рецептов.+
   - Добавьте поиск рецептов по названию.+

## Советы по реализации:

- Используйте `accepts_nested_attributes_for` в модели `Recipe` для работы с вложенными атрибутами ингредиентов.
- Воспользуйтесь хелпером `fields_for` в форме для рецепта, чтобы добавить поля для ингредиентов.
- Для динамического добавления полей ингредиентов можно использовать гем `cocoon` или реализовать эту функциональность самостоятельно с помощью JavaScript.

Это задание поможет вам попрактиковаться в работе с вложенными формами, динамическим добавлением и удалением связанных объектов, а также в обработке сложных параметров в контроллере.