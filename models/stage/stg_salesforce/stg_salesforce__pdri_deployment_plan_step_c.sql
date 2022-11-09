
with source as (

    select * from {{ source('raw_salesforce', 'pdri_deployment_plan_step_c') }}

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
        pdri_deployment_plan_c,
        pdri_description_c,
        pdri_number_of_deployment_plan_items_c,
        pdri_order_number_c,
        pdri_stop_after_a_batch_failure_c,
        pdri_stop_after_a_record_failure_c,
        system_modstamp

    from source

)

select * from renamed
