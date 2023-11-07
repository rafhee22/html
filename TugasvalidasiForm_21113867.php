<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tugas Validasi Form 21.11.3867</title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>

<body>
    <?php
    /*
        MUHAMMAD ABDUL RAAFI
        21.11.3867
        21-IF-01
    */
    $name = $email = $website = $comment = $gender = "";
    $nameErr = $emailErr = $websiteErr = $commentErr = $genderErr = "";

    function test_input($data)
    {
        $data = trim($data);
        $data = stripcslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        //nama
        if (empty($_POST["name"])) {
            $nameErr = "Name is required";
        } else {
            $name = test_input($_POST["name"]);
            if (!preg_match("/^[a-zA-Z' ]*$/", $name)) {
                $nameErr = "Only letters and white space allowed";
            }
        }
        //email
        if (empty($_POST["email"])) {
            $emailErr = "Email is required";
        } else {
            $email = test_input($_POST["email"]);
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                $emailErr = "Invalid email format";
            }
        }
        //website
        if (empty($_POST["website"])) {
            $websiteErr = "Website is required";
        } else {
            $website = test_input($_POST["website"]);
            if (!preg_match("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i", $website)) {
                $websiteErr = "Invalid URL";
            }
        }
        if (empty($_POST["gender"])) {
            $genderErr = "Gender is required";
        } else {
            $gender = test_input($_POST["gender"]);
        }
        if (empty($_POST["comment"])) {
            $commentErr = "Comment is required";
        } else {
            $comment = test_input($_POST["comment"]);
        }
    }

    ?>
    <h1>PHP Form Validation</h1>
    <p class="error">*Required Field</p>
    <form action="" method="post">
        Name <input type="text" name="name" id="" value="<?= $name; ?>">
        <span class="error">* <?= $nameErr; ?> </span>
        <br><br>
        Email <input type="text" name="email" id="" value=<?= $email; ?>>
        <span class="error">* <?= $emailErr; ?></span>
        <br><br>
        Website <input type="text" name="website" id="" value="<?= $website; ?>">
        <span class="error">* <?= $websiteErr; ?></span>
        <br><br>
        Comment <textarea name="comment" id="" cols="30" rows="10"><?= $comment; ?></textarea><span class="error">*<?= $commentErr; ?></span>
        <br><br>
        Gender
        <input type="radio" name="gender" id="" value="female" <?php if (isset($gender) && $gender == "female") echo "checked"; ?>> Female
        <input type="radio" name="gender" id="" value="male" <?php if (isset($gender) && $gender == "male") echo "checked"; ?>> Male
        <span class="error">*<?= $genderErr; ?></span>
        <br><br>
        <input type="submit" value="submit" name="submit">
    </form>
    <h1>Yout Input</h1>
    <?= $name; ?><br>
    <?= $email; ?><br>
    <?= $website; ?><br>
    <?= $comment; ?><br>
    <?= $gender; ?><br>
</body>

</html>