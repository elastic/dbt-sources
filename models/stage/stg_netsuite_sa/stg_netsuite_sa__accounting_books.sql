
with source as (

    select * from {{ source('raw_netsuite_sa', 'accounting_books') }}

),

renamed as (

    select
        accounting_book_id,
        _fivetran_synced,
        accounting_book_extid,
        accounting_book_name,
        base_book_id,
        date_created,
        date_last_modified,
        effective_period_id,
        form_template_component_id,
        form_template_id,
        is_adjustment_only,
        is_arrangement_level_reclass,
        is_consolidated,
        is_contingent_revenue_handling,
        is_include_child_subsidiaries,
        is_primary,
        is_two_step_revenue_allocation,
        status,
        unbilled_receivable_grouping,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
