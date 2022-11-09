
with source as (

    select * from {{ source('raw_netsuite', 'avaitemmapping') }}

),

renamed as (

    select
        avaitemmapping_extid,
        avaitemmapping_id,
        date_created,
        is_inactive,
        item_id,
        last_modified_date,
        parent_id,
        tax_code_mapping,
        user_defined_1,
        user_defined_2

    from source

)

select * from renamed
