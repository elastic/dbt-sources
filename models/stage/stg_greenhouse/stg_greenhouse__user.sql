
with source as (

    select * from {{ source('raw_greenhouse', 'user') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_at,
        disabled,
        employee_id,
        first_name,
        last_name,
        site_admin,
        updated_at

    from source

)

select * from renamed
