
with source as (

    select * from {{ source('raw_netsuite_sa', 'bin_number_history') }}

),

renamed as (

    select
        bin_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        bin_number,
        bin_number_extid,
        date_deleted,
        isinactive,
        ispreferred,
        item_id,
        location_id,
        memo,
        on_hand_count,
        partition_date

    from source

)

select * from renamed
