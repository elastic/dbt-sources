
with source as (

    select * from {{ source('raw_netsuite', 'sii_list_values_history') }}

),

renamed as (

    select
        code,
        date_created,
        is_inactive,
        last_modified_date,
        list_type_id,
        parent_id,
        sii_list_values_extid,
        sii_list_values_id,
        sii_list_values_name

    from source

)

select * from renamed
