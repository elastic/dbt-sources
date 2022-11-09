
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_lead_filter_action_c_history') }}

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
        lean_data_field_name_c,
        lean_data_node_id_c,
        lean_data_value_c,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
