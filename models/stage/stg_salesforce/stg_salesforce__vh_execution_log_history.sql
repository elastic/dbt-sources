
with source as (

    select * from {{ source('raw_salesforce', 'vh_execution_log_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        data_type,
        field,
        is_deleted,
        new_value,
        old_value,
        parent_id

    from source

)

select * from renamed
