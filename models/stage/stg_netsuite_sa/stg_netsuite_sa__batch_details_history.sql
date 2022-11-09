
with source as (

    select * from {{ source('raw_netsuite_sa', 'batch_details_history') }}

),

renamed as (

    select
        batch_details_id,
        _fivetran_deleted,
        _fivetran_synced,
        bank_account_id,
        batch_details_extid,
        batch_details_name,
        date_created,
        date_deleted,
        email_recipient_id,
        inactive,
        is_inactive,
        is_main,
        last_modified_date,
        parent_id,
        saved_search_id,
        partition_date

    from source

)

select * from renamed
