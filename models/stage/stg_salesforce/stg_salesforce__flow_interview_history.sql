
with source as (

    select * from {{ source('raw_salesforce', 'flow_interview_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        current_element,
        guid,
        interview_label,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        pause_label,
        system_modstamp,
        was_paused_from_screen

    from source

)

select * from renamed
