
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_field_mapping_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_field_mapping_definition_c,
        ffrr_fixed_value_c,
        ffrr_invert_boolean_result_c,
        ffrr_source_field_c,
        ffrr_target_field_c,
        ffrr_value_for_true_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
