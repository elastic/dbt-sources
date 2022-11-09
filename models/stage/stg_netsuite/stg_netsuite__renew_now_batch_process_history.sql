
with source as (

    select * from {{ source('raw_netsuite', 'renew_now_batch_process_history') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        renew_now_batch_process_extid,
        renew_now_batch_process_id,
        saved_search_id

    from source

)

select * from renamed
