
with source as (

    select * from {{ source('raw_netsuite_sa', 'employee_currency_map') }}

),

renamed as (

    select
        currency_id,
        employee_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
