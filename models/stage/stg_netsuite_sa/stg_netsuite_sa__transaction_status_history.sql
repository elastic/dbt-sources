
with source as (

    select * from {{ source('raw_netsuite_sa', 'transaction_status_history') }}

),

renamed as (

    select
        transaction_status_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        form_key,
        is_inactive,
        last_modified_date,
        parent_id,
        search_key,
        transaction_status_extid,
        transaction_status_name,
        partition_date

    from source

)

select * from renamed
