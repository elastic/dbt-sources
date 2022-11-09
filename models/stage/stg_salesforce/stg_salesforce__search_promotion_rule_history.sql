
with source as (

    select * from {{ source('raw_salesforce', 'search_promotion_rule_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        promoted_entity_id,
        query,
        system_modstamp

    from source

)

select * from renamed
