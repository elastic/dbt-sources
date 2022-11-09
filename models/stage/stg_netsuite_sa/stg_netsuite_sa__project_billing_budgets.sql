
with source as (

    select * from {{ source('raw_netsuite_sa', 'project_billing_budgets') }}

),

renamed as (

    select
        fivetran_index,
        project_id,
        _fivetran_deleted,
        _fivetran_synced,
        amount,
        date_deleted,
        is_calculated,
        month_end,
        month_start,
        project_cost_category_id

    from source

)

select * from renamed
