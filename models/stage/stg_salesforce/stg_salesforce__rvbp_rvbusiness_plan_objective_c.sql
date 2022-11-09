
with source as (

    select * from {{ source('raw_salesforce', 'rvbp_rvbusiness_plan_objective_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        rvbp_assigned_to_c,
        rvbp_completed_c,
        rvbp_date_assigned_c,
        rvbp_date_due_c,
        rvbp_description_c,
        rvbp_outcome_c,
        rvbp_rvbusiness_plan_c,
        system_modstamp

    from source

)

select * from renamed
