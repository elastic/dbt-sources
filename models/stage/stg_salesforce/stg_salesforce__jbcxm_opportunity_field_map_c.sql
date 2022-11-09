
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_opportunity_field_map_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
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
