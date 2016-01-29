//=require jquery.colorpicker

$( document ).ready(function() {

    $('#flag_editor')
        .accordion({
            header: '> div > h3'
        })
        .sortable({
            items: '> .sortable',
            axis: 'y',
            handle: 'h3',
            placeholder: 'ui-state-highlight',
            stop: function() {
                $( this ).accordion("refresh");
            }
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
