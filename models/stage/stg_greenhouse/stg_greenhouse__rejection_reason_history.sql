
with source as (

    select * from {{ source('raw_greenhouse', 'rejection_reason_history') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        reason,
        rejection_reason_type_id,
        rejection_reason_type_name,
        partition_date

    from source

)

select * from renamed
