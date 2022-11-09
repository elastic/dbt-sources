
with source as (

    select * from {{ source('raw_netsuite', 'transaction_status') }}

),

renamed as (

    select
        date_created,
        form_key,
        is_inactive,
        last_modified_date,
        parent_id,
        search_key,
        transaction_status_extid,
        transaction_status_id,
        transaction_status_name

    from source

)

select * from renamed
