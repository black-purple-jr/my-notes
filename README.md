# My Notes

## Overview

this a full-stack notes taking web app built with HTML, CSS, JS, PHP. I pushed the first version as a solution that runs entirely in the browser saving notes in the its localStorage object. <a href="https://github.com/black-purple-jr/my-notes-client">Here is the link for its source code</a>. I tried a better approach this time to be able to have multiple users, and I created a login / sign up system and CRUD operations for the notes. The core idea of the app could've be simpler in terms of code, but I wanted to stick to what I already know for the moment, that dosen't mean I'm not open to learn something new to simplify the job, but only to practice what I already know to go another step further.

## Features

* Secure Login / sign up system using Google.
  - using email and password
  - using your Google account
* Mailing services for account activation and password reset
* CRUD operations for notes handling.


## packages

![Static Badge](https://img.shields.io/badge/phpmailer%2Fphpmailer-green?color=green) : PHPMailer is a full-featured email creation and transfer class for PHP.

![Static Badge](https://img.shields.io/badge/Google%2Fapiclient-green?color=blue) : Client library for Google APIs.

![Static Badge](https://img.shields.io/badge/vlucas%2Fphpdotenv-green?color=orange) : Loads environment variables from `.env` to `$_ENV` and `$_SERVER` automagically, and optionally to `getenv()`.

## to test this project on your local machine (git, composer (xampp / wamp) are required)

### 1. open your terminal a choose the directory you will be working in (ex: desktop)

```bash
C:\users\your-username\desktop>
```

### 2. Enter this command

```bash
git clone https://github.com/black-purple-jr/my-notes
```

### 3. Enter the directory

```bash
cd my-notes
```

### 4. Install the necessary packages

```bash
composer install
```