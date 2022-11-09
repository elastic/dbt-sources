
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_reporting_setting_c') }}

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
        lean_data_category_c,
        lean_data_labels_c,
        lean_data_organization_level_c,
        lean_data_type_c,
        lean_data_user_c,
        lean_data_value_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_setting_key_c,
        lean_data_segment_c,
        lean_data_value_4_c,
        lean_data_value_5_c,
        lean_data_value_2_c,
        lean_data_value_3_c,
        lean_data_labels_2_c

    from source

)

select * from renamed
