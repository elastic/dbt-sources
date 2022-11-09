
with source as (

    select * from {{ source('raw_greenhouse', 'office_history') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        external_id,
        location_name,
        parent_id,
        primary_contact_user_id,
        name,
        partition_date

    from source

)

select * from renamed
