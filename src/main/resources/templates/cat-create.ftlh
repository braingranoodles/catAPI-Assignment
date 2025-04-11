<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
            <link rel="stylesheet" href="/css/pure-min.css" />
            <link rel="stylesheet" href="/css/grids-responsive-min.css" />
            <link rel="stylesheet" href="/css/styles.css" />
    <title>Cat List</title>

    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>

<body style="background-color: #ffff;">


    <div>
        <div class="header" >
          <div class="pure-menu pure-menu-horizontal">
            <a class="pure-menu-heading" href="index">Cats!</a>
  
            <ul class="pure-menu-list">
              <li class="pure-menu-item pure-menu-selected">
                <a href="index" class="pure-menu-link">Home</a>
              </li>
              <li class="pure-menu-item">
                <a href="details" class="pure-menu-link">Details</a>
              </li>
              <li class="pure-menu-item">
                <a href="all" class="pure-menu-link">About</a>
              </li>
              <li class="pure-menu-item">
                <a href="createForm" class="pure-menu-link">Create Cat</a>
              </li>

              
            </ul>
          </div>
        </div>

<div class="container" style="margin-top: 15px;" >
    <h1>${title}</h1>
    <form id="new-cat" action="/cats/new" method="post">
        <input type="text" id="catName" name="catName" placeholder="Name"/>
        <input type="text" id="desc" name="desc" placeholder="Description"/>
        <input type="text" id="breed" name="breed" placeholder="Breed"/>
        <input type="number" id="age" name="age" step="0.01" placeholder="Age"/>
        <button type="submit" class="btn btn-primary">Save</button>
       <a href="/cats/all" class="btn btn-outline-danger" >Cancel</a>
    </form>
    <div class="pure-u-1">
        <div class="l-box">
          

          
        </div>
      </div>
    </div>

    <div class="footer">
      View the source of this layout to learn more. Made by Brian Granados with https://pure-css.github.io/
    </div>
</div>
</body>
</html>