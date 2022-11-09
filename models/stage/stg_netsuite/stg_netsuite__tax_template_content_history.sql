
with source as (

    select * from {{ source('raw_netsuite', 'tax_template_content_history') }}

),

renamed as (

    select
        content_0,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        tax_template_content_extid,
        tax_template_content_id,
        tax_template_id

    from source

)

select * from renamed
