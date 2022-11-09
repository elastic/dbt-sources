
with source as (

    select * from {{ source('raw_salesforce', 'pse_task_based_resourcing_c') }}

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
        name,
        pse_held_resource_request_groupings_c,
        pse_resource_request_columns_c,
        pse_resource_request_editable_columns_c,
        pse_resource_request_groupings_c,
        pse_show_estimated_amount_column_c,
        pse_show_estimated_cost_column_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
