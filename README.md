# Furniture Shop App - Flutter UI

**Source Design:**

- figma: [link](https://www.figma.com/file/Yf8eAPv64MXENhETRNjkt7/furniture-shop?type=design&t=1zvhyejUA9VE0ra9-0)

**Packages using:**

- flutter_svg: [link](https://pub.dev/packages/flutter_svg)
- goole_fonts: [link](https://pub.dev/packages/google_fonts)
- cached_network_image: [link](https://pub.dev/packages/cached_network_image)

**Fonts**

- Poppins [link](https://fonts.google.com/specimen/Poppins)

### Application structure
                    
```
.
├── android                         - It contains files required to run the application on an Android platform.
├── assets                          - It contains all images and fonts of your application.
├── ios                             - It contains files required to run the application on an iOS platform.
├── lib                             - Most important folder in the application, used to write most of the Dart code.
    ├── main.dart                   - Starting point of the application
    ├── core
    │   ├── constants               - It contains static constant class file
    │   ├── theme                   - It contains app theme and decoration classes
    │   └── utils                   - It contains common files and utilities of the application
    ├── presentation                - It contains widgets of the screens
        ├── routes                  - It contains all the routes of the application
        └── widgets                 - It contains all custom widget classes
```

I'm design two screens, one is the home screens with menu, search & category list of products. And another one is the details screen provides you more details about the product like price, long description, at the bottom chat, and add to cart button.

### Furniture App Final UI

#### Home Screen
![image](https://github.com/alghanykennedy/Furniture_Shop_App/assets/82708330/c1ae8fe7-fb55-4c9c-add2-bb1e39e14249)

#### Detail Screen
![image](https://github.com/alghanykennedy/Furniture_Shop_App/assets/82708330/12a64aa4-fcd7-4c56-82fa-bf3ffecd70ce)
