
with source as (

    select * from {{ source('raw_netsuite', 'batch_details_history') }}

),

renamed as (

    select
        bank_account_id,
        batch_details_extid,
        batch_details_id,
        batch_details_name,
        date_created,
        email_recipient_id,
        inactive,
        is_inactive,
        is_main,
        last_modified_date,
        parent_id,
        saved_search_id

    from source

)

select * from renamed
