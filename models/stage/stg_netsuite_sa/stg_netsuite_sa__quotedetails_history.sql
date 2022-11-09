
with source as (

    select * from {{ source('raw_netsuite_sa', 'quotedetails_history') }}

),

renamed as (

    select
        quotedetails_id,
        _fivetran_deleted,
        _fivetran_synced,
        courselocation,
        date_created,
        date_deleted,
        is_inactive,
        item_name,
        itemid_id,
        last_modified_date,
        parent_id,
        participant_list,
        participants_count,
        quotedetails_extid,
        quotedetails_name,
        quotesid,
        rate,
        summary_0,
        partition_date

    from source

)

select * from renamed
