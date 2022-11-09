
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_template_mapping_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_criteria_field_c,
        ffrr_criteria_value_c,
        ffrr_level_c,
        ffrr_object_name_c,
        ffrr_template_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
