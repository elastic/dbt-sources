
with source as (

    select * from {{ source('raw_netsuite_sa', 'renew_now_batch_process_history') }}

),

renamed as (

    select
        renew_now_batch_process_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        renew_now_batch_process_extid,
        saved_search_id,
        partition_date

    from source

)

select * from renamed
