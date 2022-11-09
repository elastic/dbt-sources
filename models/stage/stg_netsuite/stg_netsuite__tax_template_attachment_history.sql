
with source as (

    select * from {{ source('raw_netsuite', 'tax_template_attachment_history') }}

),

renamed as (

    select
        attachment,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        tax_template_attachment_extid,
        tax_template_attachment_id,
        tax_template_attachment_name,
        tax_template_id

    from source

)

select * from renamed
