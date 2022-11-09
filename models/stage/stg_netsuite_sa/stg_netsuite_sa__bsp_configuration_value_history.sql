
with source as (

    select * from {{ source('raw_netsuite_sa', 'bsp_configuration_value_history') }}

),

renamed as (

    select
        bsp_configuration_value_id,
        _fivetran_deleted,
        _fivetran_synced,
        bsp_configuration_value_extid,
        bsp_configuration_value_name,
        config_value,
        date_created,
        date_deleted,
        format_profile_id,
        is_inactive,
        last_modified_date,
        parent_id,
        parser_plugin_id,
        partition_date

    from source

)

select * from renamed
