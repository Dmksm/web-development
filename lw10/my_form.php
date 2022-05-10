<article id="outside" class="open">
    <article id="form" class="form">
        <div class="form__images">
            <img class="form__image" src="images/Welcome.png" alt="картинка не загрузилась">
            <img id="vector" class="form__close" src="images/Vector.png" alt="картинка не загрузилась">
        </div>
        <h2 class="form__title">Записаться на курс</h2>
        <form class="form__user-form" method="post">
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
</article>