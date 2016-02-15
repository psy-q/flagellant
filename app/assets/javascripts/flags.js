//=require jquery.colorpicker

function setSortOrder(element, value) {
    $(element).find('input').each(function() {
        if (this.dataset && this.dataset.fieldname == 'sortorder') {
               $(this).val(value);
        }
    });
}

function reorderSVG(element_ids) {
    var flag = $('#flag svg');
    $.each(element_ids, function(index, value) {
            var element = $(value).remove();
            flag.append(element);
    });
}

function reorderLayers() {
    var newOrder = [];
    // start from 1 because the base layer is always 0
    var i = 1; 
    $('#flag_editor .group').get().reverse().map(function(element) {
        setSortOrder(element, i);
        newOrder.push(element.dataset.targetid);
        i++;
    });
    reorderSVG(newOrder);
}

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
                reorderLayers();
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
