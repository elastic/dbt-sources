
with source as (

    select * from {{ source('raw_netsuite', 'tax_exemption_code_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        tax_exemption_code_extid

    from source

)

select * from renamed
