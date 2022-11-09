
with source as (

    select * from {{ source('raw_netsuite_sa', 'pt_saft_scheduled_task_summar_history') }}

),

renamed as (

    select
        pt_saft_scheduled_task_summ_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        did_the_task_finish,
        is_inactive,
        last_modified_date,
        parent_id,
        pt_saft_scheduled_task_summ_ex,
        pt_saft_scheduled_task_summ_na,
        script_id,
        partition_date

    from source

)

select * from renamed
