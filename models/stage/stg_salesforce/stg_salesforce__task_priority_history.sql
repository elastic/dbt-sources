
with source as (

    select * from {{ source('raw_salesforce', 'task_priority_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        api_name,
        created_by_id,
        created_date,
        is_default,
        is_high_priority,
        last_modified_by_id,
        last_modified_date,
        master_label,
        sort_order,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
