
with source as (

    select * from {{ source('raw_netsuite_sa', 'messagerecipient_history') }}

),

renamed as (

    select
        _fivetran_id,
        message_id,
        _fivetran_synced,
        entity_id,
        _fivetran_id2,
        _fivetran_deleted,
        date_deleted,
        fivetran_index,
        partition_date

    from source

)

select * from renamed
