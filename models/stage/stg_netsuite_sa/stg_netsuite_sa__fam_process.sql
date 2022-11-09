
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_process') }}

),

renamed as (

    select
        fam_process_id,
        _fivetran_deleted,
        _fivetran_synced,
        current_stage,
        current_stage_status_id,
        date_created,
        date_deleted,
        fam_process_extid,
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
