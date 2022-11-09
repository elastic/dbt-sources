
with source as (

    select * from {{ source('raw_netsuite_sa', 'winlossreason') }}

),

renamed as (

    select
        win_loss_reason_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        date_last_modified,
        is_inactive,
        reason,
        win_loss_reason_extid

    from source

)

select * from renamed
