
with source as (

    select * from {{ source('raw_salesforce', 'pse_expense_limit_rate_c') }}

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
        pse_amount_c,
        pse_cascading_c,
        pse_currency_effective_date_c,
        pse_description_c,
        pse_end_date_c,
        pse_group_c,
        pse_is_active_c,
        pse_is_rate_c,
        pse_practice_c,
        pse_project_c,
        pse_rate_unit_c,
        pse_region_c,
        pse_resource_role_c,
        pse_start_date_c,
        pse_type_c,
        system_modstamp

    from source

)

select * from renamed
