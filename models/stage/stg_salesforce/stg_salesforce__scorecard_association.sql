
with source as (

    select * from {{ source('raw_salesforce', 'scorecard_association') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        scorecard_id,
        system_modstamp,
        target_entity_id

    from source

)

select * from renamed
