{* DO NOT EDIT THIS FILE! Use an override template instead. *}

{default attribute_base = 'ContentObjectAttribute'}

{symfony_include(
    '@NetgenRichTextDataType/ezrichtext_field_edit.html.twig',
    hash(
        'value', $attribute.content,
        'attr', hash(
            'id', concat('ezcoa-', cond($attribute_base|ne('ContentObjectAttribute'), concat($attribute_base, '-'), ''), $attribute.contentclassattribute_id, '_', $attribute.contentclass_attribute_identifier),
            'class', concat('box ezcc-', $attribute.object.content_class.identifier, ' ezcca-', $attribute.object.content_class.identifier, '_', $attribute.contentclass_attribute_identifier),
            'name', concat($attribute_base, '_ezrichtext_data_text_', $attribute.id),
            'cols', '97',
            'rows', '10'
        )
    )
)}

{/default}
