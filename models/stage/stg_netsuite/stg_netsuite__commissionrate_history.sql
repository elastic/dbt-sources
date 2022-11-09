
with source as (

    select * from {{ source('raw_netsuite', 'commissionrate_history') }}

),

renamed as (

    select
        commisssion_schedule_id,
        rate

    from source

)

select * from renamed
