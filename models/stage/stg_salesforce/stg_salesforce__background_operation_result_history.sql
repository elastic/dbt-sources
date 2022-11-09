
with source as (

    select * from {{ source('raw_salesforce', 'background_operation_result_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        data,
        id,
        message,
        message_type,
        parent_id,
        _fivetran_deleted

    from source

)

select * from renamed
