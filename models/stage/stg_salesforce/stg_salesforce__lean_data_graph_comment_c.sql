
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_graph_comment_c') }}

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
        lean_data_author_c,
        lean_data_author_id_c,
        lean_data_comment_c,
        lean_data_created_date_c,
        lean_data_last_saved_by_c,
        lean_data_last_saved_by_id_c,
        lean_data_last_saved_date_c,
        lean_data_node_names_c,
        lean_data_routing_deployment_c,
        lean_data_routing_graph_c,
        lean_data_routing_graph_comment_c,
        lean_data_x_position_c,
        lean_data_y_position_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
