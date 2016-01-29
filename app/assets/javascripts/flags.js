//=require jquery.colorpicker

$( document ).ready(function() {

    $('#flag_editor .layer_settings .sortable').sortable({
        axis: 'y'
    });

    $('input.colorpicker').each(
        function() {
            var altField = this.dataset.altfield;
            var altProperties = this.dataset.altproperties;
            if (!altProperties) {
                altProperties = 'fill';
            }
            $(this).colorpicker({
                altField:      altField,
                altProperties: altProperties,
                buttonImage:    '/assets/images/ui-colorpicker.png',
                colorFormat:    '#HEX',
                parts:          'full',
                alpha:          false,
                showOn:         'both',
                buttonColorize: true,
                showNoneButton: true
            });
        }
    );
});
