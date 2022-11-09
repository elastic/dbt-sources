
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_fuzzy_rule_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_index_c,
        crmfusion_dbr_101_regex_c,
        crmfusion_dbr_101_replace_value_c,
        crmfusion_dbr_101_rule_set_c,
        crmfusion_dbr_101_set_size_c,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
