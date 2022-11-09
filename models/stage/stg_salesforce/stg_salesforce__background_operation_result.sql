
with source as (

    select * from {{ source('raw_salesforce', 'background_operation_result') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        data,
        message,
        message_type,
        parent_id,
        _fivetran_deleted

    from source

)

select * from renamed
