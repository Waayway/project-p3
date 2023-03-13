<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Quiz</title>
  <link rel="stylesheet" href="../../../css/globals.css" />
  <link rel="stylesheet" href="../../../css/pages/quiz/vragen.css" />
</head>

<body>
  <header>
    <nav>
      <div class="hamburger">
        <img src="../../../img/icons/Hamburger Menu.svg" alt="" />
      </div>
      <ul>
        <li><a href="../../index.html">Home</a></li>
        <li>
          <a href="../../adhd/">ADHD/ADD</a>
          <ul>
            <li><a href="../../adhd/kenmerken/index.html">Kenmerken</a></li>
            <li><a href="../../adhd/gevolgen/index.html">Gevolgen</a></li>
            <li><a href="../../adhd/medicatie/index.html">Medicatie</a></li>
            <li><a href="../../add/add.html">Verschillen ADD</a></li>
          </ul>
        </li>
        <li><a href="../quiz/vragen/index.html">Quiz</a></li>
      </ul>
    </nav>
  </header>
  <main>
    <div class="container">
      <div class="quiz">
        <div class="title">
          <img src="../../../img/quiz/quiztext.png" alt="" />
          <h3>Test Jezelf</h3>
        </div>
        <div class="description">
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Inventore
          quo necessitatibus beatae aut consectetur quidem ipsa libero
          similique molestias aliquam provident saepe pariatur odio amet
          laudantium est distinctio culpa quis, nulla possimus animi
          laboriosam! Eius voluptatem possimus dolor autem tempore obcaecati
        </div>
        <form action="../uitslagen/" method="post" class="questions">
          <?php
          require "../database.php";
          $db = new Quiz();
          $questions = $db->get_questions();

          foreach ($questions as $key => $ques) {
            $answers = $db->quiz_options($ques->qid);
          ?>
            <div class="question <?= $key == 0 ? "active" : "" ?>">
              <div class="title">
                <img src="../../../img/quiz/vragenimg.png" alt="" />
                <h3>Vraag <?= $ques->qid ?></h3>
              </div>
              <div class="content">
                <?= $ques->vraag ?>
              </div>
              <hr />
              <div class="answer">
                <?php
                foreach ($answers as $answer) {
                ?>
                  <div class="answer-btn">
                    <input type="radio" name="<?= $answer->qid ?>" value="<?= $answer->option ?>">
                    <?= $answer->option ?>
                  </div>
                <?php
                }
                ?>
              </div>
            </div>
          <?php
          }
          ?>
          <div class="control">
            <div class="prev unfilled">
              <div class="arrow">
                <img src="../../../img/quiz/arrow.svg" alt="" />
              </div>
              Vorige
            </div>
            <div class="next filled">
              Volgende
              <div class="arrow">
                <img src="../../../img/quiz/arrow.svg" alt="" />
              </div>
            </div>
          </div>
          <div class="submit">
            <button type="submit">Versturen</button>
          </div>
        </form>
      </div>
      <div class="img">
        <img src="../../../img/quiz/quizvragen.png" alt="" />
      </div>
    </div>
  </main>
  <footer>
    <hr />
    <div class="icons">
      <img src="../../../img/icons/github.svg" alt="" />
      <img src="../../../img/icons/facebook-f.svg" alt="" />
      <img src="../../../img/icons/twitter.svg" alt="" />
      <img src="../../../img/icons/youtube.svg" alt="" />
    </div>
    <h4>© 2023 - Project P3 Team</h4>
  </footer>
  <script src="../../nav.js"></script>
  <script src="vragen.js"></script>
</body>

</html>