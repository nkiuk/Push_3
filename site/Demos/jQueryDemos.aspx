<%@ Page Title="jQuery Demo Page" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="jQueryDemos.aspx.cs" Inherits="Demos_jQueryDemos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1 title="First Header">First Header</h1>
    <table id="DemoTable">
        <tr><td>Row 1 Cell 1</td><td>Row 1 Cell 2</td></tr>
        <tr><td>Row 2 Cell 1</td><td>Row 2 Cell 2</td></tr>
        <tr><td>Row 3 Cell 1</td><td>Row 3 Cell 2</td></tr>
        <tr><td>Row 4 Cell 1</td><td>Row 4 Cell 2</td></tr>
        <tr><td>Row 5 Cell 1</td><td>Row 5 Cell 2</td></tr>
    </table>
    <h2> Second <span style="font-style: italic; font-weight: bold">Header</span></h2>
    <input id="Button1" type="button" value="Button" />
    <input id="Text1" type="text" />
    <input id="Checkbox1" type="checkbox" />
    <input id="Checkbox2" type="checkbox" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
    <script type="text/javascript">
        //$(function()
        {
            /*1. jQuery Basic Filter examples*/
            //$('#DemoTable').css('background-color', 'green'); //set background color of table to green
            //$('#DemoTable tr:first').css('background-color', 'red'); // select first item and set its background color
            //$('#DemoTable tr:last').css('background-color', 'blue'); // select secound item

            //$('#DemoTable tr:odd').css('background-color', 'red'); //select odd items can be even also


            //$('#DemoTable tr:eq(0)').css('background-color', 'red');//Change the color in the first row (with an index 0)

            //$('#DemoTable tr:gt(3)').css('background-color', 'red');//changes the last two rows (rows 1/2/3) respectivly

            //$('#DemoTable tr:lt(3)').css('background-color', 'red');//changes the text coloe of the first, two or three rows (rows 1/2/3) respectivly

            //$(':header').css('color', 'green'); // find all headers (from h1 to h6) in the page and set to green

            /* jQuery Common Advance Filter Options  */
            //$('td:contains("Row 3")').css('color', 'green'); // Matches the element by the text it contains

            //$(':header:has("span")').css('color', 'green'); // Matches elements that contain at leaset one of the given elements

            //$('[type]').css('color', 'green'); // Matches an element based on the givent attribut i.e matches button and textbox as both have a type attribute

            // $('[type=text]').css('color', 'green'); // Matches juest the textbox note "text"

            //$(':button, text').css('color', 'green'); // Group selector

            //$(':checkbox').attr('checked', true); //function that sets all checkboxes to true

            /*CSS Methods*/
            //css(name, value)
            //$('h1').css('background-color', 'green');

            //css(name)
            //alert($('h2 span').css('font-style')); // will alert itelic because that is the font-style of the span element in h2

            //css(properties) - Allows you to set multiple properties on matched elements in one fell swoop
            //$('#DemoTable td').css({ 'color': 'red', 'font-family': 'Verdana', 'padding': '10px' });

            //addClass, removeClass, toggleClass - add, remove, classes from elementsrespectivly
            //$('h2').addClass('PleaseWait'); // assign a css class to an element

            //$('h2').removeClass('PleaseWait'); // remove a css class to an element

            //$('h2').toggleClass('PleaseWait') // assigns the class and if its not present yet and removes it otherwise

            /* Handeling Events*/
            //$(function()
            //{
            // $('#DemoTable tr')
            //.bind('mouseover', function() { $(this).css('background-color', 'yellow') })
            // .bind('mouseout', function() { $(this).css('background-color', '') })
            //});

            /*Miscellaneus jQuery Functinality*/
            //1. 'each' method - Goes through each row and reads content
            // $('#DemoTable td').each(function () {
            //alert(this.innerHTML);
            //});

            //2. 'prev' method - selects a matched element's direct sibling and returns the html for the two cells
            //alert($('#DemoTable td:contains("Row 1 Cell 2")').parent()[0].innerHTML);

            /*jQuery Effects*/

            //1. Hide or Show by decreasing the height, width and opacity
            //$('h1').hide(1000);
            //$('h1').show(1000);

            //2. toggle method uses show and hide internally and changes the display of the matched elements. Visible items are hidden and vice verser
            //$('h1').toggle(1000);

            //3. Hide or Show matched elements. slideToggle method slides down hidden elements by adjusting the height from its current size to zero or vice verser
            //$('h1').slideUp(2000);
            //$('h1').slideDown(2000);
            //$('h1').slideToggle(2000);

            //4. makes matched elemets vivble or inverible by changing their opacity to 0 making the item completly transperent 
            //$('h1').fadeOut(1000); //dissolve h1 in 1 sec
            //$('h1').fadeIn(1000); // h1 reappears in 1 sec
            //$('h1').fadeTo(1000, 0.5); // fade to semi transperent

            //5. Animate method allows you to specify a bunch of poperties to animate
            $('h1').animate(
                {
                    opacity: 0.4,
                    marginLeft: '50px',
                    fontSize: '50px'},
                    1500
            );
                


        }
    </script>
</asp:Content>

