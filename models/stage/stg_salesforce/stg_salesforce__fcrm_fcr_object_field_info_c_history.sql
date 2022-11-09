
with source as (

    select * from {{ source('raw_salesforce', 'fcrm_fcr_object_field_info_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fcrm_field_data_1_c,
        fcrm_field_data_2_c,
        fcrm_field_data_3_c,
        fcrm_field_data_4_c,
        fcrm_field_data_5_c,
        fcrm_field_data_6_c,
        fcrm_field_data_7_c,
        fcrm_field_data_8_c,
        fcrm_field_data_9_c,
        fcrm_field_data_c,
        fcrm_version_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
