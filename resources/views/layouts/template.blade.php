<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Web</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <style>
        html, body {
            background-color: #373b3a;;
            color: #636b6f;
            font-family: 'Raleway', sans-serif;
            font-weight: 100;
            height: 100vh;
            margin: 0;
        }

        .full-height {
            height: 100vh;
        }

        .flex-center {
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .position-ref {
            position: relative;
        }

        .top-right {
            position: absolute;
            right: 10px;
            top: 18px;
        }

        .content {
            text-align: center;
        }

        .title {
            font-size: 84px;
        }

        .links > a {
            color: #636b6f;
            padding: 0 25px;
            font-size: 12px;
            font-weight: 600;
            letter-spacing: .1rem;
            text-decoration: none;
            text-transform: uppercase;
        }

        .m-b-md {
            margin-bottom: 30px;
        }

        h1, h2 {
            color: whitesmoke;
        }

        .article {
            color: #afa39b;
        }

        a {
            color: white;
            text-decoration: none;
        }

        .links {
            display: block;
            margin: 0 0 20px 0;
        }

    </style>
</head>
<body>

    <div class="links">
        <a style="color: white" href="/">Articles</a>
        <a style="color: white" href="/page">First Page</a>
        <a style="color: white" href="https://github.com/kost3/web">GitHub</a>
    </div>

    @if(count($errors) > 0)
        <div class="alert alert-danger">
           <ul>
               @foreach($errors->all() as $error)
                   <li>{{ $error }}</li>
               @endforeach
           </ul>
        </div>
    @endif

    @yield('content')

</body>
</html>
