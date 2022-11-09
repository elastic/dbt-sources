
with source as (

    select * from {{ source('raw_netsuite_sa', 'revrec_process_execution') }}

),

renamed as (

    select
        revrec_process_execution_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        revrec_process_execution_extid,
        script_deployment,
        script_id,
        task_id

    from source

)

select * from renamed
