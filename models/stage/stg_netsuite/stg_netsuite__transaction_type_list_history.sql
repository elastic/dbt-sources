
with source as (

    select * from {{ source('raw_netsuite', 'transaction_type_list_history') }}

),

renamed as (

    select
        date_created,
        description_id,
        is_inactive,
        last_modified_date,
        parent_id,
        transaction_type_list_extid,
        transaction_type_list_id,
        transaction_type_list_name

    from source

)

select * from renamed
