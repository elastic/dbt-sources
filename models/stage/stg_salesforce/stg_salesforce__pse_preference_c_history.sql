
with source as (

    select * from {{ source('raw_salesforce', 'pse_preference_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        pse_feature_c,
        pse_value_c,
        system_modstamp

    from source

)

select * from renamed
