
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_opportunity_field_map_c_history') }}

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
        jbcxm_defaults_c,
        jbcxm_jbara_field_c,
        jbcxm_map_rules_c,
        jbcxm_opportunity_field_c,
        jbcxm_type_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
