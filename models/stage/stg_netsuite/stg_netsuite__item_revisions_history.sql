
with source as (

    select * from {{ source('raw_netsuite', 'item_revisions_history') }}

),

renamed as (

    select
        create_date,
        date_last_modified,
        effective_date,
        externalid,
        isinactive,
        item_revision_id,
        item_revision_item,
        item_revision_name,
        memo,
        obsolete_date

    from source

)

select * from renamed
