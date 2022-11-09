
with source as (

    select * from {{ source('raw_netsuite_sa', 'avatransactionlogs_history') }}

),

renamed as (

    select
        avatransactionlogs_id,
        _fivetran_deleted,
        _fivetran_synced,
        author_id,
        avatransactionlogs_extid,
        creation_date_and_time,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        note,
        parent_id,
        title,
        transaction_id,
        partition_date

    from source

)

select * from renamed
