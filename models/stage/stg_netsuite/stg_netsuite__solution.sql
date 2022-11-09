
with source as (

    select * from {{ source('raw_netsuite', 'solution') }}

),

renamed as (

    select
        customization_id,
        date_last_modified,
        id_0,
        internal_case_notes,
        is_available_online,
        is_milestone,
        long_description,
        next_due_date,
        next_step,
        process_id,
        process_issue_id,
        related_customization_id,
        solution_extid,
        solution_id,
        vendor_select_id

    from source

)

select * from renamed
