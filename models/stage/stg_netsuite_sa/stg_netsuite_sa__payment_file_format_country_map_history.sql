
with source as (

    select * from {{ source('raw_netsuite_sa', 'payment_file_format_country_map_history') }}

),

renamed as (

    select
        country_id,
        payment_file_format_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
