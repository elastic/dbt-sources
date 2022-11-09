
with source as (

    select * from {{ source('raw_netsuite', 'quotedetails') }}

),

renamed as (

    select
        courselocation,
        date_created,
        is_inactive,
        itemid_id,
        item_name,
        last_modified_date,
        parent_id,
        participants_count,
        participant_list,
        quotedetails_extid,
        quotedetails_id,
        quotedetails_name,
        quotesid,
        rate,
        summary_0

    from source

)

select * from renamed
