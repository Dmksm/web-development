<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <link rel="stylesheet" href="css/style.css">
    <script src="animation.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;700&family=Roboto&family=Roboto+Condensed&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Document</title>
</head>
<div id="back" class="outside">
    <div class="form__border">
        <article id="popup" class="form">
            <div class="form__images">
                <img class="form__image" src="images/Welcome.png" alt="картинка не загрузилась">
                <img id="vector" class="form__close" src="images/Vector.png" alt="картинка не загрузилась">
            </div>
            <h2 class="form__title">Записаться на курс</h2>
            <form class="form__user-form" method="post" action="/form_handler.php">
                <input class="form__text-place" type="text" placeholder="Ваше имя" name="name">
                <input class="form__text-place" type="text" placeholder="Email" name="email">
                <select class="form__list" method="POST" action=search.php name="activity">
                    <option class="form__option_special" disabled selected>Деятельность</option>
                    <option class="form__option" value="developer">Программист</option>
                    <option class="form__option" value="designer">Дизайнер</option>
                    <option class="form__option" value="marketer">Маркетолог</option>
                </select>
                <div class="form__user-deal">
                    <input class="form__checkbox" type="checkbox" name="agreement">
                    <p class="form__text">Согласен получать информационные материалы о старте курса</p>
                </div>
                <button class="form__target" type="submit">Записаться на курс</button>
            </form>
        </article>
    </div>
</div>
<body class="body">
<header class="header">
    <div class="review">
        <img class="review__image-dont" src="images/Do_not_do_it.png" alt="не загрузилась картинка"/>
        <div class="links">
            <a class="links__link-review">Что будет на курсе?</a>
            <a class="links__link-review">Вопросы</a>
            <a class="links__link-review">Автор</a>
        </div>
        <button id="review-btn" class="review__target">Записаться на курс</button>
    </div>
    <div class="main">
        <h1 class="main__title">Не <span class="main__title_focus">делай</span> это</h1>
        <p class="main__subtitle">Онлайн-курс для творческих людей, о том, как управлять своим временем </p>
        <button id="main-btn" class="main__target">Записаться на курс</button>
        <img class="main__image-done" src="images/Done.png" alt="не загрузилась картинка"/>
    </div>
    <div class="description">
        <div class="description__section">
            <img class="description__image" src="images/Watch.png" alt="не загрузилась картинка"/>
            <div class="description__text">Для тех, у кого слишком много идей и слишком мало времени</div>
        </div>
        <div class="description__section">
            <img class="description__image" src="images/Book.png" alt="не загрузилась картинка"/>
            <div class="description__text">Метод «списка не дел», который позволит успевать и реализовывать</div>
        </div>
        <div class="description__section">
            <img class="description__image" src="images/Target.png" alt="не загрузилась картинка"/>
            <div class="description__text">Курс научит творческих людей сосредоточиваться</div>
        </div>
    </div>
</header>
<article class="article-reasons">
    <img class="article-reasons__image-finances" src="images/Finances.png" alt="не загрузилась картинка"/>
    <div class="article-reasons__text">
        <h2 class="article-reasons__title">Ты не успеешь</h2>
        <p class="article-reasons__subtitle">Всех творческих людей объединяет одна проблема - отсутствие времени на реализацию идей. Как прибавить суткам часы, рассмотрим в нашем курсе.</p>
    </div>
    <img class="article-reasons__image-mind" src="images/mind.png" alt="не загрузилась картинка"/>
    <div class="article-reasons__text">
        <h2 class="article-reasons__title">Опять дедлайн</h2>
        <p class="article-reasons__subtitle">В мире, где столько всего интересного, когда же успевать жить?</p>
    </div>
</article>
<article class="article-opportunities">
    <h2 class="article-opportunities__title">На курсе ты <span class="article-opportunities__title_focus">сможешь</span></h2>
    <div class="tickets">
        <div class="ticket">
            <img class="ticket__image" src="images/One_finger.png" alt="не загрузилась картинка"/>
            <p class="ticket__text">Понять, что нужно делать, а что делать не стоит.</p>
        </div>
        <div class="ticket">
            <img class="ticket__image" src="images/Two_fingers.png" alt="не загрузилась картинка"/>
            <p class="ticket__text">Перестать себя искусственно ограничивать.</p>
        </div>
        <div class="ticket">
            <img class="ticket__image" src="images/Three_fingers.png" alt="не загрузилась картинка"/>
            <p class="ticket__text">Определить сильные стороны и начать использовать слабые.</p>
        </div>
        <div class="ticket">
            <img class="ticket__image" src="images/Four_fingers.png" alt="не загрузилась картинка"/>
            <p class="ticket__text">Научиться достигать любой цели в 3 понятных шага.</p>
        </div>
        <div class="ticket">
            <img class="ticket__image" src="images/Five_fingers.png" alt="не загрузилась картинка"/>
            <p class="ticket__text">Сотрудничать эффективно и с правильными людьми.</p>
        </div>
        <div class="ticket">
            <img class="ticket__image" src="images/Three_fingers_alternative.png" alt="не загрузилась картинка"/>
            <p class="ticket__text">Оптимизировать общение с клиентами и проведение совещаний.</p>
        </div>
    </div>
  </article>
  <footer class="footer">
    <div class="footer__content">
        <p class="footer__text">Don`t <span class="footer__text_focus">do</span> it</p>
    </div>
  </footer>
</body>
</html>