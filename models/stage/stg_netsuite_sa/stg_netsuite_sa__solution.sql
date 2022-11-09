
with source as (

    select * from {{ source('raw_netsuite_sa', 'solution') }}

),

renamed as (

    select
        fivetran_index,
        solution_id,
        _fivetran_deleted,
        _fivetran_synced,
        customization_id,
        date_deleted,
        date_last_modified,
        id_0,
        internal_case_notes,
        is_available_online,
        is_milestone,
        linked_transaction_id,
        long_description,
        next_due_date,
        next_step,
        process_id,
        process_issue_id,
        related_customization_id,
        solution_extid,
        vendor_select_id

    from source

)

select * from renamed
