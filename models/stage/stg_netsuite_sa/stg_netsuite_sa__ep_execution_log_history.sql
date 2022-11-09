
with source as (

    select * from {{ source('raw_netsuite_sa', 'ep_execution_log_history') }}

),

renamed as (

    select
        ep_execution_log_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        details,
        ep_execution_log_extid,
        is_inactive,
        last_modified_date,
        parent_id,
        payment_file_administration_id,
        script_deployment,
        title,
        type_0,
        partition_date

    from source

)

select * from renamed
