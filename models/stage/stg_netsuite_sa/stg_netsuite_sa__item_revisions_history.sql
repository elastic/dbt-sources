
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_revisions_history') }}

),

renamed as (

    select
        item_revision_id,
        _fivetran_deleted,
        _fivetran_synced,
        create_date,
        date_deleted,
        date_last_modified,
        effective_date,
        externalid,
        isinactive,
        item_revision_item,
        item_revision_name,
        memo,
        obsolete_date,
        partition_date

    from source

)

select * from renamed
