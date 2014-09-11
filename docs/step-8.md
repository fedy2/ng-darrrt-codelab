## Step 8: Use a formatter to modify data

In this step, you implement a custom formatter to modify data.

Formatters let you change how your model data is displayed in the view without
changing the model data itself. For example, they're useful for showing
parts of a model's data, or displaying data in a particular format.
Angular has built-in formatters such as Currency and Date.
You can also easily create and use your own formatters,
as this step shows.

_**Keywords**: formatter_

### Create a formatter

&rarr; Create a `formatters` directory under `lib`.

&rarr; In the `lib/formatters` directory, create a new file,
`capitalize_formatter.dart`, and copy the following content to it:

```Dart
library s1_basics.formatters.capitalize_formatter;

import 'package:angular/angular.dart';

@Formatter(name: 'capitalize')
class CapitalizeFormatter {
  call(String name) {
    if (name == null || name.isEmpty) return '';
    return name[0].toUpperCase() + name.substring(1);
  }
}
```

Key information:

* The @Formatter annotation on CapitalizeFormatter tells
  Angular to publish the class as a formatter.
* Each custom formatter in AngularDart requires a class that has
  a `call()` method with at least one argument:
  `call(valueToFormat, optArg1, ..., optArgN)`
* The `call()` method's first argument is the value to format.
* The `call()` method should return the formatted value.

### Register the formatter

&rarr; In `lib/pirate_module.dart`, import the formatter:

```Dart
import 'package:s1_basics/formatters/capitalize_formatter.dart';
```

&rarr; Add the formatter to the module definition:

```Dart
...
type(CapitalizeFormatter);
...
```

### Use the formatter

&rarr; Now use the formatter in `web/index.html`:

```HTML
...
<badge name="{{ctrl.pirateName | capitalize}}"
...
```

Key information:

* This code sets the badge name to formatted (capitalized) value of
  the controller's `pirateName` variable.
* Be sure to use `"{{...}}"`, not just `{{...}}`.
  Quotation marks aren't necessary when you're just referring to a variable,
  but they _are_ necessary if you perform any operations.

<!-- PENDING: check that optional quotation mark feature is intentional and will remain true -->


### Run the app in Dartium

&rarr; Type in a name, using all lowercase letters.

In the badge, the pirate name is capitalized!

### Learn more
 - [Introducing Formatters and Services](https://angulardart.org/tutorial/07-ch05-filter-service.html)
 - [angular.formatter API reference](https://docs.angulardart.org/#angular/angular-formatter)
 

### Problems?
Check your code against the files in [s8_formatter](../samples/s8_formatter).

Don't worry about differences in package names.
Your files should contain the string `s1_basics`
wherever the files in s8_formatter contain `s8_formatter`.


## [Home](../README.md#code-lab-angulardart) | [< Previous](step-7.md#step-7-use-a-service-to-get-data) | [Next >](step-9.md#step-9-run-the-app-as-javascript)
