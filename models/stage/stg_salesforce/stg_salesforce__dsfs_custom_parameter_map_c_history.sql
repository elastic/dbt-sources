
with source as (

    select * from {{ source('raw_salesforce', 'dsfs_custom_parameter_map_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dsfs_envelope_configuration_c,
        dsfs_name_c,
        dsfs_order_c,
        dsfs_sub_value_c,
        dsfs_type_c,
        dsfs_value_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
