<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta
      name="description"
      content="A layout example that shows off 6 beautiful cats."
    />
    <title>Photo Gallery &ndash; Layout Examples &ndash; Pure</title>
    <link rel="stylesheet" href="/css/grids-responsive-min.css" />
    <link rel="stylesheet" href="/css/pure-min.css" />
    <link rel="stylesheet" href="/css/styles.css" />
    
  </head>
  <body>

    

    <div>
      <div class="header">
        <div class="pure-menu pure-menu-horizontal">
          <a class="pure-menu-heading" href="index.ftlh">Cats!</a>

          <ul class="pure-menu-list">
            <li class="pure-menu-item pure-menu-selected">
              <a href="index.ftlh" class="pure-menu-link">Home</a>
            </li>
            <li class="pure-menu-item">
              <a href="details.ftlh" class="pure-menu-link">Details</a>
            </li>
            <li class="pure-menu-item">
              <a href="about.ftlh" class="pure-menu-link">About</a>
            </li>
          </ul>
        </div>
      </div>

    <div class="pure-u-1 form-box">
          <div class="l-box">
            <h1>Thank you for visiting my webpage!</h1>

            <div class="photo-box pure-u-1 pure-u-md-1-2 pure-u-lg-1-3" style="text-align: center;">
                <a
                  href="/images/hug.gif"
                >
                  <img
                  src="/images/hug.gif"
                    alt="hug"
                  />
                </a>
              </div>  
              <h1 class="content-subhead">A list of every submitted cat!</h1>
              <div class="content">
              <#list catList as cat>
              <h2 class="content-subhead">Cat Name: ${cat.catName}</h2>
              <p>
                  Cat Description: ${cat.desc}
              </p>
              <p>
                  Cat Breed: ${cat.breed}
              </p>
              <p>
                  Cat Age: ${cat.age}
              </p>
              </div>
              </#list>
              <div class="last-section"></div>
        <div class="footer">
            View the source of this layout to learn more. Made by Brian Granados with https://pure-css.github.io/
          </div>

  </body>
</html>