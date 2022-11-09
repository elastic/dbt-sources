
with source as (

    select * from {{ source('raw_netsuite_sa', 'commissionrate_history') }}

),

renamed as (

    select
        commisssion_schedule_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        rate,
        partition_date

    from source

)

select * from renamed
