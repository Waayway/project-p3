<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Quiz</title>
    <link rel="stylesheet" href="../../../css/globals.css" />
    <link rel="stylesheet" href="../../../css/pages/quiz/uitslagen.css" />
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
        <?php
        require "../database.php";
        $positive = false;
        $db = new Quiz();
        $score = 0;
        $answers = [
            "Ja" => 1,
            "Nee" => 2
        ];
        foreach ($_POST as $key => $value) {
            $answer = $db->answer($key);
            if ($answer->option_number == $answers[$value]) {
                $score++;
            }
        }
        ?>
        <div class="card">
            <div class="img">
                <img src="../../../img/quiz/uitslagen/<?= $positive ? "negatief" : "positief" ?>.png" alt="">
            </div>
            <div class="uitslag <?= $positive ? "positive" : "negative" ?>">
                UITSLAG
            </div>
            <div class="content">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias aliquam repudiandae incidunt est, commodi quam! Debitis culpa iste deserunt, tenetur ex, quisquam id dolor omnis minima eos minus nulla voluptate placeat veniam totam? Natus, placeat laboriosam optio saepe quis totam? Quasi quibusdam quas odio! Facere animi libero soluta non rem aperiam autem, sequi sed, ducimus deleniti odio at hic pariatur cumque sint ab nobis deserunt veniam et debitis error perferendis. Nostrum, consequuntur cumque quis iusto praesentium non reiciendis earum harum aspernatur, corporis dolorem dignissimos ex repellat nam! Beatae excepturi repellendus iste eius, repudiandae, eaque ducimus, reprehenderit debitis quisquam laborum fugiat!
            </div>
            <div class="again button">
                Opnieuw <img src="../../../img/quiz/uitslagen/again.png" alt="">
            </div>
            <div class="home button">
                Naar Home <img src="../../../img/quiz/uitslagen/backtohome.png" alt="">
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
</body>

</html>