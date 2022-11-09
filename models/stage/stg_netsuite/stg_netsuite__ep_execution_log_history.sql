
with source as (

    select * from {{ source('raw_netsuite', 'ep_execution_log_history') }}

),

renamed as (

    select
        date_created,
        details,
        ep_execution_log_extid,
        ep_execution_log_id,
        is_inactive,
        last_modified_date,
        parent_id,
        payment_file_administration_id,
        script_deployment,
        title,
        type_0

    from source

)

select * from renamed
