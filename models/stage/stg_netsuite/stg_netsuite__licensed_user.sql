
with source as (

    select * from {{ source('raw_netsuite', 'licensed_user') }}

),

renamed as (

    select
        date_created,
        end_date,
        is_inactive,
        last_modified_date,
        license_manager_id,
        license_type_id,
        licensed_user_extid,
        licensed_user_id,
        parent_id,
        user_id

    from source

)

select * from renamed
