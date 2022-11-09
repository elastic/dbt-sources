
with source as (

    select * from {{ source('raw_netsuite_sa', 'ep_queue_settings_dummy_payment_creator_map_history') }}

),

renamed as (

    select
        ep_dummy_list_id,
        ep_queue_settings_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
