
with source as (

    select * from {{ source('raw_netsuite_sa', 'percent_complete_overrides') }}

),

renamed as (

    select
        accounting_period_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        comments,
        date_deleted,
        percent_complete

    from source

)

select * from renamed
