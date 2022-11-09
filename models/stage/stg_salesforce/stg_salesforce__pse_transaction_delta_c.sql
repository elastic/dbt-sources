
with source as (

    select * from {{ source('raw_salesforce', 'pse_transaction_delta_c') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_is_time_c,
        pse_is_update_c,
        pse_new_amount_c,
        pse_new_category_c,
        pse_new_currency_c,
        pse_new_effective_date_c,
        pse_new_group_c,
        pse_new_hours_c,
        pse_new_practice_c,
        pse_new_project_c,
        pse_new_region_c,
        pse_new_related_record_deleted_c,
        pse_new_resource_c,
        pse_old_amount_c,
        pse_old_category_c,
        pse_old_currency_c,
        pse_old_effective_date_c,
        pse_old_group_c,
        pse_old_hours_c,
        pse_old_practice_c,
        pse_old_project_c,
        pse_old_region_c,
        pse_old_related_record_deleted_c,
        pse_old_resource_c,
        system_modstamp

    from source

)

select * from renamed
