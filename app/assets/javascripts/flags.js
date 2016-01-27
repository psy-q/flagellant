//=require jquery.colorpicker

$( document ).ready(function() {
    $('input.colorpicker').each(
        function() {
        // Why can't I get at the data.altfield attributes that I'm interested in?
        console.log(this.attributes);
        }
    );
    $('input.colorpicker').colorpicker({
        //altField:      data.altfield,
        //altProperties: data.altproperties,
        buttonImage:    '/assets/images/ui-colorpicker.png',
        colorFormat:    '#HEX',
        parts:          'full',
        alpha:          false,
        showOn:         'both',
        buttonColorize: true,
        showNoneButton: true
    });
});
