
with source as (

    select * from {{ source('raw_salesforce', 'learndot_es_learndot_provider_c') }}

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
        learndot_es_id_c,
        learndot_es_provider_name_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
