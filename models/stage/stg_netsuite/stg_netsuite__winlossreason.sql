
with source as (

    select * from {{ source('raw_netsuite', 'winlossreason') }}

),

renamed as (

    select
        date_last_modified,
        is_inactive,
        reason,
        win_loss_reason_extid,
        win_loss_reason_id

    from source

)

select * from renamed
