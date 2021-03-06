---
title: Стандарт качества кода
introduction: >
  Если Вы хотите помочь сайту с кодом, пожалуйста, следуйте стандарту качества кода.
---

- Пожалуйста, старайтесь не превышать 78 знаков в строке.
- Руководствуйтесь здравым смыслом в большей мере, чем краткостью в названии чего-либо.
- Страницы имеют окончания `.html.haml`, `.html.erb`, `.html.md` и т.д.
- Фрагменты и слои имеют окончания `.haml`, `.md`, `.erb` и т.д.

<h2>Разметка:</h2>

В основном мы используем [Haml](http://haml.info/) и [Markdown](http://daringfireball.net/projects/markdown/) для 
написания разметки. Если Вам нужно использовать стандартный HTML, используйте HTML5, но со строгим соблюдением правил 
XHTML:

- Используйте хорошо оформленную разметку; элементы должны быть правильно вложены и не
должны пересекаться.
- Не используйте в написании элементов и атрибутов заглавные буквы.
- Обособляйте кавычками все атрибуты.
- Непарные элементы должны иметь пробел перед закрывающим слешем: (`<hr />`)

<h2>Стили</h2>

Наш сайт использует Sass в SCSS синтаксисе. Вы должны быть уверены в том, что из предложенных
нами классов вам ни один не подходит, прежде, чем начать писать свои классы.

- Для чистоты кода используйте следующие правила ([Brad Frost писал о них][bf]):
  - Обратите внимание, что некоторые старые классы не используют данные стили, но мы проводём
    рефакторинг.
  - Используйте префикс `sl-` в глобальном прострастве имен.
  - Используйте префиксы классов сторонников [Harry Roberts][hr], однако, мы используем схему
    чуть проще:
    - `c-` для **компонентов**. Пример: `sl-c-card`.
    - `l-` для **слоев**. Пример: `sl-l-grid`.
      иногда бывает двойное тире).
    - `is-` и `has-` для состояний. Пример: `sl-is-active`.
    - `js-` для классов, которые созданы исключительно для Javascript.
      Пример: `sl-js-toggle-navigation`
  - Используйте методологию [BEM][].
    - **Блок** -- главный объект. Пример: `sl-c-card`.
    - **Элемент** -- любой наследник объекта. Пример: `sl-c-card__header`.
    - **Модификатор** -- любые вариации. Вариация может быть для блока:
    `sl-c-card--primary` и для элемента: `sl-c-card__header--large`.
- Избегайте больших вложенностей, старайтесь использовать "плоское" написание стилей.
- Избегайте указание классов для элементов, __если__ вы используете элемент как обертку
  над элементов с контентом внутри (например, использование классов для элементов, 
  которые оборачивают блок вывода markdown или другого большого блока, чтобы стилизовать
  все элементы внутри обёртки). Будьте внимательны, когда так делаете. Мы можем оставить
  вам код-ревью в подобных случаях.
- Для именования переменных, миксинов, плейсхолдеров или классов используйте подход
  "от общего к частному". Подробнее читайте [здесь][gts].
- Разделяйте селекторы запятыми на отдельных строках.

[haml]:     http://haml.info/
[markdown]: http://daringfireball.net/projects/markdown/
[bf]:       http://bradfrost.com/blog/post/css-architecture-for-design-systems/
[hr]:       https://csswizardry.com/2015/08/bemit-taking-the-bem-naming-convention-a-step-further/
[bem]:      http://getbem.com/introduction/
[gts]:      http://webdesign.tutsplus.com/tutorials/htmlcss-tutorials/quick-tip-name-your-sass-variables-modularly/
