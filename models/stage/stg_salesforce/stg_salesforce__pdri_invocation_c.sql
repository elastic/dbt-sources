
with source as (

    select * from {{ source('raw_salesforce', 'pdri_invocation_c') }}

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
        owner_id,
        pdri_data_set_c,
        pdri_data_set_element_c,
        pdri_deployment_plan_c,
        pdri_invocation_order_c,
        pdri_invocation_scope_c,
        pdri_invocation_target_c,
        pdri_invocation_template_c,
        system_modstamp

    from source

)

select * from renamed
