//=require jquery.colorpicker

$( document ).ready(function() {
    $('#foop').colorpicker({
        altField: 'g rect.color01',
        altProperties: 'fill',
        buttonImage:    '/assets/images/ui-colorpicker.png',
        colorFormat:    '#HEX',
        parts:          'full',
        alpha:          false,
        showOn:         'both',
        buttonColorize: true,
        showNoneButton: false
    });
});
