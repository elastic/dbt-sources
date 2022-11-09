
with source as (

    select * from {{ source('raw_netsuite_sa', 'vat_online_submitted_periods_submitted_period_map') }}

),

renamed as (

    select
        tax_period_id,
        vat_online_submitted_period_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
