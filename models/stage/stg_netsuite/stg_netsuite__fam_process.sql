
with source as (

    select * from {{ source('raw_netsuite', 'fam_process') }}

),

renamed as (

    select
        current_stage,
        current_stage_status_id,
        date_created,
        fam_process_extid,
        fam_process_id,
        is_inactive,
        last_modified_date,
        parameters_0,
        parent_id,
        post_process_data,
        process_id,
        state_values,
        status_id,
        total_stages,
        triggered_by_id

    from source

)

select * from renamed
