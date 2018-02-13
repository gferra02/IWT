# Internet and Web Technologies - Exercises - Day 03

## Part I
### Ex 1
Consider the content models `(zero, one)*` and `(zero | one)*`. Give an example of a sequence of elements allowed by the one model but not by the other.

#### Content model 1 `(zero, one)*` - Sequences allowed:

* EMPTY
* zero, one
* zero, one, zero, one ...

#### Content model 2 `(zero | one)*` - Sequences allowed:

* EMPTY
* zero
* one,
* zero, zero ...
* zero, one ...
* one, zero ...
* one, one ...

Example of what is allowed by `(zero | one)*` and not by `(zero, one)*`:

* zero
* zero, zero
* one, zero
* ...

### Ex 2
Consider the elements `day`, `month` and `year`. Produce a content model which allows for each of the sequences
```
year
month year
day month year
```
but no others.

#### Content model:

`((day?, month)?, year)`

**Note:** the use of `?` for 'allow at most one'.

## Part II

### Ex 1

Write an XML DTD which will define the following structure for documents of type `exam`. An `exam` has a course `code`, a `title` and a `date`, which comprises only the `month` and `year`. These are followed by a list of `questions`. Exams consist of either 5 or 6 `questions`. Each question has one or more `part`s. Parts of questions can themselves comprise `part`s along with text. 

Give an instance of an exam document which is valid with respect to your DTD and two instances which are invalid, explaining why they are invalid. Check your answers using an on-line XML validator.

### Ex 2

Write an XML DTD for representing information about students on an MSc programme. All information should be represented using elements rather than attributes. The root element of the document is `programme`. A `programme` has a `degree` and a `year`. These elements are followed by the `results` for the programme. The `results` are partitioned into `distinction`, `merit`, `pass` and `fail`. Within each is a sequence of `name` elements, each containing the name of a person having achieved the corresponding `result` for the `programme`.

*programme.dtd*

```
<!DOCTYPE programme [
<!ELEMENT programme     (degree, year, results)>
<!ELEMENT degree        (#PCDATA)>
<!ELEMENT year          (#PCDATA)>
<!ELEMENT results       (distinction*, merit*, pass*, fail*)>
<!ELEMENT distinction   (name*)>
<!ELEMENT merit         (name*)>
<!ELEMENT pass          (name*)>
<!ELEMENT fail          (name*)>
<!ELEMENT name          (#PCDATA)*>
]>
```

```
<?xml version="1.0" encoding="UTF-8" ?>

<!DOCTYPE programme SYSTEM "programme.dtd">

<programme>
    <degree>MSc</degree>
    <year>2015/16</year>
    <results>
        <distinction>
            <name>Jemima Puddle-Duck</name>
            <name>Peter Rabbit</name>
        </distinction>
        <merit>
            <name>Tom Kitten</name>
        </merit>
        <pass>
        </pass>
        <fail>
            <name>Samuel Whiskers</name>
        </fail>
    </results>
</programme>
```

### Ex 3

Consider a relational database containing a relation `teaches` with attributes `course` and `lecturer`, representing the relationship between courses taught on an MSc programme and the lecturers who teach them. Give an XML DTD for representing this information.

```
<!ELEMENT teaches (#PCDATA)>
<!ATTLIST teaches
    course
    lecturer>
```

*msc.dtd*

```
<!DOCTYPE msc [
<!ELEMENT msc       (teaches)*>
<!ELEMENT teaches   (course, lecturer)*>
<!ELEMENT course    (#PCDATA)*>
<!ELEMENT lecturer  (#PCDATA)*>
]>
```

```
<?xml version="1.0" encoding="UTF-8" ?>

<!DOCTYPE teaches SYSTEM "msc.dtd">

<MSc>
    <teaches>
        <course>Fundamentals of Computing</course>
        <lecturer>Michael</lecturer>
    </teaches>
    <teaches>
        <course>Programming in Java</course>
        <lecturer>Sergio</lecturer>
    </teaches>
    <teaches>
        <course>Computer Systems</course>
        <lecturer>Szabolcs</lecturer>
    </teaches>
</MSc>
```
