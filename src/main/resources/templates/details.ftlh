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
    <link rel="stylesheet" href="/css/pure-min.css" />
    <link rel="stylesheet" href="/css/grids-responsive-min.css" />
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

        <div id="main">
        <div class="headers">
            <h1>Detailed Cat Facts!</h1>
            <h2>Facts about cats</h2>
        </div>

        <div class="content">
            <h1 class="content-subhead">Aegan Cats</h1>
            <p>
                The Aegean cat is a naturally occurring breed from the Greek Cyclades islands, 
                known for its strong affinity for water and fishing. It 
                typically has a semi-longhaired coat with a mix of white 
                and other colors, such as black, blue, or red.
            </p>

            <h1 class="content-subhead">Chartreux Cats</h1>
            <p>
                The Chartreux cat is a rare French breed known for its dense, 
                water-resistant blue-gray coat and striking copper or gold eyes. 
                It is often called the "smiling cat of France" due to its slightly upturned mouth.
            </p>

            <div class="photo-box">
                <div class="pure-u-1-3">
                    <img class="pure-img-responsive" src="/images/Aegean.jpg" alt="Aegean">
                </div>
                <div class="pure-u-1-3">
                    <img class="pure-img-responsive" src="/images/Chartreux.jpg" alt="Chartreux">
                </div>
                
              
            </div>

            <h1 class="content-subhead">Munchkin Cats</h1>
            <p>
                The Munchkin cat is known for its short legs, which result 
                from a natural genetic mutation that affects bone growth. 
                Despite their short stature, Munchkins are energetic, playful, 
                and capable of running and jumping like other cats.
            </p>

            <h1 class="content-subhead">Siamese Cats</h1>
            <p>
                Siamese cats are known for their striking blue almond-shaped eyes, 
                sleek bodies, and distinctive color-point pattern, which results 
                from a temperature-sensitive gene that darkens the fur on cooler 
                parts of their body, such as the ears, face, paws, and tail.
            </p>

            <div class="photo-box">
                <div class="pure-u-1-3">
                    <img class="pure-img-responsive" src="/images/Munchkin.png" alt="Munchkin">
                </div>
                <div class="pure-u-1-3">
                    <img class="pure-img-responsive" src="/images/Siamese.jpg" alt="Siamese">
                </div>
              
            </div>

            <h1 class="content-subhead">Tabby Cats</h1>
            <p>
                Tabby cats are technically not a specific breed but a coat pattern found in many cat breeds. 
                Their signature markings include stripes, swirls, or spots, along with an "M" shape on their forehead, 
                which is often linked to various legends and folklore.
            </p>

            <h1 class="content-subhead">Turkish Angora Cats</h1>
            <p>
                The Turkish Angora is one of the oldest naturally occurring cat breeds, 
                with origins dating back to at least the 15th century in Turkey. It is 
                known for its silky, medium-to-long coat, bushy tail, and striking blue, 
                green, or odd-colored eyes.
            </p>
           
            <div class="photo-box">
                <div class="pure-u-1-3">
                    <img class="pure-img-responsive" src="/images/Tabby.jpg" alt="Tabby">
                </div>
                <div class="pure-u-1-3">
                    <img class="pure-img-responsive" src="/images/TurkishAngora.jpg" alt="Turkish">
                </div>
                
              
            </div>
            <h1 class="content-subhead">User submitted cats!</h1>
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
        <div class="last-section"></div>
    </div>
    <div class="footer">
        View the source of this layout to learn more. Made by Brian Granados with https://pure-css.github.io/
      </div>

  </body>
</html>