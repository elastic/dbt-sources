
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_l_2_a_router_node_c') }}

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
        lean_data_node_name_c,
        lean_data_unique_node_name_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_node_type_c,
        lean_data_node_routing_info_c,
        lean_data_sobject_type_c

    from source

)

select * from renamed
