# Responsive Number Counter (Template Component Plug-In)

This template component shows one (or multiple) animated counters that count up from zero to the final number.  
The animation will start only when the element is visible on the screen.  

![demo](https://github.com/therwix/tc_responsive_number_counter/assets/61868531/e2b42f79-da01-4ca3-83c2-0a5761ab4099)

## Installation
Import the file located at plug-in/template_component_plugin_apex_therwix_responsive_number_counting.sql  

## Example SQL Query
```sql
Select 1 as sort,
       50 as "Value",
       'Happy Customers' as "Text",
       'fa-user' as "Icon"
  from dual    
union
Select 2 as sort,
       10000 as "Value",
       'Lines of code' as "Text",
       'fa-code' as "Icon"
  from dual
union       
Select 3 as sort,
       20 as "Value",
       'Projects' as "Text",
       'fa-lock' as "Icon"
  from dual    
union
Select 4 as sort,
       50 as "Value",
       'Developers' as "Text",
       'fa-briefcase' as "Icon"
  from dual
 order by 1;
```

## Attributes
* `ICON` is where we'll define an icon for the counter
    
* `TEXT` shows the title for the counter
    
* `VALUE` displays the end number for the counter

* `DURATION` change how fast the animation should be (default 5000)

* `EASING` for ease out the number animation will start fast and will slow down towards the end (default linear)

## Demo
You can finde a demo application [here](https://apex.oracle.com/pls/apex/r/herwix/template-component/home).

## Questions
Feel free to contact me: [timo.herwix@mt-ag.com](mailto:timo.herwix@mt-ag.com)
