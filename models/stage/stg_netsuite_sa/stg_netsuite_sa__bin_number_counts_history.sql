
with source as (

    select * from {{ source('raw_netsuite_sa', 'bin_number_counts_history') }}

),

renamed as (

    select
        bin_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        available_count,
        bin_number,
        date_deleted,
        item_id,
        location_id,
        on_hand_count,
        partition_date

    from source

)

select * from renamed
