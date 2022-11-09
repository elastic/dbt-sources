
with source as (

    select * from {{ source('raw_salesforce', 'pdri_relationship_c_history') }}

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
        name,
        pdri_child_data_set_c,
        pdri_child_selected_c,
        pdri_deployment_order_child_c,
        pdri_deployment_order_parent_c,
        pdri_enforce_strict_query_filter_c,
        pdri_parent_data_set_c,
        pdri_parent_selected_c,
        pdri_stub_enable_c,
        system_modstamp

    from source

)

select * from renamed
