<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <title>Selamat Datang | InstaApp</title>
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-light bg-warning sticky-md-top">
    <div class="container">
        <a class="navbar-brand fs-3" href="#">InstaApp</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav text-right">
            <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="login.php">Masuk</a>
            </li>
            <li class="nav-item">
            <a class="nav-link active" href="#">Daftar</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="#">Tentang</a>
            </li>
            <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Bantuan
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <li><a class="dropdown-item" href="#">Email</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
            </li>
        </ul>
        </div>
    </div>
    </nav>
    <div class="w-75 mx-auto my-auto">
    <h1 class="text-center py-3">Selamat Datang !</h1>
    <div class="w-50 h-50 mx-auto rounded-3 border border-primary">
        <h2 class="text-center py-2">Daftar Akun</h2>
        <div class="mb-3 row mx-auto w-75">
            <label for="staticEmail" class="col-sm-5 col-form-label">Username</label>
            <div class="col-sm-7">
            <input type="text" class="form-control" id="Username">
            </div>
        </div>
        <div class="mb-3 row mx-auto w-75">
            <label for="staticEmail" class="col-sm-5 col-form-label">Email</label>
            <div class="col-sm-7">
            <input type="text" class="form-control" id="Email">
            </div>
        </div>
        <div class="mb-3 row mx-auto w-75">
            <label for="staticEmail" class="col-sm-5 col-form-label">Nomor Handphone</label>
            <div class="col-sm-7">
            <input type="number" class="form-control" id="Username">
            </div>
        </div>
        <div class="mb-3 row mx-auto w-75">
            <label for="staticEmail" class="col-sm-5 col-form-label">Jenis Kelamin</label>
            <div class="col-sm-7">
            <select class="form-select" aria-label="Default select example">
                <option value="1">Laki-laki</option>
                <option value="2">Perempuan</option>
            </select>
            </div>
        </div>
        <div class="mb-3 row mx-auto w-75">
            <label for="staticEmail" class="col-sm-5 col-form-label">Tanggal Lahir</label>
            <div class="col-sm-7">
            <input type="date" class="form-control" id="ttl">
            </div>
        </div>
        <div class="mb-3 row mx-auto w-75">
            <label for="staticEmail" class="col-sm-5 col-form-label">Foto Profil</label>
            <div class="col-sm-7">
            <input class="form-control" type="file" id="formFile">
            </div>
        </div>
        
        <div class="mb-3 row mx-auto w-75">
            <label for="inputPassword" class="col-sm-5 col-form-label">Password</label>
            <div class="col-sm-7">
            <input type="password" class="form-control" id="Password">
            </div>
        </div>
        <div class="mb-3 row mx-auto w-75">
            <label for="inputPassword" class="col-sm-5 col-form-label">Ulangi Password</label>
            <div class="col-sm-7">
            <input type="password" class="form-control" id="Password">
            </div>
        </div>
        <div class="mb-3 row mx-auto w-75">
            <label for="exampleFormControlTextarea1" class="form-label">Deskripsi diri</label>
            <div class="col-sm">
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
        </div>
        <div class="mb-3 row mx-auto w-75">
            <div class="col-sm-1">
            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
            </div>
            <label for="inputPassword" class="col-sm-11 col-form-label">Saya setuju dengan syarat dan ketentuan yang berlaku !</label>
        </div>
        <div class="d-grid gap-2">
            <button class="btn btn-primary w-50 mx-auto mb-3" type="button">Daftar</button>
        </div>

    </div>
    </div>
    <div>
    <span>Kebijakan Privasi</span>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    -->
  </body>
</html>