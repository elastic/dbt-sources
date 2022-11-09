
with source as (

    select * from {{ source('raw_netsuite_sa', 'batch_details_payment_schedule_map_history') }}

),

renamed as (

    select
        batch_details_id,
        payment_schedule_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
