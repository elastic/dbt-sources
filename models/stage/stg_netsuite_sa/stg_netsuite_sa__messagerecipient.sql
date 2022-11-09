
with source as (

    select * from {{ source('raw_netsuite_sa', 'messagerecipient') }}

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
        fivetran_index

    from source

)

select * from renamed
