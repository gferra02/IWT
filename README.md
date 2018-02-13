# IWT
Internet and Web Technologies

Collecting exercises done during the module.

## Lab session 1

1. Create the XML file:
    * Choose a directory in which you will create the XML file, which should have an extension of `.xml`.
    * Use a text editor, such as Textpad, to enter information in XML which conforms to the specification of the application (do not worry about the DTD yet). For the first example, you should represent all the information using elements rather than attributes (for the second, you are free to use attributes too). You should include enough sample data to demonstrate each of different structures which are allowed by the specification. Remember to include the [XML declaration](http://www.dcs.bbk.ac.uk/~ptw/teaching/IWT/html-xml/html-xml.html#(22)) at the beginning of the file.

2. Check that the XML file is well-formed:
    * Open the file you created in (1) using a browser to check that it is well-formed (the browser will give an error if it is not).
    * Modify the file until it is well-formed.

3. Create the DTD:
    * Now modify the XML file created in (1) to include an [internal DTD](http://www.dcs.bbk.ac.uk/~ptw/teaching/IWT/dtds/dtds.html#(12)) for documents of the type you have designed, trying to ensure that the XML representation you created is valid with respect to this DTD.

4. Validate the XML file:
    * Go to the page for the [W3C Markup validation Service](http://validator.w3.org/). You can upload your file to the service for validation. The results of the validation will be presented on a separate page. (Don't worry if you receive a warning about a missing `charset` attribute.)
    * Modify your XML file until it is valid.

5. Invalidate the XML file:
    * If you produced a valid XML document straight away or only had to correct a couple of mistakes, now modify your file in ways that you believe make it invalid and check that you understand the error messages returned by the validation service.

## Lab session 2

1. Write a stylesheet to extract the value of the `name` element which is a child of the `proceedings` element in the XML document. The output should be in HTML with the value of the `name` element being the contents of an `h1` heading.

2. Modify the stylesheet in (1) to extract, _in addition_, the _titles_ of papers presented at the symposium. Each paper title should be inserted inside double quote marks and should constitute a separate paragraph in the HTML, after the `h1` heading.

3. Write a stylesheet to extract the _authors_, _titles_ and _page numbers_ of papers presented at the symposium. The output should be in HTML, each paper should constitute a separate paragraph, with the author names listed on one line f ollowed by commas, followed on the next line by the title emphasized and inside double quote marks, followed by a comma and then the characters "pp." (excluding the quotes) and the page numbers followed by a full-stop.

4. Now modify the stylesheet in (3) so that it produces a list of all the authors' names before the list of papers (where the authors' names also appear). This might be the first step in producing a stylesheet where the list of authors provides a hyperlinked index to authors' papers. Each author's name should be on a separate line. Do not worry about trying to
remove duplicate names.