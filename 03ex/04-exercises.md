# Internet and Web Technologies - Exercises - Day 03

## Ex 1
Consider the content models `(zero, one)*` and `(zero | one)*`. Give an example of a sequence of elements allowed by the one model but not by the other.

### Content model 1 `(zero, one)*` - Sequences allowed:

* EMPTY
* zero, one
* zero, one, zero, one ...

### Content model 2 `(zero | one)*` - Sequences allowed:

* EMPTY
* zero
* zero, zero ...
* one
* one, one ...

## Ex 2
Consider the elements `day`, `month` and `year`. Produce a content model which allows for each of the sequences
```
year
month year
day month year
```
but no others.

### Content model:

`(day*, month*, year)`