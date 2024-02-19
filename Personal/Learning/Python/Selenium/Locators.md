Locators type[^1]
***
#selenium #locators #locator

#### Locator Types

 - **ID** Attribute
 >[!important] Safe Choice
 Refers to a unique attribute in the html tag
```html
	<div id="cookies">
	</div>	 
```

 - **Class name** 
 >[!danger] NOT UNIQUE
 More common than ID
```html
	<div class="cookies center">
	</div>	 
```
 
 - **html TAG name** 
 Each html tag has a tag name, but less likely to be unique compared to class name.
```html
	<tw-component class="...>
```
 
 - **CSS Selector**
 Hierarchical chain used to locate an element using CSS.
 The chain can be obtained using the browser tool
```css
	div.cookies.center	 
```

- **X-Path**
 Same hierarchical approach, but using XML annotation
```xml
	//*[@id="cookies"]
```



***
[[]] | [[]]
#### Tags
***
[^1]: [Locators type](https://projects.coursera.org/run/FGP2S6SGBS9L18Y2JBA4)