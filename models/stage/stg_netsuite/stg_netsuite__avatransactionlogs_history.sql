
with source as (

    select * from {{ source('raw_netsuite', 'avatransactionlogs_history') }}

),

renamed as (

    select
        author_id,
        avatransactionlogs_extid,
        avatransactionlogs_id,
        creation_date_and_time,
        date_created,
        is_inactive,
        last_modified_date,
        note,
        parent_id,
        title,
        transaction_id

    from source

)

select * from renamed
