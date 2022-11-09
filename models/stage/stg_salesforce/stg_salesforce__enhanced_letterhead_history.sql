
with source as (

    select * from {{ source('raw_salesforce', 'enhanced_letterhead_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        letterhead_footer,
        letterhead_header,
        name,
        system_modstamp

    from source

)

select * from renamed
